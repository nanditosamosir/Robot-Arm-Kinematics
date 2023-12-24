# Robot-Arm-Kinematics
Contains program code created based on robot kinematics lectures.

This program was created to run on the **Arduino Uno** microcontroller.
The actuator used is an **SG90 servo**.

The robot module used was purchased at (https://www.tokopedia.com/artafurniture/micro-robot-arm-9g-micro-servo?utm_source=salinlink&utm_medium=share&utm_campaign=PDP-66041873-811083070-010923-iNmYzC&_branch_match_id=102272350034648326 8&_branch_referrer=H4sIAAAAAAAAA8soKSkottLXL8nPzi9ITclM1MvJzMvWLyo0cQ1OrPTzdE4CAEuFd1YiAAAA ).

The programs contained in this repository consist of 3 types.
1. The Forward_Kinematics.ino program code is a program to get the final position of the End Effector by inputting the angle value of each servo. This program code is executed on the Arduino IDE.
2. The Inverse_Kinematics.m program code is a program to obtain a combination of end points from the 3-dimensional axes (X, Y, Z) which is the position of the End Effector of the robot arm module. This program code is run in the Matlab program.
3. The Inverse_Kinematics.ino program code is a program that will move the robot arm based on the position (X, Y, Z) input by the user. This program code is executed on the Arduino IDE.
