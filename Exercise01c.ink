/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Variable types: integer, float, boolean
 - Variable assignment
 - Printing variables
 - Variable checking
 
 In the assignment:
 - Add four more knots
 - Assign at least TWO new variables through player choices
 - Print at least one of the variables to the player in a passage
 - Check the value of a variable and have it do something
*/



VAR health = 5
VAR pet_name = ""
VAR torches = 0

-> memory

== memory ==
Before you stands the cavern of Josh. You wish your childhood pet was with you. The cave might be less intimidating then. What was your poet's name?

* [Charlie]
    ~ pet_name = "Charlie"
    -> cave_mouth
* [Susan]
    ~ pet_name = "Susan"
    -> cave_mouth
* [Spot]
    ~ pet_name = "Spot"
    -> cave_mouth

== choose_health ==
You think of {pet_name}, and it gives you strength. How brave do you feel today?

* [Very brave (+2 health)]
    ~ health = health + 2
    -> cave_mouth
* [Cautious (no change)]
    -> cave_mouth

-> cave_mouth

== cave_mouth ==
You are at the enterance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.

You make it to the cave. If only {pet_name} could see you now

You have {torches} torch{torches == 1:!}.
You currently have {health} health

+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* {torches == 0} [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can only see a small shimmer in the darkness.
* {torches > 0} [Light Torch] -> east_tunnel_lit
The light of your torch glints off thousands of coins in the room. You hear a low growl.
The light of your torch glints off thousands of coins in the room. You hear a low growl.

{health >= 7:
    The growl doesn't scare you — you're ready.
- else:
    You feel a chill run down your spine. Maybe you weren’t brave enough for this.
}

+ [Go Back] -> cave_mouth
-> END
