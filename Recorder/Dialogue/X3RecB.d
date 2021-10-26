BEGIN X3RecB 

//Ajantis 1
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Ajantis")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecAjantis","GLOBAL",0)~ THEN X3RecB X3RecAjantis1
@0
DO ~SetGlobal("X3milyAjantis1","GLOBAL",1)~
== BAJANT @1
== X3RecB @2
= @3
== BAJANT @4 
== X3RecB @5
== BAJANT @6 
EXIT 


//Alora 1
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Alora")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecAlora","GLOBAL",0)~ THEN X3RecB X3RecAlora1
@7
DO ~SetGlobal("X3RecAlora","GLOBAL",1)~
== %ALORA_BANTER% @8
== X3RecB @9
== %ALORA_BANTER% @10
== X3RecB @11
== %ALORA_BANTER% @12 
== X3RecB @13
== %ALORA_BANTER% @14
EXIT 


//Baeloth 
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Baeloth")
!StateCheck("Baeloth",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecBaeloth","GLOBAL",0)~ THEN X3RecB X3RecBaeloth1
@15
DO ~SetGlobal("X3RecBaeloth","GLOBAL",1)~
== BBAELOTH @16
== X3RecB @17
== BBAELOTH @18
EXIT

//Branwen 
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Branwen")
!StateCheck("Branwen",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecBranwen","GLOBAL",0)~ THEN X3RecB X3RecBranwen1
@19
DO ~SetGlobal("X3RecBranwen","GLOBAL",1)~
== %BRANWEN_BANTER% @20
== X3RecB @21
== %BRANWEN_BANTER% @22
= @23
== X3RecB @24
== %BRANWEN_BANTER% @25
EXIT 

//Coran 
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Coran")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecCoran","GLOBAL",0)~ THEN %CORAN_BANTER% X3RecCoran1
@26
DO ~SetGlobal("X3RecCoran","GLOBAL",1)~
== X3RecB @27
== %CORAN_BANTER% @28
== X3RecB @29
== %CORAN_BANTER% @30
== X3RecB @31
== %CORAN_BANTER% @32
== X3RecB @33
EXIT 

// Dorn
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecDorn","GLOBAL",0)~ THEN %DORN_BANTER% X3RecDorn1
@34
DO ~SetGlobal("X3RecDorn","GLOBAL",1)~
== X3RecB @35
== %DORN_BANTER% @36
== X3RecB @37
== %DORN_BANTER% @38
EXIT

//Dynaheir 1
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Dynaheir")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecDynaheir","GLOBAL",0)~ THEN %DYNAHEIR_BANTER% X3RecDynaheir1
@39
DO ~SetGlobal("X3RecDynaheir","GLOBAL",1)~
== X3RecB @40
== %DYNAHEIR_BANTER% @41
== X3RecB @42
== %DYNAHEIR_BANTER% @43 
EXIT 

//Edwin 
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecEdwin","GLOBAL",0)~ THEN X3RecB X3RecEdwin1
@44
DO ~SetGlobal("X3RecEdwin","GLOBAL",1)~
== %EDWIN_BANTER% @45
== X3RecB @46
== %EDWIN_BANTER% @47
== X3RecB @48 
EXIT 

//Eldoth 
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Eldoth")
!StateCheck("Eldoth",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecEldoth","GLOBAL",0)~ THEN %ELDOTH_BANTER% X3RecEldoth1
@49
DO ~SetGlobal("X3RecEldoth","GLOBAL",1)~
== X3RecB @50
== %ELDOTH_BANTER% @51
== X3RecB @52
== %ELDOTH_BANTER% @53
== X3RecB @54
== %ELDOTH_BANTER% @55
== X3RecB @56
EXIT 

//Faldorn 1
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Faldorn")
!StateCheck("Faldorn",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY]) 
Global("X3RecFaldorn","GLOBAL",0)~ THEN %FALDORN_BANTER% X3RecFaldorn1
@57
DO ~SetGlobal("X3RecEldoth","GLOBAL",1)~
== X3RecB @58
== %FALDORN_BANTER% @59
== %FALDORN_BANTER% @60
== X3RecB @61
== %FALDORN_BANTER% @62 
== X3RecB @63
EXIT 

// Garrick 1
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Garrick")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY]) 
Global("X3RecGarrick","GLOBAL",0)~ THEN X3RecB X3RecGarrick1
@64
DO ~SetGlobal("X3RecGarrick","GLOBAL",1)~ 
== %GARRICK_BANTER% @65
== X3RecB @66
== %GARRICK_BANTER% @67
== X3RecB @68
== X3RecB @69
== %GARRICK_BANTER% @70
== X3RecB @71
EXIT 

// Imoen 1
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Imoen")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY]) 
Global("X3RecImoen","GLOBAL",0)~ THEN X3RecB X3RecImoen1
@72
DO ~SetGlobal("X3RecImoen","GLOBAL",1)~
== %IMOEN_BANTER% @73
== X3RecB @74
== %IMOEN_BANTER% @75
== X3RecB @76
== %IMOEN_BANTER% @77 
EXIT 

// Jaheria 1
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY]) 
Global("X3RecJaheira","GLOBAL",0)~ THEN X3RecB X3RecJaheira1
@78
DO ~SetGlobal("X3RecJaheira","GLOBAL",1)~
== %JAHEIRA_BANTER% @79
== X3RecB @80
== %JAHEIRA_BANTER% @81
== X3RecB @82
== %JAHEIRA_BANTER% @83
EXIT 

// Kagain
CHAIN IF ~InParty("Kagain")
See("Kagain")
InParty("X3Rec")
!StateCheck("Kagain",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecKagain","GLOBAL",0)~ THEN %KAGAIN_BANTER% X3RecKagain1
@84
DO ~SetGlobal("X3RecKagain","GLOBAL",1)~
== X3RecB @85
== %KAGAIN_BANTER% @86
== X3RecB @87
== %KAGAIN_BANTER% @88
EXIT 
 
// Khalid 1
CHAIN IF ~InParty("Khalid")
See("Khalid")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecKhalid","GLOBAL",0)~ THEN X3RecB X3RecKhalid1
@89
DO ~SetGlobal("X3RecKhalid","GLOBAL",1)~
== %KHALID_BANTER% @90 
== X3RecB @91
== %KHALID_BANTER% @92
== X3RecB @93
== %KHALID_BANTER% @94
== X3RecB @95
== %KHALID_BANTER% @96 
EXIT

// Kivan 
CHAIN IF ~InParty("Kivan")
See("Kivan")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecKivan","GLOBAL",0)~ THEN %KIVAN_BANTER% X3RecKivan1
@97
DO ~SetGlobal("X3RecKivan","GLOBAL",1)~
== X3RecB @98
== %KIVAN_BANTER% @99
== X3RecB @100
== %KIVAN_BANTER% @101
== X3RecB @102
== %KIVAN_BANTER% @103
EXIT

// Minsc 1
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecMinsc","GLOBAL",0)~ THEN %MINSC_BANTER% X3RecMinsc1
@104
DO ~SetGlobal("X3RecMinsc","GLOBAL",1)~
== X3RecB @105
== %MINSC_BANTER% @106
== X3RecB @107
== %MINSC_BANTER% @108
== X3RecB @109
== %MINSC_BANTER% @110
== X3RecB @111
== %MINSC_BANTER% @112
== X3RecB @113
EXIT

// Montaron
CHAIN IF ~InParty("Montaron")
See("Montaron")
!StateCheck("Montaron",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecMontaron1","GLOBAL",0)~ THEN X3RecB X3RecMontaron1
@114
DO ~SetGlobal("X3RecMontaron1","GLOBAL",1)~
== %MONTARON_BANTER% @115
== X3RecB @116
== %MONTARON_BANTER% @117
== X3RecB @118
== %MONTARON_BANTER% @119
== X3RecB @120
EXIT

// Neera 
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecNeera","GLOBAL",0)~ THEN %NEERA_BANTER% X3RecNeera1
@121
DO ~SetGlobal("X3RecNeera","GLOBAL",1)~
== X3RecB @122
== %NEERA_BANTER% @123
== X3RecB @124
== %NEERA_BANTER% @125
== X3RecB @126
EXIT

// Quayle 1
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
!StateCheck("Quayle",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecQuayle","GLOBAL",0)~ THEN %QUAYLE_BANTER% X3RecQuayle1
@127
DO ~SetGlobal("X3RecQuayle","GLOBAL",1)~
== X3RecB @128
== %QUAYLE_BANTER% @129
== X3RecB @130
== %QUAYLE_BANTER% @131
== X3RecB @132
EXIT

// Rasaad 1

CHAIN IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecRasaad","GLOBAL",0)~ THEN X3RecB X3RecRasaad1
@133
DO ~SetGlobal("X3RecRasaad","GLOBAL",1)~
== %RASAAD_BANTER% @134
== X3RecB @135
== %RASAAD_BANTER% @136
== X3RecB @137
== %RASAAD_BANTER% @138
== X3RecB @139
EXIT

// SAFANA
CHAIN IF ~InParty("Safana")
InParty("X3Rec")
See("X3Rec")
!StateCheck("Safana",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecSafana","GLOBAL",0)~ THEN %SAFANA_BANTER% X3RecSafana1
@140
DO ~SetGlobal("X3RecSafana","GLOBAL",1)~
== X3RecB @141
== %SAFANA_BANTER% @142
== X3RecB @143
== %SAFANA_BANTER% @144
== X3RecB @145
== %SAFANA_BANTER% @146 
EXIT

// Shar-Teel 
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
!StateCheck("Sharteel",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecSharTeel","GLOBAL",0)~ THEN %SHARTEEL_BANTER% X3RecSharteel1
@147
DO ~SetGlobal("X3RecSharTeel","GLOBAL",1)~
== X3RecB @148
== %SHARTEEL_BANTER% @149
== X3RecB @150
== %SHARTEEL_BANTER% @151
EXIT

// Skie 1
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
!StateCheck("Skie",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecSkie","GLOBAL",0)~ THEN %SKIE_BANTER% X3RecSkie1
@152
DO ~SetGlobal("X3RecSkie","GLOBAL",1)~
== X3RecB @153
== %SKIE_BANTER% @154 
== X3RecB @155
== %SKIE_BANTER% @156
== X3RecB @157
== %SKIE_BANTER% @158
EXIT

// Tiax 1
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
!StateCheck("Tiax",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecTiax","GLOBAL",0)~ THEN %TIAX_BANTER% X3RecTiax1
@159 
DO ~SetGlobal("X3RecTiax","GLOBAL",1)~
== X3RecB @160
== %TIAX_BANTER% @161
= @162
== X3RecB @163
== %TIAX_BANTER% @164
EXIT

// VICONIA 
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecViconia","GLOBAL",0)~ THEN %VICONIA_BANTER% X3RecViconia1
@165
DO ~SetGlobal("X3RecViconia","GLOBAL",1)~
== X3RecB @166
== %VICONIA_BANTER% @167
== X3RecB @168
== %VICONIA_BANTER% @169
== X3RecB @170
== %VICONIA_BANTER% @171 
EXIT

// XAN 1
CHAIN IF ~InParty("Xan")
InParty("X3Rec")
See("X3Rec")
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecXan","GLOBAL",0)~ THEN %XAN_BANTER% X3RecXan1
@172
DO ~SetGlobal("X3RecXan","GLOBAL",1)~
== X3RecB @173
== %XAN_BANTER% @174
== X3RecB @175
== %XAN_BANTER% @176
== X3RecB @177
EXIT

// Xzar
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
!StateCheck("Xzar",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecXzar","GLOBAL",0)~ THEN %XZAR_BANTER% X3RecXzar1
@178
DO ~SetGlobal("X3RecXzar","GLOBAL",1)~
== X3RecB @179
== %XZAR_BANTER% @180
== X3RecB @181
== %XZAR_BANTER% @182
== X3RecB @183
EXIT

// Yeslick 1
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecYeslick","GLOBAL",0)~ THEN %YESLICK_BANTER% X3RecYeslick1
@184
DO ~SetGlobal("X3RecYeslick","GLOBAL",1)~
== X3RecB @185
== %YESLICK_BANTER% @186
== X3RecB @187
== %YESLICK_BANTER% @188
== X3RecB @189
== %YESLICK_BANTER% @190
EXIT

//Ajantis 2
CHAIN IF ~InParty("X3Rec")
See("Ajantis")
InParty("Ajantis")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecAjantis","GLOBAL",1)~ THEN X3RecB X3RecAjantis2
@191
DO ~SetGlobal("X3milyAjantis1","GLOBAL",2)~
== BAJANT @192
== X3RecB @193
== BAJANT @194 
== X3RecB @195
= @196
== BAJANT @197
== X3Rec @198
== BAJANT @199 
EXIT 

// Alora 2 
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Alora")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecAlora","GLOBAL",1)~ THEN %ALORA_BANTER% X3RecAlora2
@200
DO ~SetGlobal("X3RecAlora","GLOBAL",2)~
== X3RecB @201
== %ALORA_BANTER% @202
== X3RecB @203
== %ALORA_BANTER% @204 
== X3RecB @205
== %ALORA_BANTER% @206
== X3RecB @207
EXIT 

//Dynaheir 2
CHAIN IF ~InParty("X3Rec")
See("Dynaheir")
InParty("Dynaheir")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecDynaheir","GLOBAL",1)~ THEN X3RecB X3RecDynaheir2
@208
DO ~SetGlobal("X3RecDynaheir","GLOBAL",2)~
== %DYNAHEIR_BANTER% @209
= @210
== X3RecB @211
== %DYNAHEIR_BANTER% @212
== X3RecB @213
== %DYNAHEIR_BANTER% @214 
EXIT 

//Faldorn 2
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Faldorn")
!StateCheck("Faldorn",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY]) 
Global("X3RecFaldorn","GLOBAL",1)~ THEN %FALDORN_BANTER% X3RecFaldorn2
@215
DO ~SetGlobal("X3RecEldoth","GLOBAL",2)~
== X3RecB @216
== %FALDORN_BANTER% @217
== %FALDORN_BANTER% @218
== X3RecB @219
== %FALDORN_BANTER% @220 
EXIT 

// Garrick 2
CHAIN IF ~InParty("X3Rec")
See("Garrick")
InParty("Garrick")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY]) 
Global("X3RecGarrick","GLOBAL",1)~ THEN X3RecB X3RecGarrick2
@221
DO ~SetGlobal("X3RecGarrick","GLOBAL",2)~ 
== %GARRICK_BANTER% @222
== X3RecB @223
== %GARRICK_BANTER% @224
== X3RecB @225
== %GARRICK_BANTER% @226
== X3RecB @227
EXIT 

// Imoen 2
CHAIN IF ~InParty("X3Rec")
See("Imoen")
InParty("Imoen")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY]) 
Global("X3RecImoen","GLOBAL",1)~ THEN X3RecB X3RecImoen2
@228
DO ~SetGlobal("X3RecImoen","GLOBAL",2)~
== %IMOEN_BANTER% @229
== X3RecB @230
== %IMOEN_BANTER% @231
== X3RecB @232
== %IMOEN_BANTER% @233
== X3RecB @234
== %IMOEN_BANTER% @235 
EXIT 


// Jaheria 2
CHAIN IF ~InParty("X3Rec")
See("Jaheria")
InParty("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY]) 
Global("X3RecJaheira","GLOBAL",1)~ THEN X3RecB X3RecJaheira2
@236
DO ~SetGlobal("X3RecJaheira","GLOBAL",2)~
== %JAHEIRA_BANTER% @237
== X3RecB @238
== %JAHEIRA_BANTER% @239
== X3RecB @240
== %JAHEIRA_BANTER% @241
EXIT 

// Khalid 2
CHAIN IF ~InParty("Khalid")
See("Khalid")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecKhalid","GLOBAL",1)~ THEN X3RecB X3RecKhalid2
@242
DO ~SetGlobal("X3RecKhalid","GLOBAL",2)~
== %KHALID_BANTER% @243 
== X3RecB @244
== %KHALID_BANTER% @245
== X3RecB @246
== %KHALID_BANTER% @247
EXIT

// Minsc 2
CHAIN IF ~InParty("X3Rec")
InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecMinsc","GLOBAL",1)~ THEN X3RecB X3RecMinsc2
@248
DO ~SetGlobal("X3RecMinsc","GLOBAL",2)~
== %MINSC_BANTER% @249
== X3RecB @250
== X3RecB @251
== %MINSC_BANTER% @252
== X3RecB @253
EXIT

// Quayle 2
CHAIN IF ~InParty("X3Rec")
InParty("Quayle")
See("Quayle")
!StateCheck("Quayle",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecQuayle","GLOBAL",1)~ THEN X3RecB X3RecQuayle2
@254
DO ~SetGlobal("X3RecQuayle","GLOBAL",2)~
== %QUAYLE_BANTER% @255
== X3RecB @256
== %QUAYLE_BANTER% @257
== X3RecB @258
== %QUAYLE_BANTER% @259
EXIT

// Rasaad 2
CHAIN IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecRasaad","GLOBAL",1)~ THEN X3RecB X3RecRasaad2
@260
DO ~SetGlobal("X3RecRasaad","GLOBAL",2)~
== %RASAAD_BANTER% @261
== X3RecB @262
== %RASAAD_BANTER% @263
== X3RecB @264
== %RASAAD_BANTER% @265
== X3RecB @266
== %RASAAD_BANTER% @267
== X3RecB @268
EXIT

// Skie 2
CHAIN IF ~InParty("X3Rec")
InParty("Skie")
See("X3Rec")
!StateCheck("Skie",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecSkie","GLOBAL",1)~ THEN X3RecB X3RecSkie2
@269
DO ~SetGlobal("X3RecSkie","GLOBAL",2)~
== %SKIE_BANTER% @270
== X3RecB @271 
== %SKIE_BANTER% @272
== X3RecB @273
== %SKIE_BANTER% @274
== X3RecB @275
== %SKIE_BANTER% @276
== X3RecB @277
== %SKIE_BANTER% @278
EXIT

// Tiax 2
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
!StateCheck("Tiax",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecTiax","GLOBAL",1)~ THEN %TIAX_BANTER% X3RecTiax2
@279 
DO ~SetGlobal("X3RecTiax","GLOBAL",2)~
== X3RecB @280
== %TIAX_BANTER% @281
= @282
== X3RecB @283
== %TIAX_BANTER% @284
EXIT

// XAN 2
CHAIN IF ~InParty("Xan")
InParty("X3Rec")
See("Xan")
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecXan","GLOBAL",1)~ THEN X3RecB X3RecXan2
@285
DO ~SetGlobal("X3RecXan","GLOBAL",2)~
== %XAN_BANTER% @286
== X3RecB @287
== %XAN_BANTER% @288
== X3RecB @289
== %XAN_BANTER% @290
== X3RecB @291
== %XAN_BANTER% @292
EXIT

// Yeslick 2
CHAIN IF ~InParty("X3Rec")
InParty("Yeslick")
See("Yeslick")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecYeslick","GLOBAL",1)~ THEN X3RecB X3RecYeslick2
@293
DO ~SetGlobal("X3RecYeslick","GLOBAL",2)~
== %YESLICK_BANTER% @294
== X3RecB @295
== %YESLICK_BANTER% @296
== X3RecB @297
== %YESLICK_BANTER% @298
EXIT

// Alora 3
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Alora")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecAlora","GLOBAL",2)~ THEN %ALORA_BANTER% X3RecAlora3
@299
DO ~SetGlobal("X3RecAlora","GLOBAL",3)~
== X3RecB @300
== %ALORA_BANTER% @301
= @302
== X3RecB @303
== %ALORA_BANTER% @304 
== X3RecB @305
= @306
== %ALORA_BANTER% @307
== X3RecB @308
== %ALORA_BANTER% @309
== X3RecB @310
EXIT


// Imoen 3
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Imoen")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY]) 
Global("X3RecImoen","GLOBAL",2)~ THEN X3RecB X3RecImoen3
@311
DO ~SetGlobal("X3RecImoen","GLOBAL",3)~
== %IMOEN_BANTER% @312
== X3RecB @313
== %IMOEN_BANTER% @314
== X3RecB @315
== %IMOEN_BANTER% @316 
EXIT 

// Minsc 3 
CHAIN IF ~InParty("X3Rec")
InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecMinsc","GLOBAL",2)~ THEN X3RecB X3RecMinsc3
@317
DO ~SetGlobal("X3RecMinsc","GLOBAL",3)~
== %MINSC_BANTER% @318
== X3RecB @319
== %MINSC_BANTER% @320
== X3RecB @321
== %MINSC_BANTER% @322
== X3RecB @323
== %MINSC_BANTER% @324
== X3RecB @325
== %MINSC_BANTER% @326
== X3RecB @327
EXIT

// Quayle 3
CHAIN IF ~InParty("X3Rec")
InParty("Quayle")
See("Quayle")
!StateCheck("Quayle",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecQuayle","GLOBAL",2)~ THEN X3RecB X3RecQuayle3
@328
DO ~SetGlobal("X3RecQuayle","GLOBAL",3)~
== %QUAYLE_BANTER% @329
== X3RecB @330
== %QUAYLE_BANTER% @331
== X3RecB @332
== %QUAYLE_BANTER% @333
== X3RecB @334
EXIT

// Skie 3
CHAIN IF ~InParty("X3Rec")
InParty("Skie")
See("X3Rec")
!StateCheck("Skie",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecSkie","GLOBAL",2)~ THEN X3RecB X3RecSkie3
@335
DO ~SetGlobal("X3RecSkie","GLOBAL",3)~
== %SKIE_BANTER% @336
== X3RecB @337 
== %SKIE_BANTER% @338
== X3RecB @339
== %SKIE_BANTER% IF ~IsValidForPartyDialogue("Eldoth")~ THEN @340
== %ELDOTH_BANTER% IF ~IsValidForPartyDialogue("Eldoth")~ THEN @341
== %SKIE_BANTER% IF ~IsValidForPartyDialogue("Eldoth")~ THEN@342
== X3RecB IF ~IsValidForPartyDialogue("Eldoth")~ THEN @343
EXIT

// Tiax 3
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
!StateCheck("Tiax",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecTiax","GLOBAL",2)~ THEN %TIAX_BANTER% X3RecTiax3
@344 
DO ~SetGlobal("X3RecTiax","GLOBAL",3)~
== X3RecB @345
== %TIAX_BANTER% @346
== X3RecB @347
== %TIAX_BANTER% @348
== X3RecB @349
== %TIAX_BANTER% @350
EXIT

// Xan 3 
CHAIN IF ~InParty("Xan")
InParty("X3Rec")
See("Xan")
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecXan","GLOBAL",2)~ THEN X3RecB X3RecXan3
@351
DO ~SetGlobal("X3RecXan","GLOBAL",3)~
== %XAN_BANTER% @352
== X3RecB @353
== %XAN_BANTER% @354
== X3RecB @355
== %XAN_BANTER% @356
== X3RecB @357
== %XAN_BANTER% @358
== X3RecB @359
EXIT

// Alora 4 
CHAIN IF ~InParty("X3Rec")
See("Alora")
InParty("Alora")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3KaleAlora","GLOBAL",4) 
Global("X3RecAlora","GLOBAL",3)~ THEN X3RecB X3RecAlora4
@360
DO ~SetGlobal("X3RecAlora","GLOBAL",4)~
== %ALORA_BANTER% @361
== X3RecB @362
== %ALORA_BANTER% @363 
== X3RecB @364
== %ALORA_BANTER% @365
== X3RecB @366
== %ALORA_BANTER% @367
== X3RecB @368
EXIT

// Imoen 4
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("Imoen")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY]) 
Global("X3RecImoen","GLOBAL",3)~ THEN X3RecB X3RecImoen4
@369
DO ~SetGlobal("X3RecImoen","GLOBAL",4)~
== %IMOEN_BANTER% @370
== X3RecB @371
== %IMOEN_BANTER% @372
== X3RecB @373
EXIT 

// Quayle 4: Quayle decides against being a lecturer, and decides that he'd rather tutor a singular pupil. 
CHAIN IF ~InParty("X3Rec")
InParty("Quayle")
See("X3Rec")
!StateCheck("Quayle",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3RecQuayle","GLOBAL",3)~ THEN %QUAYLE_BANTER% X3RecQuayle4
@374
DO ~SetGlobal("X3RecQuayle","GLOBAL",4)~
== X3RecB @375
== %QUAYLE_BANTER% @376
== X3RecB @377
== %QUAYLE_BANTER% @378
== X3RecB @379
EXIT




 