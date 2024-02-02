// used a random word generator and got the words "mayor" "weapon" "production"



As you're walking back from your classes to your home in Hooville, you hear a whisper from the bushes.
"Psst. Yeah, you! Do you want to learn more about the hidden secret of Hooville?" a man in old colonial clothes asks you.
* You're intrigued[ and say yes]. "Obviously! I always knew there was something fishy going on here."
-> GREG_INTERACTION
* You can't be bothered[ and say no]. "Get lost! I don't know why you're wearing that silly get-up, but I just want to go home."
-> GO_HOME

== GREG_INTERACTION ==
"Alright, come with me. We can't be talking in the open like this. Let's go to my office."

As you follow him to a seemingly abandoned warehouse, you wonder if you made the right choice...
* [Back out] "Hey, I'm not sure if my parents would be okay with this. I'm going to go home now."

"Oh, ok. No worries! Good luck!"

-> AT_HOME

* [Keep going] Deciding that it can't hurt to follow a stranger into a warehouse, you decide to keep going. Right as you're about to walk in, the man says, "Oh by the way, I'm Greg. Sorry, I completely forgot to introduce myself. I'm a member of the Cavaliers, and we've heard a lot about you and are interested in recruiting you."

    "Nice meeting you! I'm flattered that you've heard about me. What did you want to tell me about?"
    
    -> GREG_EXPLAINING
-> END


== GREG_EXPLAINING ==
"Our organization fights corruption and unfair practices by the government, and we've uncovered evidence of some sort of weapons research. We don't know the details, but we know they're planning on using the weapons in areas with higher rates of so-called 'subversives'. Are you familiar with the Tuskegee syphilis study? It was a study conducted from 1932 to 1972 where the government just observed about 400 black men with syphilis just to see what the disease would look like without treating it. We don't know what these weapons are, but we do know that they could completely destroy freedom in the United States. Would you be willing to join our cause?"

* ["No, I'm not interested."] "I'd rather not. I don't know what I'd be getting into, and I don't want to risk myself or my family." -> AT_HOME
* ["Obviously!"] "Of course! I can't stand it when the government targets some group just because they don't agree with them. How can I help?"

"Your job would be to infiltrate the mayor's office and find out the details of the operation. We have someone that can help you get a job with the mayor."

A few weeks later, you have an interview with the mayor.
-> WORKING_FOR_MAYOR

== GO_HOME ==
As you walk away, you hear a BANG! You quickly run away, but when you look back, you see that a police officer has shot the man.

"Don't worry! You're safe now. That man was a dangerous subversive and had a gun."

* You thank the police officer[ ] and go home. -> AT_HOME
* You have a conversation with the police officer
-> POLICE_CONVO

== AT_HOME ==
A few days later, you see in the news that a man named Greg Dougan was killed by the police for pulling out a gun on them. {not GREG_INTERACTION:Thankful for the police, you rest easy knowing that they are protecting you.}{GREG_INTERACTION:As you watch the news, you see that it's the same man you met a few days ago!{not GREG_EXPLAINING: You realize you made the right decision in not following him. Who knows what might have happened!}{GREG_EXPLAINING: You wonder if maybe you could have done something, and maybe if the government's up to something, but unfortunately, you don't know what you can do.}}
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
{GOOD_WORD:It's always been your dream to work in government, and you know that working for the mayor is a good start for that. As you interview with the mayor, you pray that you get the job.}{not GOOD_WORD:Throughout the interview, you hide the fact that you know what the Cavaliers are. You don't want him to be suspicious of you.} By the end of the interview, the mayor is ready to hire you!

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

Over the next couple of months, you delve into {DATA_ANALYSIS: data analysis}{CYBERSECURITY: cybersecurity}{ACCOUNTING: accounting}. Your target is {GOOD_WORD:the terrorist organization, the Cavaliers. But as you dive into it, you notice some fishy stuff about the town's own money.}{not GOOD_WORD:ironically enough, your own organization, the Cavaliers. But you have your own mission - to find out about the weapons project.} There seems to be a lot of funds diverted towards one project that you don't have access to see the details of.

As you investigate more, {GOOD_WORD:worried about the Cavaliers somehow stealing money from the town,}{not GOOD_WORD:you realize that this is the secret weapons project, and} you notice that the mayor himself has given approval for this project.

* {GOOD_WORD}[You decide to confront the mayor] Confused about the project, you decide to ask the mayor about it. Walking into his office, you ask, "Hey, what's this project the system says you approved? It's been costing a lot of money, and I was just wondering what it is."

"That's above your paygrade! Don't worry about it, and worry about doing your job."

    ** [You decide to press on] -> PRESSURING_MAYOR
    ** [You decide to drop it] -> IGNORE

-> END
*[You decide to ignore it] -> IGNORE
*{GREG_EXPLAINING}[You decide to go back to the Cavaliers with it] After you download the files onto your flash drive, you quickly walk out of the building. At the Cavaliers' headquarters, you give the flash drive to Greg.

"Thanks for your work! We're going to send this to the press, and they'll have a field day over this!"

A few days later, you see in the news that the details of the weapons conspiracy have gone public. The government, wanting to cover themselves, arrests the mayor and other Hooville officials, but everyone knows the truth anyways.
-> END

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
{GOOD_WORD:Worried for your job and worried that it's above your paygrade, you decide to focus on finding out where the Cavaliers are headquartered. You manage to narrow in on their location, and you tell the mayor and police.}
{GREG_EXPLAINING:You ignore the details, as you realize that you just want to live a happy life without getting involved in anything suspicious. You decide to not send the plans to Greg. A few months later, the police have found the Cavaliers' headquarters.} As the police converge on their location, you wonder if you did the right thing....
-> END
-> END