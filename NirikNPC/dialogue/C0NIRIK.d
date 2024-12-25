BEGIN C0NIRIK

/*
== O#NELLA IF ~IsValidForPartyDialog("O#NELLA")~ THEN ~Nirik, there is no need to be so formal. <PLAYER1> is a trustworthy companion of mine.~
== C0NIRIK IF ~IsValidForPartyDialog("O#NELLA")~ THEN ~Oh, Nella! I'm glad you've returned safely to Kuldahar. I feared that the avalanche.~
== O#NELLA IF ~IsValidForPartyDialog("O#NELLA")~ THEN ~Thank you, my friend. It is good to be back.~
== C0NIRIK IF ~IsValidForPartyDialog("O#NELLA")~ THEN ~Erm, as I was saying, however. I'd be more than willing to help.~
== O#NELLA IF ~IsValidForPartyDialog("O#NELLA")~ THEN ~Nirik is an talented student of master Arundel, <PLAYER1>. He is two years my junior in training, yet I would consider him my equal.~
== C0NIRIK IF ~IsValidForPartyDialog("O#NELLA")~ THEN ~Please, Nella! I do not deserve such praise. We are all simply servants of Nature.~
*/
INTERJECT DARUNDEL 45 C0NirikIntroduction
== DARUNDEL IF ~InMyArea("C0Nirik")~ THEN ~Ah... and before I forget, my apprentice Nirik here has expressed an interest in venturing the Vale and seeking the source of evil for some time now. If you are in need of assistance, he would be willing to join you in the journey.~
== C0NIRIK ~Erm, yes. It is as master Arundel says... I would be glad to assist.~ [C0NIR101]
== DARUNDEL ~Nirik is a quiet sort, but he is one of my finest acolytes. He is quite capable, I assure you.~
EXTERN DARUNDEL 46

CHAIN IF WEIGHT #-1 ~NumTimesTalkedTo(0)~ THEN C0NIRIK n1
~Hello.~ [C0NIR100]
END
++ ~Hello to you too. Your name was Nirik, right?~ + n1.1
++ ~You're Arundel's apprentice, aren't you?~ + n1.2
++ ~That's it? You're not exactly the outspoken sort.~ + n1.3
++ ~I'm sorry, but I don't have the time to to talk to you right now.~ EXIT

CHAIN C0NIRIK n1.1
~Ah, um... yes, that is correct.~
EXTERN C0NIRIK n1.2

CHAIN C0NIRIK n1.2
~Nirik, sir. Nirik of the Bannerstone clan, and the newest apprentice to archdruid Arundel, sir. I will be glad to assist you on the journey to the Vale, if you would allow it!~ [C0NIR102]
END
+ ~!Race(Player1,DWARF)~ + ~You're a rather young dwarf. What are you doing away from your clan?~ + n1.4
+ ~Race(Player1,DWARF)~ + ~You're rather young, kinsman. What are you doing away from your clan?~ + n1.4
+ ~Gender(Player1,FEMALE)~ + ~I'm not a 'sir', Nirik. Please stop referring to me as one.~ + n1.a
++ ~I would be happy to accept your aid, Nirik.~ + n1.5
++ ~I'm afraid I don't need your help.~ EXIT

CHAIN C0NIRIK n1.a
~O–oh, of course! I apologize.~
END
+ ~!Race(Player1,DWARF)~ + ~You're a rather young dwarf. What are you doing away from your clan?~ + n1.4
+ ~Race(Player1,DWARF)~ + ~You're rather young, kinsman. What are you doing away from your clan?~ + n1.4
++ ~I would be happy to accept your aid, Nirik.~ + n1.5
++ ~I'm afraid I don't need your help.~ EXIT

CHAIN C0NIRIK n1.3
~I–I beg your pardon! I am not too accustomed to strangers.~
EXTERN C0NIRIK n1.2

CHAIN C0NIRIK n1.4
~That, erm, is a story I am not too fond of. I was... not suitable as a warrior for my clan, and sought my calling elsewhere until I apprenticed myself to master Arundel.~
= ~He has been my teacher for several years now, and I have studied the balance and Nature under him. I am but a novice compared to my master, but if you are going to the Vale, what knowledge I have may be of use.~
END
++ ~You're not much of a fighter, then?~ + n1.6
++ ~Then join me, Nirik. Your skills will be valuable.~ + n1.5
++ ~Perhaps another time, Nirik.~ EXIT

CHAIN C0NIRIK n1.6
~No, I am not, though it shames me to admit it. I have some skill in healing and druidic magic, but my combat skills are not my forte. If I am not what you need, then please disregard my request to assist you.~
END
++ ~A druid's skills could be helpful. Join me, Nirik.~ + n1.5
++ ~I may return another time, Nirik. Farewell for now.~ EXIT
++ ~Then you're useless to me. Begone.~ EXIT

CHAIN C0NIRIK n1.5
~Thank you for allowing me to join you. I will do my best to aid in finding the evil in the Vale of Shadows. Master Arundel has even granted me his enchanted club, blessed with the powers of Nature to strike down all that is unnatural.~ [C0NIR103]
= ~I am not much of a fighter, but I can still use it if necessary. I would prefer to rely on my teachings, however. Please, lead on.~ [C0NIR104]
DO ~JoinParty()~ EXIT

CHAIN IF WEIGHT #-1 ~NumTimesTalkedToGT(0)~ THEN C0NIRIK n2
~Hello. I'm glad to see you're still safe. I am still willing to join you if you need the assistance of a druid.~ [C0NIR105]
END
++ ~Yes, please join me.~ DO ~JoinParty()~ EXIT
++ ~Not right now.~ EXIT

BEGIN C0NIRIKP

CHAIN IF WEIGHT #-1 ~HappinessLT(Myself,-299)~ THEN C0NIRIKP NIRIK-LEAVES-LOWREP
~I can't tolerate this any longer! Arundel was wrong to put his trust in you.~ [C0NIR106]
DO ~EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("KickedOut","LOCALS",0)~ THEN C0NIRIKP NIRIK-KICKEDOUT
~Do you not need me anymore? I'd rather not get in your way if that's the case.~ [C0NIR107]
END
++ ~Actually, stay in the group for now.~ DO ~JoinParty()~ EXIT
+ ~!AreaCheck("AR2112")~ + ~Just wait here for now, Nirik.~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
+ ~AreaCheck("AR2112")~ + ~Just wait here for now, Nirik.~ DO ~MoveToPoint([160.242]) SmallWait(1) Face(SE) SetGlobal("KickedOut","LOCALS",1)~ EXIT
+ ~OR(16)
AreaCheck("AR2100")
AreaCheck("AR2101")
AreaCheck("AR2102")
AreaCheck("AR2103")
AreaCheck("AR2104")
AreaCheck("AR2105")
AreaCheck("AR2106")
AreaCheck("AR2107")
AreaCheck("AR2108")
AreaCheck("AR2109")
AreaCheck("AR2110")
AreaCheck("AR2111")
AreaCheck("AR2113")
AreaCheck("AR2114")
AreaCheck("AR2115")
AreaCheck("AR2116")
Global("AR2100_visited","GLOBAL",1)~ + ~Stay here in Kuldahar for now.~ + NIRIK-KICKEDOUT-1
+ ~!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2103")
!AreaCheck("AR2104")
!AreaCheck("AR2105")
!AreaCheck("AR2106")
!AreaCheck("AR2107")
!AreaCheck("AR2108")
!AreaCheck("AR2109")
!AreaCheck("AR2110")
!AreaCheck("AR2111")
!AreaCheck("AR2112")
!AreaCheck("AR2113")
!AreaCheck("AR2114")
!AreaCheck("AR2115")
!AreaCheck("AR2116")
Global("AR2100_visited","GLOBAL",1)~ + ~Go back to Kuldahar for now.~ + NIRIK-KICKEDOUT-1

CHAIN C0NIRIKP NIRIK-KICKEDOUT-1
~I'll go back to Arundel's home if you need me again.~
DO ~EscapeAreaMove("AR2112",160,242,SE) SetGlobal("KickedOut","LOCALS",1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("KickedOut","LOCALS",1)~ THEN C0NIRIKP NIRIK-REJOIN
~Hello.~ [C0NIR100]
END
+ ~!GlobalGT("ARUNDEL_DEAD","GLOBAL",0)~ + ~Would you like to join me again, Nirik?~ + NIRIK-REJOIN-1
+ ~GlobalGT("ARUNDEL_DEAD","GLOBAL",0)~ + ~Would you like to join me again, Nirik?~ + NIRIK-REJOIN-2
++ ~I need nothing from you.~ EXIT
++ ~Just checking in.~ EXIT

CHAIN C0NIRIKP NIRIK-REJOIN-1
~Yes. Arundel would rather I help you, so I will.~
DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT

CHAIN C0NIRIKP NIRIK-REJOIN-2
~Arundel is dead... I'll join you, <PLAYER1>, so we can finish the task he left behind. Perhaps then he will find peace.~
DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT