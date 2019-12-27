BEGIN X3Ruby

// Necromancer Alive. 
CHAIN IF ~!Dead("X3RNec")~ THEN X3Ruby t1R.A 
~Not now!~
EXIT 

CHAIN IF ~Dead("X3RNec")OR(2)Global("X3RubyQuest","GLOBAL",1)Global("X3RecPalQuest","GLOBAL",3)~ THEN X3Ruby t2
~I will linger here a time and mourn...be safe on your travels~
EXIT 

//Necromancer Dead, Recorder in Party. 
CHAIN IF ~Dead("X3RNec")InParty("X3Rec")~ THEN X3Ruby t3
~He's dead. It won't bring back my love or the others, but it's good enough.~
DO ~SetGlobal("X3RubyQuest","GLOBAL",1)~
END 
IF ~Dead("X3RPal")~ EXTERN X3RecJ tDead 
IF ~!Dead("X3RPal")~ EXTERN X3RecJ tAlive

// Necromancer Dead, Recorder not in party.
CHAIN IF ~Dead("X3RNec")!InParty("X3Rec")~ THEN X3Ruby t4
~He's dead. It won't bring back my love or the others, but it's good enough.~
DO ~SetGlobal("X3RubyQuest","GLOBAL",1)~
END 
+~!Dead("X3RPal")~+ ~I'm sorry for your loss.~ + t4.A 
+~!Dead("X3RPal")~+ ~What of the paladin, Sir Mark?~ + t4.A 
+~!Dead("X3RPal")~+ ~Good riddance to him.~ + t4.A
+~Dead("X3RPal")~+ ~I'm sorry for your loss.~ + t4.B  
+~Dead("X3RPal")~+ ~What of the paladin, Sir Mark?~ + t4.B  
+~Dead("X3RPal")~+ ~Good riddance to him.~ + t4.B

CHAIN X3Ruby t4.A
~Ye-, Sir Mark? Sir Mark!~
== X3RPal ~My injuries are...too great. It seems my ballad will end in tragedy.~
== X3Ruby ~Do not be stubborn! I have a potion...~
== X3RPal ~But not...the time. Please, stranger take this blade...find and give it to the maiden bard. Milil bless you for having the strength...to do what I could not...~
== X3Ruby ~He's...he's passed on. I...I need to stay here for a time and mourn. I won't forget what happened here, or your help today. Thank you.~
DO ~SetGlobal("X3RKillPal","GLOBAL",2)~ 
EXIT 



CHAIN X3Ruby t4.B 
~Sir Mark...he didn't make it. He did not deserve this. None of us did. Good riddance to Harris. May he rot in this place!~
== X3Ruby ~I...I need some time alone. This sates my anger but not my sorrow. I won't forget what happened here, or your assistance. Thank you.~
DO ~~ 
EXIT 

CHAIN X3RecJ tDead 
~Sir Mark...he's...he's passed on.~
== X3Ruby ~I'm sorry, bard. It seems Harris takes one more soul for his greed.~
EXTERN X3RecJ tDead2 

CHAIN X3RecJ tDead2 
~*Sniffle*.~
== X3Ruby ~I knew that not all of us may survive my beloved's expedition, but this... is devastating.~
END 
++ ~What will you do now?~ EXTERN X3Ruby tD.1 
++ ~I am sorry. I did all I could.~ EXTERN X3Ruby tD.1 
++ ~Glory always comes with risk.~ EXTERN X3Ruby tD.1

CHAIN X3Ruby tD.1 
~I will see to the fallen and remain here for a time. Perhaps something can be found so they at least did not die in vain.~
== X3Ruby ~You need not stay with me, Recorder. In fact I would prefer to  be alone...it will be easier for me to deal with what has passed.~
== X3RecJ ~*Sigh*. if that is what you wish. If you do not mind, may I stay with you, <CHARNAME>, on your travels? I don't know where else to go right now. I can barely think.~
END 
++ ~I'd be glad to have you.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ EXTERN X3RecJ tD.2 
++ ~If that is what you want.~  EXTERN X3RecJ tD.2
++ ~I think you should take time for yourself for now.~ EXTERN X3RecJ tD.3
++ ~Not a chance. I did my part and that's it.~ DO ~IncrementGlobal("X3RecJorderApproval","GLOBAL",-3)~ EXTERN X3RecJ tD.4

CHAIN X3RecJ tD.2 
~Thank you! I will do my part for the tales you craft, and record them if you don't mind. I still have so much to see and learn.~
== X3Ruby ~Be well, bard. Perhaps we will meet again.~
DO ~~ 
EXIT 

CHAIN X3RecJ tD.3 
~I think you are right. If...if you ever need me, I'll be at the Temple of Garl in the Friendly Arm Inn then. The priestess is there is so kind, and I will find some comfort there. Farewell, and be careful.~ [X3RBye]
DO ~~ 
EXIT 

CHAIN X3RecJ tD.4 
~*Sigh*. If you change your mind, I'll be at the Temple of Garl in the Friendly Arm Inn. Farewell, I guess.~
DO ~MoveGlobal("AR2304","X3Rec",[431.243])AddexperienceParty(1200)~ 
EXIT 

CHAIN X3RecJ tAlive 
~Where is Sir Mark? Is he okay?!~
== X3RPal ~I am afraid..my tale ends here, maiden lark.~
== X3RecJ ~Don't say that. Keep your eyes steady and on me, we will get you patched up.~
== X3RPal ~My wounds are too grievous, maiden bard. I can feel Milil's song. Please take my blade. See that I am not forgotten.~
== X3RecJ ~I...I swear it, Sir Mark Harmon. The gods honor your courage in song.~
== X3RPal ~Protect her well...my time comes.~
DO ~SetGlobal("X3RKillPal","GLOBAL",6)~
EXTERN X3RecJ tDead2 