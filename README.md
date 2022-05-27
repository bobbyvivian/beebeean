# beebeean
Final Project APCS

Doc Link:
https://docs.google.com/document/d/18D-w8zidQ-b0LETf9JyQ6mye_0SceCx79GqPuXIRUf0/edit?usp=sharing

Brief Description:
A simple platformer where the aim is the collect a bunch of strawberries and avoid dying from spikes.

## Development Log:

#### 5/23 Vivian
Worked on Player class: made constructor, display method, onGround method, and left and right movement.
Incorporated this in the main Platformer class by making the keyPressed and keyReleased methods. Able to properly display and move from left to right, tested.

#### 5/23 Xinni
Worked on Platformer class: made ground level and some other platforms. Played around with width and height. Platformer class properly displays platforms.  

#### 5/24 Xinni
Did more work on the Platformer class: there are more platforms now woohoo!
Fixed bug in Player where it would go up after moving. Altered move logic so if you press left while moving right the Player stops.

#### 5/24 Vivian
Made Spikes constructor and made an ArrayList of them, worked more on movement and jumping and gravity/falling. Need to work on boundaries/hitting platforms, been trying to account for boundaries.

#### 5/25
Bettered jumping by adding countdown. The jump also properly decelerates now because I tried a much simpler way to implement jumping. Added acceleration as a field, no longer using gravity. Jump properly working movement-wise

#### 5/26
Figured out a way to make sure player doesn't fall in the ground. Made the actual spike shapes and added some in the ArrayList and displayed it. Also made it so that the player will die upon touching a spike.
