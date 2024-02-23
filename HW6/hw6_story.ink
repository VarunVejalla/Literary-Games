// made from prompt of random words, "eggs", "ray", "ornament"

Oh no, your Christmas tree is under attack! The Easter bunny has sent its minions, the Easter eggs, to take out your ornaments in an effort to get supremacy over Christmas. You are the shining star on top, and you must protect your tree! They will be here in only five minutes....

* You start preparing.
-> PREPARE

* Wait until they come - you are ready.
-> READY

== PREPARE ==
    = BASE_PREP
    You have the choice to pay a present for each troop, up to five troops. Remember, you will have to pay back this debt after the war!
    + {ADD_TROOP < 5} {PREPARE < 6} Another troop! // limit number of troops to 5
    -> ADD_TROOP
    + {PREPARE < 6}All done preparing.
    -> READY
    -> ALL_DONE
    = ADD_TROOP
    You have just gifted a present in order to get another troop! You now have {1|2|3|4|5|6} troop(s).
    -> BASE_PREP
    = ALL_DONE
    You have successfully defended all of the waves! Now, to enjoy standing atop the Christmas tree. -> END


== READY ==
{~Thankfully}
 {&You see the eggs approaching in the distance, with the evil Easter Bunny leading the way.|The approaching eggs try to intimidate you, but you stand strong|The eggs, not giving you any more time to prepare, attack you.}
 
 
 {!Combat is a bit weird. You and the bunnies, despite being mortal enemies, are extremely civilized, and battle very formally (and try to minimize casualties). You have the following options (eerily similar to the rules of Risk). Everybody (except you) can roll a six-sided die, in which case the highest rolls from each egg and troop match up. The eggs/troops that rolled lower will leave. In the case of a tie, both people will stay. Or you can resort to the more bloody way, of having a long-drawn out battle.}// only want to display rules the first time
 
 * {PREPARE.ADD_TROOP} You decide to follow the civilized path.
 -> RANDOM_FIGHTING
 * You decide to battle! {PREPARE.ADD_TROOP: After all, you have no troops.}
 -> FIGHTING_FIGHTING
 -> FLIP_COIN
 = RANDOM_FIGHTING
 // in this, the number of troops has absolutely no impact on your chances, and I'm not actually tracking the number of eggs/troops that leave, but shhh, we pretend I'm doing that.
 {~A troop must leave! Unfortunately, you must surrender your tree. -> END |An egg must leave! You survive another time! But you decide to not risk it, and go to fighting normally Now, with one less opponent on the battlefield, it has thinned out a bit. -> FIGHTING_FIGHTING}
 
 
 = FIGHTING_FIGHTING
You can use your shining ray to give your troops a 20% attack increase, or you can reduce all the opponents' attack by 20%. What do you choose to do?
    * You help your troops attack.
    -> GOOD_WIN
    * You make the eggs' attacks less powerful.
    -> BAD_LOSS
    -> GOOD_WIN
 -> END
 = FLIP_COIN
 You decide to flip a coin for the kingdom. It simply isn't worth the bloodshed. {~You flip heads and give up the kingdom.-> END|You flip tails and keep the kingdom. Time to rebuild.-> END}
-> DONE

== GOOD_WIN ==
You have successfully defended! But they are regrouping and ready to attack again. -> PREPARE
== BAD_LOSS ==
Unfortunately, you have lost the fight. Sorry! You must give up your kingdom.
-> END