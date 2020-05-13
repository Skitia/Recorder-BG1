BEGIN X3Bryce

CHAIN IF ~IsValidForPartyDialogue("X3Rec")Global("X3RecBryce","GLOBAL",1)~ THEN X3Bryce BryceRecorder
~Why have you come back gnome? Leave, you fool! I most certainly am getting out of here!~
== X3RecJ ~Bryce, you are okay! Where is Mark and the others?~
== X3Bryce ~Do I look okay?! Hawk is dead. Our leader is *dead*. Damn wolves finished what the dead started on him. Ruby and Mark ran ahead like fools! I'm the only one left!~
END 
++ ~Calm down, and tell me exactly what is going on.~ + 1.A 
++ ~Run if you like. But I'm going to investigate this.~ + 1.B 
++ ~And you will be dead next if you don't get out of my way.~ DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ + 1.B

CHAIN X3Bryce 1.A 
~We were betrayed by Harris. I was only along for the money to protect the group, myself, I did not care about any dusty book. Dirty necromancer summoned undead to keep the rest of us from advancing. He wants everything for himself, and I say let him have it!~
== X3RecJ ~We are not going to let that happen. Quickly, tell us where he is, so we can help the others.~
== X3Bryce ~I don't know, somewhere further in this damn place. Look, good on you for getting help, but you're just going to get them killed. Get out of here if you know what's good for you.~
END 
++ ~You'll find the exit safe. Get out of here.~ + 1.B 
++ ~Just go. Your cowardliness is stinking up the air.~ + 1.B  
++ ~We'll take it slow. We won't be careless.~ + 1.B 

CHAIN X3Bryce 1.B 
~If you are so intent to get yourself killed, just go deeper into this place.~
== X3RecJ ~We will get justice for the fallen, Bryce. I promise.~
== X3Bryce ~I don't care. I won't be seeing you again, one way or the other. I am out of here!~
DO ~EscapeArea()SetGlobal("X3RecBryce","GLOBAL",2)~ // AddJournalEntry()
EXIT 


CHAIN IF ~IsValidForPartyDialogue("X3Rec")Global("X3RecBryce","GLOBAL",1)~ THEN X3Bryce BryceAlone
~Fools, depart! Only danger and death lie ahead, and I am getting far from it!~
END 
++ ~Calm down, and tell me exactly what is going on.~ + 2.A 
++ ~Run if you like. But I'm going to investigate this.~ + 2.B 
++ ~And you will be dead next if you don't get out of my way.~ + 2.B 

CHAIN X3Bryce 2.A 
~We were betrayed by Harris. Dirty necromancer summoned undead to keep the rest of us from advancing. He wants everything for himself, and I say let him have it!~
== X3Bryce ~I don't know what happened to the gnome bard, but the woman Ruby and the paladin Mark were foolish enough to run after the necromancer.~
== X3Bryce ~I am not sticking around. I am *leaving*. And you will too if you know what's good for you.~
END 
++ ~You'll find the exit safe. Get out of here.~ + 2.B 
++ ~Just go. Your cowardliness is stinking up the air.~ + 2.B  
++ ~We'll take it slow. We won't be careless.~ + 2.B 

CHAIN X3Bryce 2.B 
~If you are so intent to get yourself killed, just go deeper into this place.~
== X3Bryce ~I don't care. I won't be seeing you again, one way or the other. I am out of here!~
DO ~EscapeArea()SetGlobal("X3RecBryce","GLOBAL",2)~ // AddJournalEntry()
EXIT 