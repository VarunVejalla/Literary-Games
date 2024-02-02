// used a random word generator and got the words "mayor" "weapon" "production"



As you're walking back from your classes to your home in Hooville, you hear a whisper from the bushes.
"Psst. Yeah, you! Do you want to learn more about the hidden secret of Hooville?" a man in old colonial clothes asks you.
// * You're intrigued[ and say yes]. "Obviously! I always knew there was something fishy going on here."
// -> GREG_INTERACTION
You can't be bothered and say no. "Get lost! I don't know why you're wearing that silly get-up, but I just want to go home."
-> GO_HOME

== GREG_INTERACTION ==
// TODO
-> END

== GO_HOME ==
As you walk away, you hear a BANG! You quickly run away, but when you look back, you see that a police officer has shot the man.

"Don't worry! You're safe now. That man was a dangerous subversive and had a gun."

* You thank the police officer[ ] and go home. -> AT_HOME
* You have a conversation with the police officer
-> POLICE_CONVO

== AT_HOME ==
A few days later, you see in the news that a man named Greg Dougan was killed by the police for pulling out a gun on them. Thankful for the police, you rest easy knowing that they are protecting you.
-> END


== POLICE_CONVO ==
"Wow, that's crazy! Who was he?" you ask the officer. The officer replies, "That man was Greg Dougan, a wanted criminal. He's been recruiting people to join his terrorist organization by telling people lies about Hooville and was planning a terrorist attack on the mayor's office. It's his organization's trademark to attack while wearing those old American clothes."
*You question the officer[, skeptical about the truth].
-> QUESTION_POLICE
*You ask[ how you can help], "What can I do to help prevent these people from causing damage to our society?"

The officer responds, "Just call the police if you see something suspicious. I love your eagerness - if you're ever looking for a job with the police or with the mayor, I can put in a good word for you."
-> GOOD_WORD
*You go home[]. -> AT_HOME

== QUESTION_POLICE ==
"How do you know he had a gun? I didn't see anything when he was talking to me," you ask. The officer replies, "I just knew. He often carries a gun. But you said he was talking to you? What was he talking to you about?"
    * You lie[, worried about your safety]. "Oh, he said he lost his watch, and he was just asking what time it was. Can I please go? I don't really want to be here," you say, gesturing to the body.
    
    "Oh yes, of course. We might take your statement later, so please give me your name and address." 
    
    As you give your name and address to him, you wonder whether this will be the last you hear of it...
    
    // TODO
    -> END
    * You tell the truth[, wanting to be honest with the officer]. "He was asking whether I wanted to know the 'truth about Hooville', whatever that means. Thank God I didn't talk to him, who knows what might have happened to me." 
    
    "Say, thanks for your honesty. I know a lot of people don't trust the cops these days, but if you're ever looking for a job with the police or with the mayor, I can put in a good word for you."
    
    -> GOOD_WORD

== GOOD_WORD ==
* "No[ thanks"], I'm looking for something else. Thank you for your offer though, and for saving me here!" you reply. As you leave and go home, you wonder if maybe being a police officer isn't so bad after all.
-> AT_HOME
* "Yes["] please, that'd be fantastic! I would love to work with the mayor," you reply. 

"Glad to hear that! I have a pretty good relationship with him, and I'll make sure to tell him about you."

-> WORKING_FOR_MAYOR

== WORKING_FOR_MAYOR ==
It's always been your dream to work in government, and you know that working for the mayor is a good start for that. As you interview with the mayor, you pray that you get the job. By the end of the interview, the mayor is ready to hire you!

"Would you rather work in data analysis, cybersecurity, or accounting?" he asks. A bit stunned by the mayor himself giving you options, you take a while to decide.
*"Data analysis["]," you respond. "It's always been my passion, and I'd love to help the town through data analysis."
-> DATA_ANALYSIS
*"Cybersecurity["]," you respond. "It's always been my passion, and I'd love to help the town from cyber-threats."
-> CYBERSECURITY
*"Accounting["]," you respond. "It's always been my passion, and I'd love to help manage the town's money."
-> ACCOUNTING

== DATA_ANALYSIS ==
-> INVESTIGATE

== CYBERSECURITY ==
-> INVESTIGATE

== ACCOUNTING ==
-> INVESTIGATE

== INVESTIGATE ==

Over the next couple of months, you delve into {DATA_ANALYSIS: data analysis}{CYBERSECURITY: cybersecurity}{ACCOUNTING: accounting}. Your target is the terrorist organization, the Cavaliers. But as you dive into it, you notice some fishy stuff about the town's own money. There seems to be a lot of funds diverted towards one project that you don't have access to see the details of.

As you investigate more, worried about the Cavaliers somehow stealing money from the town, you notice that the mayor himself has given approval for this project.

* [You decide to confront the mayor] Confused about the project, you decide to ask the mayor about it. Walking into his office, you ask, "Hey, what's this project the system says you approved? It's been costing a lot of money, and I was just wondering what it is."

"That's above your paygrade! Don't worry about it, and worry about doing your job."

    ** [You decide to press on] -> PRESSURING_MAYOR
    ** [You decide to drop it] -> IGNORE

-> END
*[You decide to ignore it] -> IGNORE

== PRESSURING_MAYOR ==
"If you don't tell me what it is, I'll go to the press about it! I'm sure they'd be curious about what the town's money is being spent on."

"Fine, I'll tell you what it is. The federal government has approved Hooville to be the center of an underground weapons production facility to support officers in certain... subversive neighborhoods. If you want Hooville to be successful, you can't tell anyone about this!"

* [You blackmail the mayor] "If you don't want me to tell anyone about this, I want you to give me one million dollars!"

The mayor smiles, "That's all you- Ok, I can definitely do that. Thanks for talking with me first."

A few days later, you see one million dollars more in your bank account. It seemed too easy - maybe you should have asked for more....
-> END

* [You decide to drop the topic] "Ok, I won't tell anyone about it." 
As you go back to your office, you decide to focus on finding out where the Cavaliers are headquartered. You manage to narrow in on their location, and you tell the mayor and police. As the police converge on their location, you wonder if you did the right thing....
-> END
* [You go to the press with it] "I'm telling the world about this! I'm sure 'The Hoo Daily' would have a field day with this!"

As you storm out of the building, you rush to a phone booth. As you step in, you see a black SUV pull up next to you, and a man with a crisp haircut and mirrored sunglasses step out. As he reaches into his pocket, you can tell that it's too late, but unfortunately, it's too late. He pulls out a gun, and BANG!
-> END

== IGNORE ==
Worried for your job and worried that it's above your paygrade, you decide to focus on finding out where the Cavaliers are headquartered. You manage to narrow in on their location, and you tell the mayor and police. As the police converge on their location, you wonder if you did the right thing....
-> END