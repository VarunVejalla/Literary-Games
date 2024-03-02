As Bob walked past the Range, he glanced into the Edgar Allan Poe room. A truly revolutionary man he was, breaking the conventions of traditional poetry. Bob, truly admiring the writer, decided to walk in and check out the room.

+ [Walk in to the writer's room.]
-> OBEYING_NARRATOR_ROOM
+ [Continue on past.]
-> DISOBEYING_NARRATOR_OUTSIDE


== OBEYING_NARRATOR_ROOM == // listening to narrator and going inside Poe's room
{DISOBEYING_NARRATOR_OUTSIDE: Bob finally decided to listen to his soul. }As he walked in, he thought he heard the caw of a raven coming from the fireplace. He wanted to ignore it, figuring it was just the wind, but it seemed like something was calling him to the fireplace.
    + Investigate fireplace
    -> INVESTIGATING_FIREPLACE
    + Ignore fireplace
    -> DISOBEYING_NARRATOR_FIREPLACE



== DISOBEYING_NARRATOR_OUTSIDE == // call when Bob ignores narrator outside when walking in to room
{Bob ignored his inner voice at first, but he turned back and reconsidered. After all, Poe was his inspiration for becoming a writer. |  Bob was seriously testing his inner voice and getting on its nerves. Bob was indeed curious about the room and thought about going in. | Bob seemed incapable of listening to Inner Voice, and so Inner Voice would teach him a lesson if he didn't go in to the room. After all, Bob needed to learn. | Bob will find out the limits of IV's patience.}
+ { DISOBEYING_NARRATOR_OUTSIDE < 4 }[Turn back and walk into room.] -> OBEYING_NARRATOR_ROOM
+ { DISOBEYING_NARRATOR_OUTSIDE < 4 }[Continue walking past.] -> DISOBEYING_NARRATOR_OUTSIDE_HELPER
+ -> LEARNING_LESSON

== DISOBEYING_NARRATOR_OUTSIDE_HELPER == // I need this for the DISOBEYING_NARRATOR_OUTSIDE counters to work properly
-> DISOBEYING_NARRATOR_OUTSIDE

== INVESTIGATING_FIREPLACE ==
{DISOBEYING_NARRATOR_FIREPLACE: Bob finally decided to listen to his soul. }He looked inside the fireplace and saw a small raven statue. Overcome by curiosity, he grabbed it, but alas! It slipped out of his hand and shattered into pieces.

A strange mist formed from the statue and eventually coalesced into the shape of an early to middle-aged man. It was Edgar Allan Poe!

"You have freed me from the shackles of my torment! Long I stood there wondering, fearing, doubting, dreaming mortals no mortal ever dared to dream before. When would I be released? Oh, how did I get trapped, you ask? Ah, distinctly I remember it was in the bleak December of 1849. Yes, I know - two months after my untimely demise. It's a dark place, death. It takes a while to pass on, you see. Deep into that darkness peering I was, but the silence was unbroken, and the stillness gave no token. But eventually, a hand reached out to me. 'Come,' it beguiled, 'I will take you to the promised land.' But alas, it was all a deceit. Some student wanted to imprison my spirit in order to get my writing ability. Fat lot of good it did me! And no less, imprisoned in a raven! The irony. But anyways, thank you for saving me, and please, let me know how I can pay you back," Poe said in a rumbling cadence.

"I am the one that is at your service, Mr. Poe. You are my inspiration, and I am truly sorry about what has happened to you. Thank you for everything," Bob replied.

Poe nodded, tipping his hat. His form began to break apart, the boundaries of the mist slowly having less and less edges until all that remained was the shattered raven statue on the floor.

Bob marveled at his experience. Wondering if anyone would believe his story, he walked out and continued on his day.

-> END

== DISOBEYING_NARRATOR_FIREPLACE == // call when Bob ignores narrator when investigating fireplace
{Bob ignored his inner voice at first, but a flicker in the fireplace drew him to it. |  Bob was seriously testing his inner voice and getting on its nerves. Bob was indeed curious about the fireplace and thought about looking in. | Bob seemed incapable of listening to Inner Voice, and so Inner Voice would teach him a lesson if he didn't look in to the fireplace. After all, Bob needed to learn. | Bob will find out the limits of IV's patience.}
+ { DISOBEYING_NARRATOR_FIREPLACE < 4 }[Investigate fireplace.] -> INVESTIGATING_FIREPLACE
+ { DISOBEYING_NARRATOR_FIREPLACE < 4 }[Ignore fireplace.] -> DISOBEYING_NARRATOR_FIREPLACE_HELPER
+ -> LEARNING_LESSON

== DISOBEYING_NARRATOR_FIREPLACE_HELPER == // I need this for the DISOBEYING_NARRATOR_OUTSIDE counters to work properly
-> DISOBEYING_NARRATOR_FIREPLACE

== LEARNING_LESSON ==
Bob suddenly found himself looking at his body from a bird's eye view. Is this what an out-of-body experience is? Bob's vision suddenly shifted to that of a runner. He seemed vaguely familiar, but couldn't place him.

Suddenly, he was running, in the position of the runner he was just looking at. Caught by surprise, he tripped and fell face-first into the ground. Feeling pain on his cheek, he managed to find "his" phone and look at himself in the camera.

Shocked, he realized he recognized the face that looked back. It was Jim Ryan! He had been put in the body of the president of UVA. But why? He had thought he was being punished, not rewarded. After all-

What, "rewarded"? This wasn't supposed to be a reward. Doesn't Bob know the work that he would have to do as the president of UVA? All the paperwork and whatnot.

But Bob was unfazed. He continued on the run and managed to find his way to Carr's Hill. After showering, he decided to take a nap. After all, he was tired from his run. Dreaming of his previous life, he realized he'd be able to fully enjoy the life that was to come... or would he?
-> END