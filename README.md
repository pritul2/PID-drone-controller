
# PID drone controller using Python and ROS
 The main task is that we have a drone and we have to uplift the drone and to move the drone at the given positon [ -5.63, -5.63, 30], [5.57, -5.63, 30 ] , [5.55, 5.54, 30 ]  , [-5.6, 5.54, 30 ] in such a way that drone arrives at all position with an error rate of [0.2, 0.2, 1.5] in both the direction and finally comes back to the original position [0,0,30]. For visualization we usethe vrep simulator.

### About VREP simulator:-
The robot simulator V-REP, with integrated development environment, is based on a distributed control architecture: each object/model can be individually controlled via an embedded script, a plugin, a ROS or BlueZero node, a remote API client, or a custom solution. 

The vrep simulator gets the data by subscribing from the whycon node.

### About PID controller working:-
When any autonomous vehicle changes its position to reach at desire position than the movement is very jerky which is called as Bang Bang Control and if this movement is not smooth then it may cause the collision with the nearby objects.
So to maintain the steering control we have the proporitional control 
#### Proportional:-

Proportional Gain = Po + Kp * ( change in error )

Here if the proportional gain is higher then the drone uncontrolled and rotates in a circle
If the proportional gain is too low then it takes more time to get into the desired position

#### Derivative:-
It takes the measurement from perpendicular and checks how far the system is from desired position.
Thus it acts as resistance to the proportional gain maintains the smoothness
Derivative Gain = Do + Kd * (change in error)/(change in time)

If derivative Gain is too low then system underdamped that it too much oscillates 
If derivative Gain is too high then the system  overdamped and it takes too much time to get to the correct position

#### Integral:-
Sometimes the external factors like high wind speed or any obstacle collides which change object position from small change then to maintain this we have integral gain which maintains the position from small change
Integral Gain = Io + Ki * integrate(change in error * change in time)

If integral Gain is too high then the system lost the position and gets over damped
If integral Gain is low then the system takes too long time to get back to original position

So proper Proportional Gain, Derivative Gain and Integral Gain is necessary
Final Result PID = Proportional Gain +  Derivative Gain + Integral Gain

Here Kp, Kd and Ki are the experimental values which we get and it is different for each and every system although of the same type
<br/><br/>  
    
#### CLICK BELOW TO WATCH WORKING VIDEO!!!   
[![IMAGE ALT TEXT HERE](https://i.ytimg.com/vi/Te2zlFNban4/hqdefault.jpg?sqp=-oaymwEjCNACELwBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE=&rs=AOn4CLACuRt-oT7PBoK9m8haQiiSFdCWcg)](https://youtu.be/6gyY-dop8fA)
