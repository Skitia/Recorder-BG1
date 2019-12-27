BEGIN X32RB1 
BEGIN X32RB2 
BEGIN X32RB3 
BEGIN X32RB4 
BEGIN X32RB5 
BEGIN X32RB6

CHAIN IF ~Global("RecorderQuestThree","GLOBAL",5)~ THEN X32RB1 Encounter 
~Hey you. Place isn't very safe. Between all the fighting, I'd say you owe us a security tax for keeping this place traversable.~
END 
++ ~"Security tax"? Tell me something more original.~ + Original 
++ ~You've not done a very good job, I've been attacked quite a bit around here.~ + Original 
++ ~Are you the bandits that jumped a runner?~ + Runner 
++ ~You're right it's not safe. And you should be afraid of what's right in front of you: me.~ + Original 

CHAIN X32RB1 Original
~This one's got jokes.~
== X32RB2 IF ~!Dead("X32RB2")~ THEN ~We can tell better jokes then that.~
== X32RB3 IF ~!Dead("X32RB3")~ THEN ~Let's show them who is in charge around here.~
== X3Rec IF ~InParty("X3Rec")~ THEN ~Be careful, <CHARNAME>. They look like they'll take any excuse for a fight.~
== X32RB1 ~Pay up if  you don't want trouble. One thousand shinies, and then you can walk away okay.~
END 
++ ~You're not getting a coin from us.~ + Attack 
++ ~We're more interested in something you may have come across. Something that belonged to a runner that passed by.~ + Runner 
+~PartyGoldGT(999)~+ ~All right, all right, here you go.~ + PayFee 
++ ~But I can't afford it!~ + Attack

CHAIN X32RB1 Runner 
~Yeah, we did. Yelped like a dog and dropped some very valuable intelligence. We might sell it to the other side.~
== X32RB1 ~If you came back for it on his behalf, you're going to have to come up with a very convincing offer for us not to hand it to Caelar's people. Let's say...ten thousand gold.~
END 
++ ~Ten thousand? That is far too much.~ + Afford 
++ ~I'm not giving you brigands anything but what you deserve.~ + Attack 
+~PartyGoldGT(9999)~+ ~If that is what it takes. Take it.~ + PayQuest
+~RandomNum(2,1)OR(2)CheckStatGT(Player1,15,STR)CheckStatGT(Player1,15,CHR)~+ ~Do you know who I am? I am the Hero of Baldur's Gate, and you dare demand a "price" from me? Think.~ + Truth 
+~RandomNum(2,2)OR(2)CheckStatGT(Player1,15,STR)CheckStatGT(Player1,15,CHR)~+ ~Do you know who I am? I am the Hero of Baldur's Gate, and you dare demand a "price" from me? Think.~ + Lie 
+~!CheckStatGT(Player1,15,STR)!CheckStatGT(Player1,15,CHR)~+ ~Do you know who I am? I am the Hero of Baldur's Gate, and you dare demand a "price" from me? Think.~ + Lie

CHAIN X32RB1 Afford 
~Too bad. Guess you'll just have to worry about your thousand coin fee, then.~
END 
++ ~But I can't afford it!~ + Attack
++ ~You're not getting a coin from us.~ + Attack 
+~PartyGoldGT(999)~+ ~All right, all right, here you go.~ + PayFee 
++ ~Actually, I just made a wrong turn, I'll head back.~ + Attack

CHAIN X32RB1 Attack 
~Sic them!~
DO ~SetGlobal("RecorderQuestThree","GLOBAL",8)
ActionOverride("X32RB2",Enemy())
ActionOverride("X32RB3",Enemy())
ActionOverride("X32RB4",Enemy())
ActionOverride("X32RB5",Enemy())
ActionOverride("X32RB6",Enemy())
Enemy()
~ 
EXIT 

CHAIN X32RB1 PayQuest 
~All right then. It's yours. Consider the payment part of your fee as well. Now get lost.~
DO ~SetGlobal("RecorderQuestThree","GLOBAL",7)TakePartyGold(10000)GiveItem("X32RMC",Player1)~ 
EXIT 

CHAIN X32RB1 PayFee 
~Smart. Now get lost.~
DO ~SetGlobal("RecorderQuestThree","GLOBAL",6)TakePartyGold(1000)~ 
EXIT 

CHAIN X32RB1 Lie 
~Ha, another bad joke. Nah, this is how it's going down. You pay up, or you pay the fee and get out of here.~
END 
++ ~But I can't afford it!~ + Attack
++ ~I'm not giving you brigands anything but what you deserve.~ + Attack 
+~PartyGoldGT(9999)~+ ~If that is what it takes to get back the correspondence. Here's the gold.~ + PayQuest
+~PartyGoldGT(999)~+ ~I'll pay the fee, but not your ten thousand.~ + PayFee 

CHAIN X32RB1 Truth 
~Are you now? Well...~
== X32RB4 IF ~!Dead("X32RB4")~ THEN ~You heard what they did, right?~
== X32RB5 IF ~!Dead("X32RB5")~ THEN~Let's...not get tangled with this.~
== X32RB1 ~You know what? Just take it, and forget the fee. In fact, we're headed to greener pastures.~
END 
++ ~Go on then, get.~ DO ~GiveItem("X32RMC",Player1)SetGlobal("RecorderQuestThree","GLOBAL",7)
ActionOverride("X32RB2",EscapeArea())
ActionOverride("X32RB3",EscapeArea())
ActionOverride("X32RB4",EscapeArea())
ActionOverride("X32RB5",EscapeArea())
ActionOverride("X32RB6",EscapeArea())
EscapeArea()~ EXIT 
++ ~Not so fast. You brigands are getting what you deserve.~ DO ~GiveItem("X32RMC",Player1)~ + Attack 
++ ~Goodbye.~ DO ~GiveItem("X32RMC",Player1)SetGlobal("RecorderQuestThree","GLOBAL",7)
ActionOverride("X32RB2",EscapeArea())
ActionOverride("X32RB3",EscapeArea())
ActionOverride("X32RB4",EscapeArea())
ActionOverride("X32RB5",EscapeArea())
ActionOverride("X32RB6",EscapeArea())
EscapeArea()~ EXIT  

CHAIN IF ~Global("RecorderQuestThree","GLOBAL",6)~ THEN X32RB1 Return 
~What now? You paid your fee.~
END 
+~PartyGoldGT(9999)~+ ~I've come to pay for the correspondence you took from the runner. I've the ten thousand right here~ + PayQuest2 
++ ~I've come back to give you brigands what you deserve.~ + Attack 
++ ~I'll be on my way.~ EXIT 
 
CHAIN X32RB1 PayQuest2 
~All right then. Here. It's yours. Now stop bothering us.~
DO ~SetGlobal("RecorderQuestThree","GLOBAL",7)TakePartyGold(10000)GiveItem("X32RMC",Player1)~ 
EXIT  

CHAIN IF ~Global("RecorderQuestThree","GLOBAL",7)~ THEN X32RB1 Return2 
~Got nothing to say to you.~
EXIT 