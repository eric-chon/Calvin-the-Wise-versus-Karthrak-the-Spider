=== Staff_Body
-> Staff_Hub

=== Staff_Hub
{staff_body_received: You have defeated this dungeon. There is nothing more to do here.}

{staff_hub_visited: You are in a room with four exits.| You enter into another cavern. There are four passageways in this room. To the west is a stone archway. To the east you hear the clacking of bones on a stone floor. In south is a door with a sign. North you brings you back to Karthrak the Spider.}
    ~ staff_hub_visited = true

+ West, to the Stone Archway
...
    -> Sword_in_Stone

+ East, towards the sounds of clacking bones
...
    -> Skeleton_Guards
    
+ South, towards a stone room with a sign.
...
    -> Labyrinth_Entrance

+ North, Return to Karthrak
...
    -> Spider_Room

=== Sword_in_Stone
{sword: You have already retrieved the fabled Power Sword of Grayskull. There is nothing more to do here.}

{sword_room_visited: You are in the Sword room.| You enter a quiet and tranquil room. A shaft of light from a hole in the ceiling shines on a sword embedded in a giant boulder. The hilt beckons you to grasp it.}
    ~ sword_room_visited = true

+ {not spoken_phrase_known} Pull the sword from the stone
    You try and try but the sword itself remains stuck in the stone. A voice from out of nowhere booms,
    "To wield the sword, first you must speak the phrase."
    There must be somewhere you can learn it.
    ~ spoken_phrase_known = true
    ...
    -> Sword_in_Stone
    
+ {spoken_phrase_known} Speak a phrase
    -> Sword_in_Stone.phrase_speaking

+ Leave
    You head back to the main canvern.
    ...
    -> Staff_Body

= phrase_speaking
    - You grasp the sword and yell:
    
        * * "Klaatu barada nikto!"
            You speak the phrase and attempt to pull the sword from the stone but it remains stuck. This wasn't the right one apparently.
            ...
            -> Sword_in_Stone
            
        * * "Ash nazg thrakatulûk, agh burzum-ishi krimpatul!"
            You speak the phrase and attempt to pull the sword from the stone but it remains stuck. This wasn't the right one apparently.
            ...
            -> Sword_in_Stone
            
        * * {spoken_phrase} "By the Power of Grayskull!"
            You grab the hilt of the sword. As you do, the sword glows and becomes warm to the touch. It slides out easily from the stone. It's weight is perfectly balanced and it's blade is sharp, clean, and glowing. You now weird the Power Sword of Grayskull!
            ~ sword = true
            ...
            -> Sword_in_Stone
        + Decide not to say anything.
            ...
            -> Sword_in_Stone
            
    
=== Skeleton_Guards
{skeleton_room_visited: You are in the skeleton guard room.|You enter a brightly lit stone room. Torches burn on every wall and there is a wooden door at the far end. In front of you are two skeletons blocking your path. They have rusty axes but do not move towards you.}
    ~ skeleton_room_visited = true

{skeletons_defeated: The scattered bones of the skeleton guards litter the floor. The way to the door is open.}

* {sword} You unsheath the Power Sword of Greyskull and ready to strike[!]
    Despite being undead, the Skeletons seem to tremble in fear. As you swing the sword, the skeletons try to block but crumble under its power. They are defeated!
        ~ skeletons_defeated = true
        ...
        -> Skeleton_Guards
    
+ {skeletons_defeated} [Open the door]
        You open the door and walk through.
        ...
        -> Riddle_Master
        
+ {not skeletons_defeated} [Open the door]
    You need to get past the skeletons first. If only you had some kind of weapon to defeat them.
    ...
        -> Skeleton_Guards
        
+ Leave
    You head back to the main cavern.
    ...
        -> Staff_Body

=== Riddle_Master
{riddle_master_visited: You stand before the Riddle Master.|As you enter this room, you notice a giant stone head carved into the far wall. It looks like a faun, with a slight smile on its face and friendly expression.}

~ riddle_master_visited = true

{not riddle_master_visited: The stone head speaks:<br>"Welcome, traveler. You have reached the Riddle Master! I possess a powerful gift that will help you in your quest, and I shall give it to you! But only if you answer me these riddles three!"<br>-> Riddles}

{compass: The stone head speaks:<br>"You have already received my gift. There is nothing more to do here."}

+ Leave
    You had back to the skeleton guard room
    ...
    -> Skeleton_Guards

=== Labyrinth_Entrance
{labyrinth_entrance_visited: You are at the entrance to the famed Karthrak Labyrinth.|In this room of rough-hewn stone and rock is a doorway into what appears to be a series of passageways that twist and turn. There is a sign next to the door.}
    ~ labyrinth_entrance_visited = true

+ [Read sign]
    {sign_read: You read the sign again to refresh your memory.}
    
    The sign says:
    
    "Welcome to the famed Labyrinth of <b>Karthrak, the Inter-Dimensional Phase Spider</b>. Beware! Without the proper compass you will never find your way to the center.
    
    To find the compass, you must learn this phrase and use it at the right time:
    
    <b>"By the Power of Grayskull!"</b>
    ~ spoken_phrase = true
    ~ sign_read = true
    ...
    -> Labyrinth_Entrance

+ [Enter the Labyrinth]
    You make your way into the Labyrinth!
    ...
    -> Labyrinth

+ [Leave]
    You head back toward's the main cavern.
    ...
    -> Staff_Body