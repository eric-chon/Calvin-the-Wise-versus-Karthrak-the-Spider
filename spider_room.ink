<h3><center>Welcome, Calvin the Wise!</center></h3>

You are a <b>powerful wizard from the Land of Gord</b>. Your epic adventures are told throughout the world! However, during your latest quest, an inter-dimensional phase spider called <b>Karthrak</b> captured you, broke your mighty staff, the <b>Staff of Jorlax</b>, into three pieces and trapped you in his cave of darkness. 

You are in a stone cavern. In front of you lies a giant, glistening web. In the center sits Karthrak, ready to devour you. There are passageways to your left, your right, and behind you. Past Karthrak lies the portal home.

The only way to escape is to collect the three parts of the Staff of Jorlax, defeat Karthrak, and venture through the portal.

Karthrak speaks, "Welcome to your doom, Calvin the Wise! Do you have the skills and wits to reclaim the Staff or Jorlax? Or shall you be my supper?  Ha ha ha!"  -> Spider_Room

=== Spider_Room
{spoke_to_karthrak: You are in a stone cavern. In front of you lies a giant, glistening web. There are passageways to your left, your right, and behind you. | You are in a stone cavern. In front of you lies a giant, glistening web. In the center sits Karthrak, ready to devour you. There are passageways to your left, your right, and behind you.}

Past Karthrak lies the portal home.

*   Speak to Karthrak
    "Foul spider! I will reclaim my staff and defeat you. I am no spider's supper!" you declare.
    "Good luck, Calvin the Wise! You must retieve your staff body, the staff head, AND the prismatic gem that sits atop it. I have hidden each behind a series of puzzles and traps far too difficult for you to solve. And when you give up, my jaws will be waiting!"
    ~ spoke_to_karthrak = true
    ...
    -> Spider_Room

+ Head West to retrieve the Staff's body. 
...
-> Staff_Body

+ Go East in search of the Staff's head.
...
-> Staff_Head

+ Walk South to find the Staff's gem. 
...
->Staff_Gem

+ Move toward's the Portal home.
...
-> Portal_Home

-> END