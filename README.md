# beebeean
Final Project APCS

## COMPILE/RUN INSTRUCTIONS
Import the sound library in processing. Use arrow keys to move.

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

#### 5/30 Xinni
Implemented background music, requires importing Sound library. Used a .mp3 file for music at first but there was a long delay for the game to show up/music to start playing. Fixed this by using a .wav file instead.   

#### 5/30 Vivian
Compile/run instructions (import sound library). Made it so that the player can retry after dying by making a retry method (resets everything) in the Player class and displaying "click to retry" on the death screen. Also fixed the problem where the strawberries already collected aren't displayed after pressing retry. Made proper use of the display field in the Strawberry class so that the strawberries aren't removed from the ArrayList after being collected. Retry done. Will also add this option for when player wins too. Made demo branch.

#### 5/31 Vivian
Made it so that you can retry after winning too (click on victory screen). Made it so that we now have 3 levels. Made different tabs for the levels so we can store all the contents, made the buttons and text in startscreen and also a method in startscreen to determine which button the player clicked on. Depending on the button, player's level field is changed accordingly and the right platforms/spikes/berries is displayed. The level is also displayed on the screen. All the levels are the same right now, will change, most importantly the logic is done.

#### 5/31 Xinni
Working on making the different difficulty levels by rearranging platforms, spikes, and strawberries. Currently working on making level 1.

#### 6/1 Vivian
Made a back button for all the screens so that you can go back to the start screen whenever you want and can choose the different levels whenever. Did this by making a BackButton class with display(), clicked() methods. Button only displayed on all other screens except start screen. Fully functional, made it look like an arrow.

#### 6/1 Xinni
Still working on remaking levels in order of increasing difficulty. Level 1 is almost finished.

#### 6/2 Vivian
Made two more working levels (4&5), just need to change the contents of them so that they're harder. Made a MovePlat and a MoveSpike class, which are moving platforms and moving spikes. Tested them out in level 4, they work. You can choose how much displacement you want for the moving objects and whether or not you want them moving horizontally or vertically.

#### 6/2 Xinni
Finished level 1. Started remaking level 2.

#### 6/3 Vivian
Made it so that the player moves with the moving platforms once it's on them, but it can also move on them. Also fixed the screen border collision stuff with moving platforms. Added a lot of features to level 4 so it's harder. Also made a special screen that's displayed if you get all the strawberries and win by making an allBerries boolean field in player that tells you if all of them were collected. Able to use that boolean to display the right image in the win screen class. Also made a level 6, used it today to test the screens, will add contents later. Got rid of some invisible strawberries from some levels that were breaking the special screen.

#### 6/3 Xinni
In the process of remaking level 2.

#### 6/5 Vivian
Updated/almost completed level 4, 5, and 6 (made them harder). Fixed some problem with the right wall border.

#### 6/6 Vivian
Continued making level 6 harder, tried to make the jump more jumpy but it seems jumpy enough? Shifted all the buttons on the start screen up to make more buttons/levels. Made a level 7 but not the contents.
