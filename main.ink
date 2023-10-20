INCLUDE spider_room.ink
INCLUDE staff_body.ink
INCLUDE portal_home.ink
INCLUDE staff_head.ink
INCLUDE staff_gem.ink
INCLUDE riddles.ink
INCLUDE labyrinth.ink

// Pieces of the Staff of Jorlax
VAR staff_body_received = false
VAR staff_head_received = false
VAR staff_gem_received = false
VAR number_of_staff_pieces = 0

// Quest Items
VAR compass = false
VAR sword = false
VAR spoken_phrase = false

// Quest Objectives
VAR skeletons_defeated = false
VAR spoke_to_karthrak = false

// Rooms Visited
VAR staff_hub_visited = false
VAR sword_room_visited = false
VAR skeleton_room_visited = false
VAR riddle_master_visited = false
VAR labyrinth_entrance_visited = false
VAR labyrinth_visited = false

// Other Variables
VAR sign_read = false
VAR spoken_phrase_known = false