=== Riddles
"What is your name?"

+ "Karthrak, the Mighty!"
    -> Riddles.Wrong_Answer
+ "Calvin the Wise!"
    - "CORRECT!" -> Riddles.Second_question
+ "Arthur, King of the Britons."
    -> Riddles.Wrong_Answer
    
-> Riddle_Master

= Wrong_Answer 

"That answer is INCORRECT. You must try again from the beginning."
-> Riddle_Master

= Second_question 

"What is your quest?"

+ "To find the Gem of Lothar."
    -> Riddles.Wrong_Answer
+ "To defeat Karthrak and return home."
    - "CORRECT!" -> Riddles.Third_question
+ "I seek the Grail!"
    -> Riddles.Wrong_Answer
+ Leave without answering    
    -> Riddle_Master
    
= Third_question 

"And now the third, and most difficult, riddle:

    Voiceless it cries
    Wingless flutters
    Toothless bites
    Mouthless mutters
    
    What am I?"
    
+ "Very small rocks."
    -> Riddles.Wrong_Answer
+ "The wind."
    -> Riddles.All_correct
+ "A duck!"
    -> Riddles.Wrong_Answer
    
= All_correct

As you speak your last answer, the smile on the stone head turns into a giant grin.

"Excellent! You have answered every riddle correctly! As promised, a gift to help you defeat Karthrak and return home, oh Calvin the Wise."

Suddenly, the head swings to the side. Behind it is a shelf and on it lies a compass. Just the perfect item to help you navigate a winding and twisty maze.

    * [Grab the compass]
    
    The compass is feels heavier than it looks and is made of brass. You pick it up and put it in your pocket.
    
    ~ compass = true
    -> Riddles.Compass_got 
    
= Compass_got 
The stone head swings back and speaks once more,

"Go forth, Wise Calvin! The Labyrinth of Karthrak awaits!"

You head back to the main room.
-> Staff_Body