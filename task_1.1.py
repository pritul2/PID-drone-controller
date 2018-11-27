#!/usr/bin/env python

#The required packages are imported here
import math
from plutodrone.msg import *
from pid_tune.msg import *
from geometry_msgs.msg import PoseArray
from std_msgs.msg import Int32 
from std_msgs.msg import Float64
import rospy
import time


class DroneFly():
	"""docstring for DroneFly"""
	def __init__(self):
		
		rospy.init_node('pluto_fly', disable_signals = True)
		

		self.pluto_cmd = rospy.Publisher('/drone_command', PlutoMsg, queue_size=10)
		self.plot_graph_x = rospy.Publisher('/x_error/data', Float64, queue_size=10)
		self.plot_graph_y = rospy.Publisher('/y_error/data', Float64, queue_size=10)
		self.plot_graph_z = rospy.Publisher('/z_error/data', Float64, queue_size=10)
		self.plot_zero = rospy.Publisher('/zero/data', Int32, queue_size=10)
		
		

		rospy.Subscriber('whycon/poses', PoseArray, self.get_pose)

		# To tune the drone during runtime
		rospy.Subscriber('/pid_tuning_altitude', PidTune, self.set_pid_alt)
		rospy.Subscriber('/pid_tuning_roll', PidTune, self.set_pid_roll)
		rospy.Subscriber('/pid_tuning_pitch', PidTune, self.set_pid_pitch)
		rospy.Subscriber('/pid_tuning_yaw', PidTune, self.set_pid_yaw)
		
		
		
		self.cmd = PlutoMsg()

		# Position to hold.
		self.wp_x = -5.63
		self.wp_y = -5.63
		self.wp_z = 30.0
		
		self.cmd.rcRoll = 1500
		self.cmd.rcPitch = 1500
		self.cmd.rcYaw = 1500
		self.cmd.rcThrottle = 1500
		self.cmd.rcAUX1 = 1500
		self.cmd.rcAUX2 = 1500
		self.cmd.rcAUX3 = 1500
		self.cmd.rcAUX4 = 1000
		self.cmd.plutoIndex = 0

		self.drone_x = 0.0
		self.drone_y = 0.0
		self.drone_z = 0.0

		#PID constants for Roll
		self.kp_roll = 0.0
		self.ki_roll = 0.0
		self.kd_roll = 0.0

		#PID constants for Pitch
		self.kp_pitch = 0.0
		self.ki_pitch = 0.0
		self.kd_pitch = 0.0
		
		#PID constants for Yaw
		self.kp_yaw = 0.0
		self.ki_yaw = 0.0
		self.kd_yaw = 0.0

		#PID constants for Throttle
		self.kp_throt = 0.0
		self.ki_throt = 0.0
		self.kd_throt = 0.0

		# Correction values after PID is computed
		self.correct_roll = 0.0
		self.correct_pitch = 0.0
		self.correct_yaw = 0.0
		self.correct_throt = 0.0

		# Loop time for PID computation. You are free to experiment with this
		self.last_time = 0.0
		self.loop_time = 0.032


		#error of PIDs
		self.roll_error = 0.0
		self.pitch_error=0.0
		self.throt_err=0.0

		#error sum of PIDs
		self.errSum_roll=0.0
		self.lasterr_roll=0.0

		self.errSum_pitch=0.0
		self.lasterr_pitch=0.0

		self.errSum_throt=0.0
		self.lasterr_throt=0.0

		self.roll_error = 0.0
		self.throt_err=0.0

		self.zero = 0

		self.current_time=0

		rospy.sleep(.1)


	def arm(self):
		self.cmd.rcAUX4 = 1500
		self.cmd.rcThrottle = 1000
		self.pluto_cmd.publish(self.cmd)
		rospy.sleep(.1)

	def disarm(self):
		self.cmd.rcAUX4 = 1100
		self.pluto_cmd.publish(self.cmd)
		rospy.sleep(.1)


	def position_hold(self):

		rospy.sleep(2)

		print "disarm"
		self.disarm()
		rospy.sleep(.2)
		print "arm"
		self.arm()
		rospy.sleep(.1)

		while True:
			self.plot_zero.publish(self.zero)
			self.calc_pid()

			# Check your X and Y axis. You MAY have to change the + and the -.
			# We recommend you try one degree of freedom (DOF) at a time. Eg: Roll first then pitch and so on
		 	pitch_value = int(1500 - self.correct_pitch)
			self.cmd.rcPitch = self.limit (pitch_value, 1600, 1400)
															
			roll_value = int(1500 + self.correct_roll)
			self.cmd.rcRoll = self.limit(roll_value, 1600,1400)
															
			throt_value = int(1500 - self.correct_throt)
			self.cmd.rcThrottle = self.limit(throt_value, 1750,1350)
															
			self.pluto_cmd.publish(self.cmd)
	

	def calc_pid(self):
		self.seconds = time.time()
		self.current_time = self.seconds - self.last_time
		if(self.current_time >= self.loop_time):
			self.pid_roll()
			self.pid_pitch()
			self.pid_throt()
			
			self.last_time = self.seconds

	
	def pid_roll(self):
		self.kp_roll
		self.kd_roll
		self.ki_roll
		self.roll_err = self.drone_y-self.wp_y #Final position - current position#
		self.errSum_roll += self.roll_err
		derr = (self.roll_err-self.lasterr_roll)/(self.current_time)#derivative error#
		self.correct_roll = self.kp_roll*self.roll_err + self.ki_roll*self.errSum_roll + self.kd_roll*derr
		self.lasterr_roll = self.roll_err
		self.plot_graph_y.publish(self.roll_err)


	def pid_pitch(self):
		self.kp_pitch
		self.kd_pitch
		self.ki_pitch
		self.pitch_err = self.wp_x-self.drone_x #Final position - current position#
		self.errSum_pitch += self.pitch_err #Integrated error#
		derr = (self.pitch_err-self.lasterr_pitch)/(self.current_time)#derivative error#
		self.correct_pitch = self.kp_pitch*self.pitch_err + self.ki_pitch*self.errSum_pitch + self.kd_pitch*derr
		self.lasterr_pitch = self.pitch_err
		self.plot_graph_x.publish(self.pitch_err)


	def pid_throt(self):
		self.throt_err = self.wp_z-self.drone_z #Final position - current position#
		self.errSum_throt += self.throt_err #Integrated error#
		derr = (self.throt_err-self.lasterr_throt)/(self.current_time)
		self.correct_throt = self.kp_throt*self.throt_err + self.ki_throt*self.errSum_throt + self.kd_throt*derr
		self.lasterr_throt = self.throt_err
		self.plot_graph_z.publish(self.throt_err)


	def limit(self, input_value, max_value, min_value):

		#Use this function to limit the maximum and minimum values you send to your drone

		if input_value > max_value:
			return max_value
		if input_value < min_value:
			return min_value
		else:
			return input_value



	def set_pid_alt(self,pid_val):
		
		#This is the subscriber function to get the Kp, Ki and Kd values set through the GUI for Altitude

		self.kp_throt = pid_val.Kp
		self.ki_throt = pid_val.Ki
		self.kd_throt = pid_val.Kd

	def set_pid_roll(self,pid_val):

		#This is the subscriber function to get the Kp, Ki and Kd values set through the GUI for Roll

		self.kp_roll = pid_val.Kp
		self.ki_roll = pid_val.Ki
		self.kd_roll = pid_val.Kd
		
	def set_pid_pitch(self,pid_val):

		#This is the subscriber function to get the Kp, Ki and Kd values set through the GUI for Pitch

		self.kp_pitch = pid_val.Kp
		self.ki_pitch = pid_val.Ki
		self.kd_pitch = pid_val.Kd
		
	def set_pid_yaw(self,pid_val):
		#This is the subscriber function to get the Kp, Ki and Kd values set through the GUI for Yaw
		self.kp_yaw = pid_val.Kp
		self.ki_yaw = pid_val.Ki
		self.kd_yaw = pid_val.Kd
		
	def get_pose(self,pose):
		#This is the subscriber function to get the whycon poses
		#The x, y and z values are stored within the drone_x, drone_y and the drone_z variables
		self.drone_x = pose.poses[0].position.x
		self.drone_y = pose.poses[0].position.y
		self.drone_z = pose.poses[0].position.z


if __name__ == '__main__':
	while not rospy.is_shutdown():
		temp = DroneFly()
		temp.position_hold()
		rospy.spin()
		


 