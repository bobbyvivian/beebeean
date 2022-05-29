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

#### 5/25 Vivian
Bettered jumping by adding countdown. The jump also properly decelerates now because I tried a much simpler way to implement jumping. Added acceleration as a field, no longer using gravity. Jump properly working movement-wise. Although player goes down after hitting ceiling, still need to make it so that it doesn't go INTO the ceiling.

#### 5/25 Xinni
Finished making platforms and improved spacing between them. Created Door class.

#### 5/26 Vivian
Figured out a way to make sure player doesn't fall in the ground, only lands on the ground now. Made the actual spike shapes and added some in the ArrayList and display(). Also made it so that the player will die upon touching a spike (player no longer visible). Added a victory screen and death screen so that dying and winning will display these pretty images and text. ALSO MOST IMPORTANT: Finally got the hitting upper bound stuff worked out so that the player cannot go into ceiling at all so that means ALL the movement stuff is working!!!!!!!!!

#### 5/27 Vivian
Since we basically have a minimum viable product, I made strawberries! Strawberries class created, shape created, ArrayList created in the main Platformer class, able to display all the strawberries. Created method in Player class and added other details so that every time the player touches a strawberry in the ArrayList, the strawberry disappears and the player's points increases. Also displayed the player's points on the screen and fixed the problem where if the player stands in the same position as an already collected strawberry, the points won't keep counting. Also changed the colors of all the platforms, spikes, player, door so that everything looks better/more cohesive and the platform colors aren't randomly generated.

#### 5/28 Xinni
Working on making a start screen and implementing a pressable button or specific key that starts the game (displays the platforms, spikes, etc.). Struggling to tweak setup/draw to make it work. Thinking about implementing background music and making a restart button.

#### 5/28 Vivian
Made the the leaves on the strawberries. Both of us were working on implementing a start screen oops. Made the StartScreen class, display method, resized the image, displaying text that says "click to start game!", clicking the screen will start the game. Fixed problem where player can move behind the start screen so now it can only move after the screen is clicked. StartScreen done.
