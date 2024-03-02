As Bob walked past the Range, he glanced into the Edgar Allan Poe room. A truly revolutionary man he was, breaking the conventions of traditional poetry. Bob, truly admiring the writer, decided to walk in and check out the room.

+ Walk in to the writer's room.
-> OBEYING_NARRATOR_ROOM
+ Continue on past.
-> DISOBEYING_NARRATOR_OUTSIDE


== OBEYING_NARRATOR_ROOM == // listening to narrator and going inside Poe's room
{DISOBEYING_NARRATOR_OUTSIDE: Bob finally decided to listen to his soul. }As he walked in, he thought he heard the caw of a raven coming from the fireplace. He wanted to ignore it, figuring it was just the wind, but it seemed like something was calling him to the fireplace.
    + Investigate fireplace
    -> INVESTIGATING_FIREPLACE
    + Ignore fireplace
    -> DISOBEYING_NARRATOR_FIREPLACE



== DISOBEYING_NARRATOR_OUTSIDE == // call when Bob ignores narrator outside when walking in to room
{DISOBEYING_NARRATOR_OUTSIDE == 0: Bob ignored his inner voice at first, but he turned back and reconsidered. After all, Poe was his inspiration for becoming a writer.}{DISOBEYING_NARRATOR_OUTSIDE == 1: Bob was seriously testing his inner voice and getting on its nerves. Bob was indeed curious about the room and thought about going in.}{DISOBEYING_NARRATOR_OUTSIDE == 2: Bob seemed incapable of listening to Inner Voice, and so Inner Voice would teach him a lesson if he didn't go in to the room. After all, Bob needed to learn.}{DISOBEYING_NARRATOR_OUTSIDE >= 3: Bob will find out the limits of IV's patience.}
+ {DISOBEYING_NARRATOR_OUTSIDE < 3}Turn back and walk into room.
-> OBEYING_NARRATOR_ROOM
+ {DISOBEYING_NARRATOR_OUTSIDE < 3}Continue walking past
-> DISOBEYING_NARRATOR_OUTSIDE
-> LEARNING_LESSON

== INVESTIGATING_FIREPLACE ==
-> END

== DISOBEYING_NARRATOR_FIREPLACE ==
-> END

== LEARNING_LESSON ==
-> END
