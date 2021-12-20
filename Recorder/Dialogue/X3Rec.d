BEGIN X3Rec

/* Note there are a lot more ways to lose than gain approval. This is fine, approval should be a fluid system and sometimes the player may offend Recorder unknowingly.*/

//Candlekeep Style Quest. (Note the long text blocks). It's impossible to lose approval, and this can net 9 approval to start the character off.

CHAIN IF ~AreaCheck("%bg1_eet_symbol%2600")Global("X3RecCandleQuest","GLOBAL",0)~ THEN X3Rec CandleTalk 
@0
DO ~MakeGlobal()SetGlobal("X3RecCandleQuest","GLOBAL",1)AddJournalEntry(@10001,QUEST)~
EXIT 

CHAIN IF ~AreaCheck("%bg1_eet_symbol%2600")Global("X3RecCandleQuest","GLOBAL",2)~ THEN X3Rec CandleTalk1 
@1
DO ~AddJournalEntry(@10003,QUEST_DONE)AddexperienceParty(50)IncrementGlobal("X3RecorderApproval","GLOBAL",9)DisplayStringNoNameDlg(Player1,@42)GiveItem("X3RPOT1",Player1)ActionOverride("X3RPal",EscapeArea())EscapeArea()~
EXIT 

CHAIN IF ~AreaCheck("%bg1_eet_symbol%2600")Global("X3RecCandleQuest","GLOBAL",1)~ THEN X3Rec CandleTalk2 
@2
EXIT 

// Regular Style Second Quest/PreJoin.

CHAIN IF ~Global("X3RecPalQuest","GLOBAL",0)~ THEN X3Rec b1 
@3
END 
+~InParty("Imoen")InMyArea("Imoen")!StateCheck("Imoen",CD_STATE_NOTVALID)~+ @4 EXTERN IMOEN2 I1
+~InParty("Imoen")InMyArea("Imoen")!StateCheck("Imoen",CD_STATE_NOTVALID)~+ @5 EXTERN IMOEN2 I1 
+~InParty("Imoen")InMyArea("Imoen")!StateCheck("Imoen",CD_STATE_NOTVALID)~+ @6 EXTERN IMOEN2 I1
+~OR(3)!InParty("Imoen")!InMyArea("Imoen")StateCheck("Imoen",CD_STATE_NOTVALID)~+ @4 EXTERN X3Rec b2
+~OR(3)!InParty("Imoen")!InMyArea("Imoen")StateCheck("Imoen",CD_STATE_NOTVALID)~+ @5 EXTERN X3Rec b2
+~OR(3)!InParty("Imoen")!InMyArea("Imoen")StateCheck("Imoen",CD_STATE_NOTVALID)~+ @6 EXTERN X3Rec b2
+~InParty("Imoen")InMyArea("Imoen")!StateCheck("Imoen",CD_STATE_NOTVALID)~+ @7 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ EXTERN IMOEN2 I2
+~OR(3)!InParty("Imoen")!InMyArea("Imoen")StateCheck("Imoen",CD_STATE_NOTVALID)~+ @7 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ EXTERN X3Rec b2 

CHAIN IMOEN2 I2 
@8
EXTERN X3Rec b2 

CHAIN X3Rec b2 
@9
== X3Rec @10
END 
++ @11 EXTERN X3Rec b7
++ @12 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ EXTERN X3Rec b4
++ @13 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)~ EXTERN X3Rec b5 
++ @14 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ EXTERN X3Rec b6
++ @15 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-9)~ EXTERN X3Rec b6 

CHAIN IMOEN2 I1 
@16 
EXTERN X3Rec b2

CHAIN X3Rec b6
@17
DO ~AddJournalEntry(@10005, QUEST)SetGlobal("X3RecPalQuest","GLOBAL",1)SetGlobal("X3RecPalRejQuest","GLOBAL",1)MoveToPoint([3036.626])~ EXIT // Recorder will move to just inside the ruins. Initialize Quest, set rejection variable online.  

CHAIN X3Rec b5 
@18
END 
++ @19  EXTERN X3Rec b7
++ @12 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ EXTERN X3Rec b4
++ @14 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ EXTERN X3Rec b6
++ @15 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-9)~ EXTERN X3Rec b6 

CHAIN X3Rec b4 
@20
== X3Rec @21
END 
++ @22  EXTERN X3Rec b7
++ @23 EXTERN X3Rec b4.1
++ @24 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ EXTERN X3Rec b9
++ @25 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ EXTERN X3Rec b6

CHAIN X3Rec b4.1 
@26
END 
++ @27 EXTERN X3Rec b3
++ @28  EXTERN X3Rec b7
++ @29 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ EXTERN X3Rec b9
++ @30 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ EXTERN X3Rec b6

CHAIN X3Rec b7
@31
== X3Rec @32
END 
++ @33 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ EXTERN X3Rec b9
++ @34 EXTERN X3Rec b8 
++ @35 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ EXTERN X3Rec b6

CHAIN X3Rec b3 
@36
END
++ @37 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ EXTERN X3Rec b9
++ @38 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ EXTERN X3Rec b8 //Recorder is prideful, sometimes doting-ness can result in a loss of approval.
++ @39 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)~ EXTERN X3Rec b8 //

CHAIN X3Rec b8 
@40
DO ~AddJournalEntry(@10004, QUEST)SetGlobal("X3RecPalQuest","GLOBAL",1)~ // Recorder can stay wherever she is. Initialize Quest. 
EXIT 

CHAIN X3Rec b9 
@41
DO ~AddJournalEntry(@10004, QUEST)SetGlobal("X3RecPalQuest","GLOBAL",1)JoinParty()~
EXIT 

// Recorder NOT In Party, has never joined, Sir Mark Harmon Not Dead, Party Rejected her initially. 
CHAIN IF ~!Dead("X3RPal")Global("X3RecPalRejQuest","GLOBAL",1)Global("X3RecPalQuest","GLOBAL",1)~ THEN X3Rec R1 
@42
END 
++ @43 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)SetGlobal("X3RecPalRejQuest","GLOBAL",2)~ EXTERN X3Rec R2
++ @44 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)SetGlobal("X3RecPalRejQuest","GLOBAL",2)~ EXTERN X3Rec R3
++ @45 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)SetGlobal("X3RecPalRejQuest","GLOBAL",2)~ EXTERN X3Rec R4

CHAIN X3Rec R4 
@46
EXIT 

CHAIN X3Rec R3 
@40
EXIT 

CHAIN X3Rec R2 
@47
DO ~JoinParty()~
EXIT 

// Recorder NOT In Party, has never joined, Sir Mark Harmon Not Dead

CHAIN IF ~!Dead("X3RPal")!Global("X3RecPalRejQuest","GLOBAL",1)~ THEN X3Rec Q1 
@48
END
++ @49 EXIT 
++ @50 EXTERN X3Rec R2 
++ @51 EXIT 

// Quest Complete, but has not been told yet.
CHAIN IF ~Dead("X3RPal")Global("X3RecPalQuest","GLOBAL",2)~ THEN X3Rec Q2
@52
END
++ @53  EXTERN X3Rec Q2.5
++ @54 EXTERN X3Rec Q2.5
++ @55  EXTERN X3Rec Q2.5

CHAIN X3Rec Q2.5 
@56
END 
+~PartyHasItem("X3RSword")~+ @57 DO ~TakePartyItem("X3RSword")~ + Q3 
++ @58 + Q3 
++ @59 + Q3 

CHAIN X3Rec Q3 
@60
== X3Rec @61
== X3Rec @62
== X3Rec @63
END
++ @64 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",3)~ EXTERN X3Rec Q4
++ @65 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-3)~ EXTERN X3Rec Q5
++ @66 EXTERN X3Rec Q6
++ @67 EXTERN X3Rec Q7
++ @68 DO ~IncrementGlobal("X3RecorderApproval","GLOBAL",-6)~ EXTERN X3Rec Q6 

CHAIN X3Rec Q4 
@69
DO ~JoinParty()AddJournalEntry(@10008,QUEST_DONE)AddJournalEntry(@20010,INFO)SetGlobal("X3RecPalQuest","GLOBAL",3)SetGlobal("X3RecKickedOut","GLOBAL",0)AddexperienceParty(1200)~
EXIT 

CHAIN X3Rec Q5 
@70
DO ~JoinParty()AddJournalEntry(@10008,QUEST_DONE)AddJournalEntry(@20010,INFO)SetGlobal("X3RecPalQuest","GLOBAL",3)SetGlobal("X3RecKickedOut","GLOBAL",0)AddexperienceParty(1200)~
EXIT 

CHAIN X3Rec Q6 
@71
== X3Rec @72
DO ~MoveGlobal("%bg1_eet_symbol%2304","X3Rec",[431.243])AddJournalEntry(@10018,QUEST_DONE)SetGlobal("X3RecPalQuest","GLOBAL",3)AddexperienceParty(1200)~
EXIT 

CHAIN X3Rec Q7 
@73
EXTERN X3Rec Q6


CHAIN IF ~Global("X3RecPalQuest","GLOBAL",3)~ THEN X3Rec QD1 
@74
END 
++ @75 EXTERN X3Rec QD2 
++ @76 EXTERN X3Rec QD3
++ @77 EXTERN X3Rec QD3

CHAIN X3Rec QD2 
@69
DO ~JoinParty()AddJournalEntry(@20010,INFO)~
EXIT 

CHAIN X3Rec QD3 
@78
EXIT 



