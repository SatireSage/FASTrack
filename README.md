Authors:
[Bryce Leung](https://github.com/Bryce-Leung), 
[Sahaj Singh](https://github.com/SatireSage)
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

<img width="462" alt="Screen Shot 2022-08-06 at 4 37 33 AM" src="https://user-images.githubusercontent.com/49692422/183247280-caf6a53f-916a-4f33-9732-d59335e5eafa.png">

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

<img width="351" alt="Screen Shot 2022-08-06 at 4 36 41 AM" src="https://user-images.githubusercontent.com/49692422/183247256-ca4d3044-20f7-4e95-aa2b-8f1b203b0596.png">
<img width="409" alt="Screen Shot 2022-08-06 at 4 36 38 AM" src="https://user-images.githubusercontent.com/49692422/183247260-a088cc13-d338-4781-96e7-1c2a981aab66.png">

LEDs At Base Mode Un-Flipped and LED Off When SW0 Is Flipped

When the player flips one of the available switches, the LEDs will represent the flip of
the switch by turning off the LED of the switch below it.

### Switches:

### The use of switches within FAS Track is to control multiple aspects of the game.

Managing the difficulty speed of the game and being used as the input for the user or users to
stop their arrow moving across the screen. Being detected through the utilization of masks, to
identify the switch that has been flipped.

Below are the switches and their defined purpose as well as location on the board:

## Switch Setup
<img width="798" alt="Screen Shot 2022-08-06 at 4 32 29 AM" src="https://user-images.githubusercontent.com/49692422/183247127-e9c78386-9789-4541-b85f-7b92fa69e5ab.png">

| Switch     | Switches Purpose |
| ----------- | ----------- |
| SW 0:       | Setting the speed mode to easy       |
| SW 1:       | Setting the speed mode to medium        |
| SW 2:       | Setting the speed mode to hard       |
| SW 3:       | **Not In Use**        |
| SW 4:       | **Not In Use**        |
| SW 5:       | Player 2 stops bottom arrow       |
| SW 6:       | **Not In Use**       |
| SW 7:       | Player 1 stops top arrow        |

When either one of the switches from SW 0 to SW 1 are utilized, the following behavior
will be seen:
<img width="851" alt="Screen Shot 2022-08-06 at 4 33 27 AM" src="https://user-images.githubusercontent.com/49692422/183247155-7b1b1bc2-4ce4-4a1a-9ff0-80bc552ac872.png">

```
The Different Speed Modes Based On Switch Input
```

When either one or both of SW7 and SW 5 are utilized, associated arrows will pause
printing on the OLED:

<img width="376" alt="Screen Shot 2022-08-06 at 4 33 32 AM" src="https://user-images.githubusercontent.com/49692422/183247177-2bcf0926-b67b-4e5f-a0d4-fa6ca9e8f8e6.png">

```
Players Arrow Stopping Switches Activated
```
The usage of switches also considers the necessary order of which switches must be
used. As shown in the diagram below, the different modes and states ensure that there are no
unexpected effects from an erroneous flip of a switch.

<img width="919" alt="Screen Shot 2022-08-06 at 4 35 01 AM" src="https://user-images.githubusercontent.com/49692422/183247206-312c02f2-931b-4a16-8a2b-36a719689c45.png">

This behaviour can be seen in the following images, where either one or both users have
chosen to stop their arrows. When the speed difficulty mode switches have been changed by
accident, the game does not acknowledge the change as the users are still playing the game.

<img width="743" alt="Screen Shot 2022-08-06 at 4 35 55 AM" src="https://user-images.githubusercontent.com/49692422/183247324-3efb8a42-8edc-41f9-92d5-2da7da5a3833.png">
