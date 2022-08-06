# FASTrack
Reaction Time Based Game

This game is written in ARM7 assembly instruction set for the Xilinx ZedBoard.
The Zedboard is based on Zynq - 7000 EPP Development Kit

# FAS Track Documentation

### Introduction:

FAS Track is a user reaction time game, where the users or users try to get their arrow
onto the given finish mark. FAS Track utilizes the LEDs, switches, and OLED display on the
ZedBoard. Written in the ARM7 assembly instruction set for the Xilinx ZedBoard, based on the
Zynq – 7000 EPP development kit. Through this document, you will gain a further
understanding of how these components are utilized.

### OLED Display:

The OLED display is used for multiple display purposes for FAS Track. With the first row
of the display displaying the current mode of the game and the other three rows being used as
the play area. The first and third rows of the play area, are used to display moving arrows
across the display. The movement of the arrows are done, using a printing function that
increments the offset of the printing of the arrow that accounts for the end of the row. While
the second row of the play area, is used to first print the dividing line between the two arrows.
Additionally, it is used to display a randomly generated end point for the player or players to
land on when a speed difficulty mode is running thus being in play.

### LEDs:

The usage of LEDs for FAS Track is to indicate the switches that have been activated.
When the game starts in base mode, the LEDs are active on the available switches that can be
used.

```
LEDs At Base Mode Un-Flipped LED Off When SW0 Is Flipped
```
When the player flips one of the available switches, the LEDs will represent the flip of
the switch by turning off the LED of the switch below it.


### Switches:

### The use of switches within FAS Track is to control multiple aspects of the game.

Managing the difficulty speed of the game and being used as the input for the user or users to
stop their arrow moving across the screen. Being detected through the utilization of masks, to
identify the switch that has been flipped.

Below are the switches and their defined purpose as well as location on the board:

## SW 7 SW 6 SW 5 SW 4 SW 3 SW 2 SW 1 SW 0
<img width="798" alt="Screen Shot 2022-08-06 at 4 32 29 AM" src="https://user-images.githubusercontent.com/49692422/183247127-e9c78386-9789-4541-b85f-7b92fa69e5ab.png">

```
Switches Purpose
SW 0 Setting the speed mode to easy
SW 1 Setting the speed mode to medium
SW 2 Setting the speed mode to hard
SW 3 Not In Use
SW 4 Not In Use
SW 5 Player 2 stops bottom arrow
SW 6 Not In Use
SW 7 Player 1 stops top arrow
```
When either one of the switches from SW 0 to SW 1 are utilized, the following behavior
will be seen:

```
The Different Speed Modes Based On Switch Input
```

When either one or both of SW7 and SW 5 are utilized, associated arrows will pause
printing on the OLED:

```
Player s Arrow Stopping Switches Activated
```
The usage of switches also considers the necessary order of which switches must be
used. As shown in the diagram below, the different modes and states ensure that there are no
unexpected effects from an erroneous flip of a switch.

```
Base Mode /
State
```
```
Hard Speed
Mode / State
```
```
Medium Speed
Mode / State
```
```
Easy Speed
Mode / State
```
```
Pause Player
Arrow State
```
```
User Has At Either SW7 Or
SW 5 Flipped On
User Has At Either SW7 Or
SW 5 Flipped On
User Has SW7 And SW 5 Flipped Off User Has SW7 And SW 5 Flipped Off
```
```
User Has SW 5 Flipped OffSW7 And User Has At Either SW7 Or SW 5 Flipped On
```
```
User Flips On SW1 User Flips Off SW
```
```
User Flips Off SW0 User Flips Off SW
```
```
User Flips On SW0 User Flips On SW
```
```
User Has SW7 And
SW5 Flipped On User Has SW7 and SW5 Flipped On
```

This behaviour can be seen in the following images, where either one or both users have
chosen to stop their arrows. When the speed difficulty mode switches have been changed by
accident, the game does not acknowledge the change as the users are still playing the game.

```
Switch Error Avoidance In Action
```

