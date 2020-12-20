BEGIN X3RARN

// Arnold should have three: 

CHAIN IF ~IsValidForPartyDialogue("X3Rec")Global("X3ReBaldurQuest","GLOBAL",2)~ THEN X3RArn ArnoldRecorder
~It is good to see you Recorder, though Cindy will wish to speak to you. Come speak to me afterwards.~
== X3RecJ ~I will, Arnold.~
EXIT 

CHAIN IF ~IsValidForPartyDialogue("X3Rec")GlobalGT("X3ReBaldurQuest","GLOBAL",2)Global("X3ReArnoldCon","GLOBAL",0)~ THEN X3RArn ArnoldRecorder
~I heard it all. I am sorry, Recorder. She is only hurt, I will console her as best as I can.~
== X3RecJ ~I knew the news would hurt her, I just did not expect such barbs.~
== X3RArn ~Do not despair. Give her time, and trust me to take care of her. Just take care of yourself. I will see Mark's memory honored.~
== X3RecJ ~Thank you so much. I appreciate everything.~
== X3RArn ~I have faith in you. May the gods watch over your travels.~
DO ~SetGlobal("X3ReArnoldCon","GLOBAL",1)~
EXIT 

CHAIN IF ~True()~ THEN X3RArn General 
~It is good to see adventurers. If I did not have a son to care for I would follow your steps.~ 
EXIT 
