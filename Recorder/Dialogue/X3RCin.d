BEGIN X3RCin

// Cindy needs Three Chains:

CHAIN IF ~!IsValidForPartyDialogue("X3Rec")GlobalLT("X3RecSecQuest","GLOBAL",5)~ THEN X3RCin t1
@0
EXIT

/*Note: She might only spawn if the Global is 2, otherwise there is no need for the player to even meet them. */ 
CHAIN IF ~IsValidForPartyDialogue("X3Rec")Global("X3ReBaldurQuest","GLOBAL",2)~ THEN X3RCin t2
@1
== X3RecJ @2
DO ~SetGlobal("X3ReBaldurQuest","GLOBAL",3)~
END 
++ @3 EXTERN X3RecJ RecorderInform
++ @4 EXTERN X3RecJ PlayerInform
++ @5 EXTERN X3RecJ RecorderInform 

CHAIN X3RecJ RecorderInform 
@6
EXTERN X3RCin CindyReact 

CHAIN X3RCin CindyReact
@7
== X3RecJ @8
== X3RCin @9
== X3RecJ @10
== X3RCin @11
END 
++ @12 EXTERN X3RCin Worse 
++ @13 EXTERN X3RCin Credit 
++ @14 EXTERN X3RCin Right 

CHAIN X3RecJ PlayerInform 
@15
END 
++ @16 EXTERN X3RCin CindyReact 
++ @17 EXTERN X3RCin CindyReact 
++ @18 EXTERN X3RCin CindyReact 

CHAIN X3RCin Worse 
@19
EXTERN X3RCin CinGive 

CHAIN X3RCin Credit 
@20
EXTERN X3RCin CinGive 

CHAIN X3RCin Right 
@21
== X3RecJ @22
EXTERN X3RCin CinGive 

CHAIN X3RCin CinGive 
@23
== X3RecJ @24
END 
IF ~Global("X3RecSecQuest","GLOBAL",3)PartyHasItem("X3RSword")~ EXTERN X3RecJ GiveSword 
IF ~OR(2)Global("X3RecSecQuest","GLOBAL",4)!PartyHasItem("X3RSword")~ EXTERN X3RCin KeepSword 

CHAIN X3RecJ GiveSword 
@25
== X3RCin @26
DO ~TakePartyItem("X3RSword")~
== X3RCin @27
END 
++ @28 EXTERN X3RecJ GetOutGood// Good 
++ @29 EXTERN X3RecJ GetOutGood // Good 
++ @30 EXTERN X3RCin GetOutGreedy // BAD END 

CHAIN X3RCin KeepSword 
@31
END 
++ @32 EXTERN X3RecJ GetOutRecorder // Bad 
++ @33 EXTERN X3RCin Defend // Good
++ @34 EXTERN X3RCin GetOutBad // Bad

CHAIN X3RCin GetOutBad 
@35
DO ~SetGlobal("X3RecSecQuest","GLOBAL",5)AddJournalEntry(@30015,QUEST_DONE)IncrementGlobal("X3RecorderApproval","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@37)~ EXIT 

CHAIN X3RCin GetOutGreedy 
@36
== X3RecJ @37
== X3RCin @38
DO ~SetGlobal("X3RecSecQuest","GLOBAL",5)AddJournalEntry(@30015,QUEST_DONE)IncrementGlobal("X3RecorderApproval","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@38)~ EXIT 

CHAIN X3RecJ GetOutRecorder 
@39 
DO ~SetGlobal("X3RecSecQuest","GLOBAL",5)AddJournalEntry(@30015,QUEST_DONE)~ EXIT 

CHAIN X3RCin Defend 
@40
== X3RCin @41
== X3RecJ @42
DO ~SetGlobal("X3RecSecQuest","GLOBAL",6)AddJournalEntry(@30014,QUEST_DONE)IncrementGlobal("X3RecorderApproval","GLOBAL",3)DisplayStringNoNameDlg(Player1,@40)~ EXIT 

CHAIN X3RecJ GetOutGood 
@43
== X3RCin @44
== X3RecJ @45 
DO ~SetGlobal("X3RecSecQuest","GLOBAL",6)AddJournalEntry(@30014,QUEST_DONE)IncrementGlobal("X3RecorderApproval","GLOBAL",6)DisplayStringNoNameDlg(Player1,@41)~ EXIT 

CHAIN IF ~Global("X3RecSecQuest","GLOBAL",5)~ THEN X3RCin GetOut 
@46
EXIT 

CHAIN IF ~Global("X3RecSecQuest","GLOBAL",6)~ THEN X3RCin GetOut 
@47
EXIT 