
#include <iostream>
#include <v_repConst.h>
int main() {
    char sep = ';';
    std::cout
        << VREP_PROGRAM_VERSION_NB/10000 << sep
        << VREP_PROGRAM_VERSION_NB/100%100 << sep
        << VREP_PROGRAM_VERSION_NB%100 << sep
        << VREP_PROGRAM_REVISION_NB << sep
        << 0 << std::endl;
}
    