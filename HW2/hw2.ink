You're walking to class in Warner Hall, and you decide to 
-> walking_in
=== walking_in ===

 + go forward.
  -> main_hallway_forward
 + go to the left.
  -> left_main
 * go to the right.
  -> right_main
 * go outside.
    -> outside

=== outside ===
Why go to class when the weather is so nice!
-> END

=== right_main ===
    There is nothing but a locked classroom in front of you.
    * Turn around and go back to the main entrance.
    You're right back where you are, and as you turn right, you now decide to 
    -> walking_in

=== left_main ===
    There's a staircase to your left, a water fountain to your right, and a classroom in front of you. Warner is your oyster!
    + Drink some water
    Some refreshing water hydrates you. The \#1 drink!
    -> left_main
    * Go up the stairs.
    -> up_stairs
    + Go down the stairs.
    -> down_stairs

=== main_hallway_forward ===
You walk down the main hallway. Your class is on the left, but you see a fancy room in front of you, and it's marked as you not being able to access it.
    * You walk in to class
    -> in_class
    * You keep walking forward
    -> in_front_of_big_room
    * You walk in to a random door
    -> in_random_classroom
    + You walk back the way you came from, and turn around to re-evaluate
    Do you decide to 
    -> walking_in

=== in_front_of_big_room ===
You know you shouldn't, but the cool room is in front of you, while there are some locked classrooms to the sides. What do you do?
    * Try swiping in to the room
    -> try_swiping_in
    + Turn around and go back to the main entrance
    You go back to the main entrance, and re-evaluate. You decide to 
    -> walking_in

=== up_stairs ===
It appears there is some maintenance being done and blocking your way.
* Go back
-> left_main

=== down_stairs ===
You decide to go downstairs, but you start to worry as there seem to be deceptively many stairs. As you descend, you look up the stairs. Maybe this wasn't the best option after all...
    * Go up the stairs
    -> try_going_up
    * Keep going down
    -> keep_going_down
-> END

=== try_going_up ===
There only seem to be 15 or so steps back to where you were, and you hadn't been walking longer than two minutes. But after five minutes, there still seem to be 15 steps left. You realize you have only one option.
    * Keep going down
    -> keep_going_down

=== keep_going_down
You keep going down. After an indeterminable amount of time, you end up in the steam tunnels of UVA! You decide to look around a bit, and eventually end up right inside the access to Brown College. You open the door and voila! You're back in the building where you live. After a long hard day, you decide to go back to your room, and take a nice refreshing nap.
    -> END

=== in_class ===
You walk in to class. As class goes on, you dream about frolicking in the grass outside like a dog plays with his friends. You jerk your head up, only to realize class has gone by and people are rising to leave. You leave with them and go outside.
-> END

=== in_random_classroom
Out of boredom, you decide to walk in to a random classroom. As it is still the first few days of classes, the professors don't know you aren't in their class. You end up learning about and exploring the idea of the simulation hypothesis, the idea that we are only a part of a simulation, or that someone playing a game arbitrarily decides what you should do while you have no actual free will.
-> END

=== try_swiping_in ===
You try swiping in, but as you aren't in ROTC, you don't have access. But you see someone about to walk in, so you casually look away. Do you
    * sneak in past them?
    -> in_fancy_room
    * go back the way you came from back to the front?
    You go back to the main entrance, and re-evaluate. You decide to 
    -> walking_in

=== in_fancy_room ===
As you sneak in to the room, you hide behind a bookshelf. Although extraordinarily fancy, there are few places to hide. As you stealthily sleuth for secrets, you see a satchel of sand, a basket of barley, and a cauldron of corn.
    * You pick up the satchel of sand.
    -> rushed
    * You pick up the basket of barley.
    -> rushed
    * You pick up the cauldron of corn.
    -> rushed
    * You leave the room.
    After you leave, you walk back to the front. Do you now 
    -> walking_in

=== rushed ===
"FREEZE!" says a stern-looking man with a bowl-shaped head and a sharp point for a chin. He has an aura of authority and an air of austerity, all wrapped up with a riveting rigor. You do as this stern-looking man with a bowl-shaped head commands and freeze.
"You can't be here," he remarks, somewhat soberly. As you regain your sense of self, you realize you have options.
    * Run away!
    As you try to run away, the man moves with magnificent momentum, capturing you with an iron grip. You fight back, but in vain. As he calls the campus police, you're left to wonder how you ended up in this position.
    -> END
    * Throw the item!
    You throw the container, spilling its contents onto the ground. The man, unable to maintain his balance, falls to the ground. You swiftly run away and get outside. A successful escape! Or was it....
    -> END



