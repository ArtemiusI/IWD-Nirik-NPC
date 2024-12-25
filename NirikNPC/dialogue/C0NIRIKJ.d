BEGIN C0NIRIKJ

// Aldwin

I_C_T DALDWIN 22 C0NirikAldwin
== C0NIRIKJ IF ~InMyArea("C0NIRIK") IsValidForPartyDialog("C0NIRIK")~ THEN ~Eidan was a reserved man, but he deserved better than to be forgotten and taken advantage of in death.~
== DALDWIN ~Look, like I said, nobody got hurt from what I did, alright? I have to look after myself too.~
END

// Arundel

CHAIN IF WEIGHT #-1 ~IsGabber("C0NIRIK")
Global("C0NirikArundel","GLOBAL",0)
Global("SPRITE_IS_DEADYxunomei","GLOBAL",0)~ THEN DARUNDEL N-ARUNDEL
~The balance of Kuldahar, and perhaps the entire North, depends on your success, Nirik.~
DO ~IncrementGlobal("C0NirikArundel","GLOBAL",1)~
== C0NIRIKJ ~Yes, master Arundel. I will do my best... I—I mean, I will not fail you, of course!~
== DARUNDEL ~Have a little more faith in yourself, my student. You hold great potential within you, and I have full confidence that you will succeed. Perhaps, during your journey, you may even find the place you seek amidst the greater balance.~
== C0NIRIKJ ~I... I understand. In the name of Kuldahar and the Great Oak, I will do my utmost to bring balance to these lands once more.~
== DARUNDEL ~Go, Nirik. Nature will not fail to guide you, so long as you keep her in your heart.~
EXIT

CHAIN IF WEIGHT #-1 ~IsGabber("C0NIRIK")
Global("C0NirikArundel","GLOBAL",1)
Global("SPRITE_IS_DEADYxunomei","GLOBAL",0)~ THEN DARUNDEL N-ARUNDEL-1
~Ah, greetings, my student. I trust you are faring well?~
EXIT

INTERJECT DARUNDEL 81 C0NirikArundelDeath
== C0NIRIKJ IF ~InMyArea("C0NIRIK") IsValidForPartyDialog("C0NIRIK")~ THEN ~Master, no... no!~
== DARUNDEL ~Nirik, my student... I'm glad to see you again. All of you... listen closely, for I have little time left...~
== C0NIRIKJ ~Who... who has done this to you, master? They will pay... I promise it!~
EXTERN DARUNDEL 82

// Belhifet

I_C_T DBELHIFE 11 C0NirikBelhifet
== C0NIRIKJ IF ~InMyArea("C0NIRIK") IsValidForPartyDialog("C0NIRIK")~ THEN ~You shall defile this world no longer, fiend! Today, I avenge my mentor and defend the natural order!~
END

// Conlan

CHAIN IF WEIGHT #-1 ~InParty("C0NIRIK")
Global("C0NirikArundel","GLOBAL",0)~ THEN DCONLAN CONLAN
~Welcome... ah, is that you, Nirik? Took a moment to notice you past the unfamiliar face.~
DO ~IncrementGlobal("C0NirikArundel","GLOBAL",1)~
== C0NIRIKJ ~Good <DAYNIGHTALL>, Conlan. I am here to assist <PLAYER1>—I believe <PRO_HESHE> would have more important matters to speak of.~
EXIT

// Emmerich

I_C_T DEMMRCH 14 C0NirikEmmerich
== C0NIRIKJ IF ~InMyArea("C0NIRIK") IsValidForPartyDialog("C0NIRIK")~ THEN ~The struggle for survival is another part of Nature's lessons. I believe you did what was necessary.~
== DEMMRCH ~No, I...~
END

// Fengla

I_C_T DFENGLA 3 C0NirikFengla
== C0NIRIKJ IF ~InMyArea("C0NIRIK") IsValidForPartyDialog("C0NIRIK")~ THEN ~Unforgivable.~
== DFENGLA ~The girl closes her mouth.~
END

// Larrel

I_C_T DLARREL 31 C0NirikLarrel
== C0NIRIKJ IF ~InMyArea("C0NIRIK") IsValidForPartyDialog("C0NIRIK")~ THEN ~But that's... no. No, I cannot believe it.~
== DLARREL ~It is not an easy thing to accept, knowing the crimes your own people have committed. But it is the truth.~
END

I_C_T DLARREL 50 C0NirikLarrel3
== C0NIRIKJ IF ~InMyArea("C0NIRIK") IsValidForPartyDialog("C0NIRIK")~ THEN ~So there is always hope for amends... master Arundel was right.~
END

I_C_T DLARREL 54 C0NirikLarrel2
== C0NIRIKJ IF ~InMyArea("C0NIRIK") IsValidForPartyDialog("C0NIRIK")~ THEN ~Your own suffering has affected your understanding of my kin, master Larrel. I hope...~
END

// Norlinor

INTERJECT DNORLINO 0 C0NirikNorlinor
== C0NIRIKJ IF ~InMyArea("C0NIRIK") IsValidForPartyDialog("C0NIRIK")~ THEN ~We have no wish to offend the spirits of the fallen, sonnlinor.~
EXTERN DNORLINO 1

// Nym

INTERJECT DNYM 8 C0NirikNym
== C0NIRIKJ IF ~InMyArea("C0NIRIK") IsValidForPartyDialog("C0NIRIK")~ THEN ~You... the death of thousands of my people was the doing of an honorless, black-hearted drow? By the Mordinsamman, my heart demands that I—~
END
  ++ ~Nirik, stop. I understand how you feel, but there's no bringing back the dead.~ EXTERN C0NIRIKJ C0NirikNym.1
  ++ ~Stop. I won't have you turning against such a valuable asset.~ EXTERN C0NIRIKJ C0NirikNym.2
  ++ ~I agree with Nirik. This kind of foul manipulation can't go unpunished. It's time to face justice, Nym.~ DO ~ActionOverride("NYM",Enemy())~ EXIT

CHAIN C0NIRIKJ C0NirikNym.1
~I... you are right, <CHARNAME>, but this drow will only be free to continue to do evil... but I will not act to your detriment, not now.~
EXTERN DNYM C0NirikNym.3

CHAIN C0NIRIKJ C0NirikNym.2
~This... this is a matter of justice for my people, <CHARNAME>. But if you demand that this... wretched creature lives, then... I will not argue with you.~
EXTERN DNYM C0NirikNym.3

CHAIN DNYM C0NirikNym.3
~You have my utmost condolences for any incidental tragedy that has befallen your kin, friend. Perhaps the exchange of some items of value to assist in your cause might alleviate the pain?~
COPY_TRANS DNYM 8

// Ogre

I_C_T DOGRE 1 C0NirikOgre
== C0NIRIKJ IF ~!IsGabber("C0NIRIK") InMyArea("C0NIRIK") IsValidForPartyDialog("C0NIRIK")~ THEN ~I believe I once read a remedy for such ills in one of master Arundel's books... if you would allow me to speak with this ogre, <PLAYER1>, I may be able to aid him. Even such creatures deserve treatment.~
END

I_C_T DOGRE 6 C0NirikOgre
== C0NIRIKJ IF ~!IsGabber("C0NIRIK") InMyArea("C0NIRIK") IsValidForPartyDialog("C0NIRIK")~ THEN ~I believe I once read a remedy for such ills in one of master Arundel's books... if you would allow me to speak with this ogre, <PLAYER1>, I may be able to aid him. Even such creatures deserve treatment.~
END

// Orog

INTERJECT DOSENTRY 1 C0NirikOrogSentry
== C0NIRIKJ IF ~InMyArea("C0NIRIK") IsValidForPartyDialog("C0NIRIK")~ THEN ~"Orog territory"? You had best watch your tongue, beast. Dorn's Deep is a haven for dwarfkin.~
== DOSENTRY ~No longer. Dwarves are dead. We own this land now. Trespassers die like the rest.~
== C0NIRIKJ ~Dead...? Your kind raided Kuldahar under the villain who murdered my mentor, and now you befoul the ancestral dwarven lands with your evil? If those of Dorn's Deep have truly fallen to the likes of you, then I will do my part to avenge them!~
== DOSENTRY ~You talk much. When you die, there will be no more talk.~
COPY_TRANS DOSENTRY 2

// Saablic

INTERJECT DSAABLIC 0 C0NirikSaablic
== C0NIRIKJ IF ~InMyArea("C0NIRIK") IsValidForPartyDialog("C0NIRIK")~ THEN ~There... is something unnatural about this creature, <PLAYER1>. The form it wears is not its own.~
EXTERN DSAABLIC 2

// Soth

INTERJECT DSOTH 8 C0NirikSoth
== C0NIRIKJ IF ~InMyArea("C0NIRIK") IsValidForPartyDialog("C0NIRIK")~ THEN ~Dugmaren is the dwarven god of inventors, scholars and knowledge. A respected, but rare patron of my people... though I find an affinity in his teachings that many of my kin do not.~
EXTERN DSOTH 10

// Tealnis

I_C_T DTEALNIS 10 C0NirikTealnis
== C0NIRIKJ IF ~InMyArea("C0NIRIK") IsValidForPartyDialog("C0NIRIK")~ THEN ~That... that cannot be. Dwarves know loyalty, and honor. My people would never have betrayed a sworn oath.~
END

// Tiernon

INTERJECT DTIERNON 1 C0NirikTiernon
== C0NIRIKJ IF ~InMyArea("C0NIRIK") IsValidForPartyDialog("C0NIRIK")~ THEN ~Tiernon...? Of the Clan Hearthstone? You... you yet live?~
EXTERN DTIERNON 49

I_C_T DTIERNON 24 C0NirikTiernon2
== C0NIRIKJ IF ~InMyArea("C0NIRIK") IsValidForPartyDialog("C0NIRIK")~ THEN ~You speak of the primal power of ice, in its purest form... it reminds me of Master Arundel's teachings.~
END

CHAIN IF WEIGHT #-1 ~Global("C0NirikTalkVale","GLOBAL",1)~ THEN C0NIRIKJ N-TALK-VALE
~This is the Vale of Shadows... a cold and desolate place, even by the standards of the North. *shudder* If there is truly evil, it is sure to be found here.~ [C0BLANK]
DO ~IncrementGlobal("C0NirikTalkVale","GLOBAL",1)~
= ~I... you should be aware, <CHARNAME>, that although Arundel calls me his student... I am but a simple acolyte, and lack his vast wealth of knowledge and wisdom. Regardless, I hope you will not be disappointed by my support.~
END
  ++ ~How did you come to become Arundel's apprentice, anyway?~ + N-TALK-VALE-1
  ++ ~Don't worry. We're both inexperienced adventurers here.~ + N-TALK-VALE-2
  ++ ~I expect you to not hold me back, at least.~ + N-TALK-VALE-3

CHAIN C0NIRIKJ N-TALK-VALE-1
~That... is a long story. I am happy to tell you some, of course, but much of my past would be better told in warmer climes.~
EXTERN C0NIRIKJ N-TALK-VALE-4

CHAIN C0NIRIKJ N-TALK-VALE-2
~An adventurer... is not how I would have described myself, but perhaps... it is not wrong. I have travelled far to be where I am now, after all.~
EXTERN C0NIRIKJ N-TALK-VALE-4

CHAIN C0NIRIKJ N-TALK-VALE-3
~Of course, I... I will do my best not to.~
EXIT

CHAIN C0NIRIKJ N-TALK-VALE-4
~I am not originally from Kuldahar, or the Ten Towns. My people, the dwarven clan of Bannerstone Hold, lives in Luruar, which many know as the Silver Marches. It is further south of here, separated by the Spine of the World.~
= ~As a child, my small stature even by a dwarf's standards, and my lack of strength made me a poor warrior. Though my family cared greatly for me, I could never shake the feeling of disappointment of being unable to live up to the achievements of my many brothers, all talented and respected soldiers of the clan.~
= ~I served our clanhold for most of my youth as a simple stonecutter, a necessary profession but one with little ambition or glory. And though I accepted what I believed to be my place, I was never truly satisfied.~
= ~Over time, I felt distanced from my people, and began venturing more frequently above the earth where they would not. I sought comfort under the light of the sky, the rushing waters of the river, the sound of leaves under my feet... something most dwarves believed unusual.~
END
  ++ ~I imagine this only separated you from your people even more.~ + N-TALK-VALE-5
  ++ ~And you eventually left to become a druid?~ + N-TALK-VALE-6
  ++ ~That's enough. You can tell me your story another time.~ + N-TALK-VALE-7

CHAIN C0NIRIKJ N-TALK-VALE-5
~Yes... though strangely, as I became more familiar with the wild, of the life that existed beyond our walls, it did not bother me as greatly anymore.~
EXTERN C0NIRIKJ N-TALK-VALE-8

CHAIN C0NIRIKJ N-TALK-VALE-6
~No, it was not so simple as that. I appreciated the beauty of the natural order, but I was still far too ignorant. I was as though a child, pursuing a sudden whim, one which my family believed I would grow out of.~
EXTERN C0NIRIKJ N-TALK-VALE-8

CHAIN C0NIRIKJ N-TALK-VALE-7
~Yes, of course. We are here for a purpose, and my own tale can wait.~
EXIT

CHAIN C0NIRIKJ N-TALK-VALE-8
~As time went on, I dared to wander further away from my clanhold, until I mistakenly entered the territory of a druidic circle. There, I was awed by what the druids of the region had accomplished, creating a place where they lived in harmony with the land, without taking advantage of it.~
= ~When I met the druids themselves, I believe they were wary of me, as they had the right to, for most dwarves do not appreciate the ways of the druidic order. Yet a strange courage compelled me to remain, asking many questions, of the earth, of the purposes that living beings had in the world, if even a weak, small dwarf such as I had a role to play.~
= ~And I believe my curiosity appeased them. They patiently answered my questions, teaching me more than I ever believed I would know. It made me aware of just how little I truly understood about myself.~
= ~Eventually, I begged to join their circle.~
END
  ++ ~And?~ + N-TALK-VALE-9
  ++ ~Did they accept you?~ + N-TALK-VALE-9

CHAIN C0NIRIKJ N-TALK-VALE-9
~They could not accept me. To me, I was like a fragile youngling in a harsh land, one which I would likely not survive had I undergone their strict teachings. But their elder, the half-elven great druid Thorn, was sympathetic. He told me of one who could teach me, and advised that I travel north with him if I were truly pledged to serve Nature.~
= ~I returned to the clanhold and pleaded to my father to allow me to go. We... argued. But in the end, all my kin knew that I had no meaningful future within the clan, and so I packed my bags and departed that same night.~
= ~The great druid led me to the North, and to Kuldahar. He introduced me to master Arundel, and told me that I would learn all that I needed to at the town of the Great Oak. Then... if I felt it was still my calling, I might return to their circle and properly join them.~
= ~It has been only four years since then. I have learned much... but in the grand scheme, it is very little. Perhaps master Arundel pushed me towards this journey not only to assist you, but for my own sake.~
END
  + ~Class(Player1,DRUID_ALL)~ + ~I am a druid as well, and if you wish for assistance, you need only ask.~ + N-TALK-VALE-10
  ++ ~You must respect Arundel greatly to listen to him so unfailingly.~ + N-TALK-VALE-11
  ++ ~I don't know what you expect to learn by following me.~ + N-TALK-VALE-12

CHAIN C0NIRIKJ N-TALK-VALE-10
~Thank you, <CHARNAME>. I expect I will need much of your advice in the forseeable future.~
EXTERN C0NIRIKJ N-TALK-VALE-13

CHAIN C0NIRIKJ N-TALK-VALE-11
~Of course. He is my mentor, and I believe any decision he makes for my sake means the best for me.~
EXTERN C0NIRIKJ N-TALK-VALE-13

CHAIN C0NIRIKJ N-TALK-VALE-12
~I cannot say that I know any more than you do, <CHARNAME>, only that Arundel, and the Earthmother, are surely guiding me towards the right path.~
EXTERN C0NIRIKJ N-TALK-VALE-13

CHAIN C0NIRIKJ N-TALK-VALE-13
~For now, my path lies here in the Vale, where we might find the cause of that which disturbs the natural order. Let us fulfill my master's request, <CHARNAME>.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0NirikLysanDeathTalk","GLOBAL",1)~ THEN C0NIRIKJ lysand
~The Aurilite is defeated, and already I feel the unnatural chill of the wind shifting. We have done a good thing.~ [C0BLANK]
DO ~IncrementGlobal("C0NirikLysanDeathTalk","GLOBAL",1)~
= ~But it is strange to me... Auril, the Frostmaiden, holds dominion over the aspect of cold and winter. It is cruel, unforgiving... but still part of the natural cycle. Even some druids, though their methods are extreme, follow her teachings.~
= ~When I looked upon this woman, I believed that I should have seen some connection between us, however meager... yet all I saw was madness. She twisted the spirits of the vale, raised them from their natural state of rest. How could we, despite both servants of a natural power, have become so different?~
END
  ++ ~Faith can be interpreted in many ways, Nirik, and many are not so benevolent.~ + lysand-1
  ++ ~Auril is an evil, vicious goddess. It's to be expected that her followers are equally so.~ + lysand-1
  ++ ~The winter is part of nature, but trying to expand it beyond its natural place isn't.~ + lysand-1
  ++ ~There's no point thinking about the motivations of the dead.~ + lysand-0

CHAIN C0NIRIKJ lysand-0
~As you say, <CHARNAME>. Let us leave this place behind us.~
EXIT

CHAIN C0NIRIKJ lysand-1
~You are right. It... simply concerns me that those who should serve nature are so... cruel with their true intentions.~
= ~I have learned over time that even among druids, devotion can take many forms. Chauntea, Silvanus, Rillifane, Malar, Auril... perhaps it was naive of me, but I believed that even at their most vicious, the ultimate goal to serve one of nature's aspects.~
= ~And now... I see that I may have been completely wrong. Perhaps conflict will always be unavoidable. If my beliefs are so irreconcilable with what faiths such as this demand... I will have to play my part to sever the problem at its root.~
= ~I believe I have learned an important lesson here, <CHARNAME>... and the first of many, it seems.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0NirikArundelDeathTalk","GLOBAL",1)~ THEN C0NIRIKJ arundeld
~Master Arundel... is gone. He has returned to the Great Mother's embrace.~ [C0BLANK]
DO ~IncrementGlobal("C0NirikArundelDeathTalk","GLOBAL",1)~
= ~I should not grieve overly long. All of nature's servants must accept death as a necessary part of our journey. But... it is difficult.~
END
  ++ ~We'll avenge him.~ + arundeld-1
  ++ ~I'm sorry, Nirik.~ + arundeld-1
  ++ ~If you must grieve, then do it silently.~ + arundeld-2
  ++ ~That's enough. We don't have time to talk.~ EXIT

CHAIN C0NIRIKJ arundeld-1
~Look at this place, <PLAYER1>. Kuldahar... my home. It's strange to think that it's not even been a decade since I journeyed here, to learn of my place in the world. For a dwarf, this time could only have been called meager. But these scant few years have been more fulfilling than my entire childhood.~
= ~I have spent the majority of my life believing myself inadequate, <CHARNAME>. My father and mother, my many older brothers... no matter how much they cared for me, they could never accomodate my weakness, and give me the place I truly sought... and instead, I found it here, beneath the Great Oak.~
= ~Master Arundel was a father and savior to me... and the pain of seeing someone who meant so much... lying there, the life fading away before my eyes, unable to do anything... it reminded me of my inadequacy. It should not have happened so soon... there was still so much for me to learn, and so far to grow...~
= ~Now that chance has been cruelly taken away. And I feel truly lost, <CHARNAME>. More lost than I have ever been.~
END
  ++ ~I don't believe you are inadequate, Nirik. You're strong enough to have come this far at my side.~ + arundeld-3
  ++ ~What will you do now?~ + arundeld-4

CHAIN C0NIRIKJ arundeld-2
~...As you wish.~
EXIT

CHAIN C0NIRIKJ arundeld-3
~I... thank you, <CHARNAME>. You are right... Arundel allowed me... encouraged me to follow you, because he saw potential in me. I must believe it.~
EXTERN C0NIRIKJ arundeld-4

CHAIN C0NIRIKJ arundeld-4
~Master Arundel used his final breaths to entrust a task upon me. The most important one... to protect nature and humanity from evil. I will fulfill that duty.~
= ~I will follow you, <CHARNAME>, and do my part to end this threat to the North. Then, I may return and meet Arundel's grave without shame.~
= ~Moreover... I do not wish to see the unnatural winter claim Kuldahar... this place that is now my home.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0NirikDornsDeepTalk","GLOBAL",1)~ THEN C0NIRIKJ dorns
~Dorn's Deep... the proud bastion of my people. Taken over by drow.~ [C0BLANK]
DO ~IncrementGlobal("C0NirikDornsDeepTalk","GLOBAL",1)~
= ~I wish I could construct my anger, turn it inwards into strength, so that I might avenge my kin... but I feel nothing but despondence. This was once a vibrant home for dwarves... and I fear only the worst could have happened to all of them.~
END
  + ~!Race(Player1,DWARF)~ + ~Maybe some of our kin escaped, and rebuilt their lives elsewhere.~ + dorns.1
  + ~Race(Player1,DWARF)~ + ~Maybe some dwarves escaped, and rebuilt their lives elsewhere.~ + dorns.1
  + ~Race(Player1,DWARF)~ + ~I understand how you feel. Countless of our kind must have fallen here.~ + dorns.1
  ++ ~This must be hard on you.~ + dorns.1
  ++ ~We don't have time to despair. Let's remove these drow invaders.~ + dorns.0

CHAIN C0NIRIKJ dorns.0
~Yes... you are right. There is a duty to be done, and as a son of Clan Bannerstone, I will fulfill it.~
EXIT

CHAIN C0NIRIKJ dorns.1
~When I left my clanhold... said farewell to my family, my brothers and sisters... the concern of being gone when they were in need did cross my mind. But it was buried, crushed, by my own weakness.~
= ~I was incapable as a warrior. How could I expect to be a part of the protection of our people and homes, if a danger that could threaten my brothers did arise? What could I have done?~
= ~Before, <CHARNAME>, I told you... and others, and even myself, that I believed I had found my calling as a druid. But in truth... I know I was always pursuing strength. The strength to serve what is most important to me.~
= ~And I have gained some. Much more in your company than I ever would have imagined. But... what good is it if I am not with those whom I should be protecting? What if, despite this growth... I would still fail to prevent my home from becoming as Dorn's Deep has?~
END
  ++ ~You can't hope to prevent everything that you fear. You can only do your best.~ + dorns.2
  ++ ~Just grow stronger. If you want to protect something, fight for it.~ + dorns.3
  ++ ~If you believe there's a place you should be, then you should go there and do what you must.~ + dorns.4
  ++ ~Let's just keep moving. We're not done cleaning this place out yet.~ + dorns.0

CHAIN C0NIRIKJ dorns.2
~It... is not enough. My ability is limited, that I know, but... it is no consolation.~
EXTERN C0NIRIKJ dorns.5

CHAIN C0NIRIKJ dorns.3
~I understand. The fear of failure cannot hold me back from doing what I should.~
EXTERN C0NIRIKJ dorns.5

CHAIN C0NIRIKJ dorns.4
~No, I... I hesitated, but I know that here is where I am needed most. Dorn's Deep may have fallen, but there is still a duty to be done.~
EXTERN C0NIRIKJ dorns.5

CHAIN C0NIRIKJ dorns.5
~Rest easy, my kin. We are here now, to right the wrongs that have been done to you, I swear it.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0NirikAR7000Talk","GLOBAL",1)~ THEN C0NIRIKJ ar7000
~Do you have a moment, <CHARNAME>? There are some thoughts on my mind I need to be free of.~ [C0BLANK]
DO ~IncrementGlobal("C0NirikAR7000Talk","GLOBAL",1)~
END
  ++ ~Of course, Nirik. What is it?~ + ar7000-1
  ++ ~Make it quick.~ + ar7000-1

CHAIN C0NIRIKJ ar7000-1
~I... wish to thank you for your leadership. This journey has been far beyond what I anticipated, but it has taught me many things—of the land, and nature... and my own place in the world.~
= ~There have been many times where I have felt lost, from my childhood to the day I became Master Arundel's student. The time of mourning after losing my beloved mentor... it has all made me question where my own path leads.~
= ~But I believe I know the answer now. And once we defeat the evil that threatens the Ten Towns... when we succeed, I now know where I should go, where I am meant to be.~
END
  ++ ~And what place is that?~ + ar7000-2
  ++ ~You'll take Arundel's place in Kuldahar, won't you?~ + ar7000-3
  ++ ~Get on with it.~ + ar7000-2

CHAIN C0NIRIKJ ar7000-3
~No. I have nothing but love for Kuldahar, and it is home to me, but... it is not where I am needed. I know that now.~
EXTERN C0NIRIKJ ar7000-2

CHAIN C0NIRIKJ ar7000-2
~I will return home to the Silver Marches, and rejoin my clan in the halls of Bannerstone. Where I once thought myself a burden, now I know that my power, my knowledge as a servant of Nature, may serve my people as well as that of a warrior.~
= ~There can be no doubt that I will miss this place... and I will return often, so that I may greet my old friends and pay my respects to Arundel's grave. But both for my people, and for myself, I wish to see my people again, and greet my family with my head held high.~
END
  ++ ~That sounds like a worthy resolution.~ + ar7000-4
  ++ ~Your family will be happy to see you return, and with new purpose.~ + ar7000-4
  ++ ~I'm glad I could play a part in you gaining your resolve.~ + ar7000-4
  ++ ~Alright, that's enough. You've said what you needed to.~ + ar7000-5

CHAIN C0NIRIKJ ar7000-4
~I owe you much, <CHARNAME>. I doubt I would have had the opportunity to gain this strength alone... and of course I owe much to my mentors, to the people who accepted me and guided me towards my calling as well.~
EXTERN C0NIRIKJ ar7000-5

CHAIN C0NIRIKJ ar7000-5
~Throughout this journey, I have felt my understanding, my bond with the earth, and the Earthmother's call, grow ever stronger... and I will use this might to ensure that peace returns to the land once more.~
= ~Onwards, leader. I will serve with all that I have, and all that I have become.~
DO ~ChangeStat("C0NIRIK",WIS,2,ADD)
DisplayString("C0NIRIK",%nirik_gain_wisdom%)~ EXIT

// PID

CHAIN IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])~ THEN C0NIRIKJ pid
~Aye?~ [C0NIR021]
END
 ++ ~May I ask you some questions?~ + pid-questions
 ++ ~I need nothing at the moment.~ EXIT

CHAIN C0NIRIKJ pid-questions
~Of course.~
END
 + ~Race(Player1,DWARF)
    Global("C0NirikPIDGod","GLOBAL",0)~ + ~You don't worship the Morndinsamman, do you?~ DO ~SetGlobal("C0NirikPIDGod","GLOBAL",1)~ + pid-god
 + ~!Race(Player1,DWARF)
    Global("C0NirikPIDGod","GLOBAL",0)~ + ~You don't worship a dwarven god, do you?~ DO ~SetGlobal("C0NirikPIDGod","GLOBAL",1)~ + pid-god
 + ~Global("C0NirikPIDAge","GLOBAL",0)~ + ~You seem like a rather young dwarf. How old are you exactly?~ DO ~SetGlobal("C0NirikPIDAge","GLOBAL",1)~ + pid-age
 + ~Global("C0NirikPIDAlcohol","GLOBAL",0)~ + ~I don't think I've seen you indulge in drink often. Do you not like it?~ DO ~SetGlobal("C0NirikPIDAlcohol","GLOBAL",1)~ + pid-alcohol
 + ~Global("C0NirikPIDNorth","GLOBAL",0)~ + ~What do you think of the North?~ DO ~SetGlobal("C0NirikPIDNorth","GLOBAL",1)~ + pid-north
 + ~Global("C0NirikPIDHome","GLOBAL",0)~ + ~Do you think you'll ever return to your clan?~ DO ~SetGlobal("C0NirikPIDHome","GLOBAL",1)~ + pid-home
 ++ ~Never mind. I don't have anything to ask right now.~ EXIT

CHAIN C0NIRIKJ pid-god
~I... do not, no. I pay my respects to them as the guardians of dwarven kind, of course, but... I have never felt truly attuned to the worship of any of our pantheon.~
= ~Before I joined the calling, I felt the closest to the teachings of Dugmaren and Marthammor Duin, but only for the allure of seeking where I truly could find a purpose.~
= ~Now, I follow the teachings of Chauntea, the Earthmother. Agriculture and growth are not glorious domains, but they are essential for all living things.~
= ~When not focusing on my teachings, I enjoyed spending time with the local farmers in Kuldahar's fields... it is another part of my training, both for my body and knowledge of the land's bounty.~
EXIT

CHAIN C0NIRIKJ pid-age
~I am barely sixty years of age. A small part of a dwarf's lifetime, and my stature has often led others to mistake me for being even younger.~
= ~Though I only consider the latter half of my years as having truly been meaningful. And I hope the future only leads to further wisdom.~
EXIT

CHAIN C0NIRIKJ pid-alcohol
~It is not my preference, no. My brothers, while I still lived in Bannerstone Hold, would often push me to drink with them in contest. My tolerance... could be considered above average for a human, but poor for a dwarf.~
= ~Truth be told, master Arundel was more fond of the bottle than I. It surprised me when I first learned of it, but as he said, such methods of using the fruits of the land are merely a different means of accepting nature's gifts... though I partly believe it an excuse.~
= ~*ahem* Please do not let this be known for too many others. I have nothing but the utmost respect for my mentor, of course.~
EXIT

CHAIN C0NIRIKJ pid-north
~Beyond the shelter of the Great Oak? Truth be told, I know little of it from experience. My studies have never taken me far beyond the Vale... but I know it is a harsh, yet ultimately fair land.~
= ~It deserves to be free of this darkness that encroaches upon it, and I may learn more of its ways, and how to survive within such an unfamiliar place, in the process.~
EXIT

CHAIN C0NIRIKJ pid-home
~I believe it will be inevitable, one day... I owe much to Kuldahar and its people, but equally so with my own kin. Dwarves value kin above all else, and I am no different in that regard.~
= ~But I believe there will always be a place for me beneath the Great Oak. One does not easily leave behind their ties to home... whether new or old.~
EXIT