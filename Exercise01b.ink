/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/


-> cave_mouth

== cave_mouth ==
You are at the entrance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.
+ [Take the east tunnel.] -> east_tunnel
* [Take the west tunnel.] -> west_tunnel
* [Pick up the torch.] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, and you can't see anything.
+ {torch_pickup} [Light torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west tunnel. It is very dark, and you can't see anything.
+ {torch_pickup} [Light torch] -> west_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== torch_pickup ==
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room.
-> END

== west_tunnel_lit ==
As you light the torch, you see a large bear. Do you:
* [Fight the bear off with the torch?] -> boss_fight
* [Run away?] -> deeper_in

== boss_fight ==
Where do you swing your torch?
* [The bear's head.] -> victory_1
* [The bear's legs.] -> victory_2
* [The bear's chest.] -> loss

== victory_1 ==
You swing your torch at the bear's head, and his head catches on fire. You've managed to survive, and can now leave this area.
* [Go Back] -> cave_mouth

== victory_2 ==
You swing your torch at the bear's legs, singeing it's fur and scaring it off. You've managed to survive, and can now leave this area.
* [Go Back] -> cave_mouth

== loss ==
You swing your torch at the bear's chest, and it does little to no damage. You are then mauled by the bear for entering it's territory.

GAME OVER
->END


== deeper_in ==
As you run away, you enter a deeper part of the cave and come to a fork in the road. Do you:
+ [Go left?] -> left_passage
* [Go right?] -> right_passage

== left_passage ==
As you wrap around the left passage, you realize it connects to the east tunnel you didn't go down, and you see massive piles of treasure, free for the taking.

Thanks for playing
-> END

== right_passage ==
You hit a dead end and must go back.
* [Go Back] -> deeper_in
