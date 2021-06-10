BEGIN X3RPal

CHAIN IF ~AreaCheck("%bg1_eet_symbol%2617")NumTimesTalkedTo(0)~ THEN X3RPal CandleQuest
~Recorder sent you? I was just appreciating the beauty of a maiden the night before, and the night seemed to slip by. I'll report to my bard now. I hope our quest to the Ulcaster ruins inspires a beautiful song from her lips. Milil bless.~
DO ~EscapeAreaMove("%bg1_eet_symbol%2600",3906,532,SW)AddJournalEntry(@2,QUEST)SetGlobal("X3RecCandleQuest","GLOBAL",2)~
EXIT 

CHAIN IF ~NumTimesTalkedToGT(0)AreaCheck("%bg1_eet_symbol%2600")~ THEN X3RPal CandleQuest1 
~The lovely maiden Recorder will want to give you a gift before we depart.~
EXIT 



CHAIN IF ~!Dead("X3RNec")Global("X3RNecAttack","GLOBAL",0)~ THEN X3RPal Ruins1
~Please...stop him.~
EXIT 

CHAIN IF ~Dead("X3RNec")!InParty("X3Rec")~ THEN X3RPal Ruins2B
~Thank you...it seems my story will end only in tragic ballad for maidens to weep. Please, Take this blade, and give it to the maiden bard. Milil bless you for having the strength...to do what I could not. ~
DO ~SetGlobal("X3RKillPal","GLOBAL",2)~ EXIT 

CHAIN IF ~Dead("X3RNec")InParty("X3Rec")!Dead("X3Ruby")~ THEN X3RPal Ruins3A 
~You did what I could not, maiden bard. A pity I will not live to see the record you make of your own tale.~
== X3RecJ ~This was your heroism, Sir Mark Harmon. Keep your eyes steady and on me, we will get you patched up.~
== X3RPal ~My wounds are too grievous, maiden bard. I can feel Milil's song. Please take my blade to my family in Baldur's Gate. See that I am not forgotten.~
== X3RecJ ~I...I swear it, Sir Mark Harmon. The gods honor your courage in song.~
== X3RPal ~Protect her well...my time comes.~
DO ~SetGlobal("X3RKillPal","GLOBAL",3)~ EXIT

CHAIN IF ~Dead("X3Ruby")!InPartyAllowDead("X3Rec")Dead("X3Rec")~ THEN X3RPal Ruins2C
~Maiden bard...forgive me...~
DO ~SetGlobal("X3RKillPal","GLOBAL",4)~ EXIT 

CHAIN IF ~Dead("X3Ruby")!InPartyAllowDead("X3Rec")!Dead("X3Rec")~ THEN X3RPal Ruins2D
~My last sight is cursed to see this evil that has been done...Milil forgive me...~
DO ~SetGlobal("X3RKillPal","GLOBAL",2)~ EXIT 

CHAIN IF ~Dead("X3RNec")InParty("X3Rec")Dead("X3Ruby")~ THEN X3RPal Ruins3B 
~You did what I could not, maiden bard. A pity I will not live to see the record you make of your own tale.~
== X3RecJ ~This was your heroism, Sir Mark Harmon. Keep your eyes steady and on me, we will get you patched up.~
== X3RPal ~My wounds are too grievous, maiden bard. I can feel Milil's song. Please take my blade to my family in Baldur's Gate. See that I am not forgotten.~
== X3RecJ ~I...I swear it, Sir Mark Harmon. The gods honor your courage in song.~
== X3RPal ~Protect her well...my time comes.~
DO ~SetGlobal("X3RKillPal","GLOBAL",5)~ EXIT

