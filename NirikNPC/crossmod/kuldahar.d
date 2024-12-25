I_C_T L#KUBOA 0 C0NirikKuldaharBoar
== C0NIRIKJ IF ~InMyArea("C0NIRIK") IsValidForPartyDialog("C0NIRIK")~ THEN ~This spirit... I recognize it, this pale fur and missing tusk. An avalanche struck the nearby region not so long before you arrived... this boar's body was carried along the river to the outskirts of the town.~
== C0NIRIKJ IF ~!PartyHasItem("L#KUTUSK")~ THEN ~It appears to be in great despair... something related to its death is keeping from being at peace.~
== C0NIRIKJ IF ~PartyHasItem("L#KUTUSK")~ THEN ~It appears to be in great despair... something related to its death is keeping from being at peace. That broken tusk we found... perhaps showing it would please the beast.~
== L#KUBOA ~(The boar spirit anxiously paws at the ground.)~
END

I_C_T L#KUBOA 1 C0NirikKuldaharBoar2
== C0NIRIKJ IF ~!IsGabber("C0NIRIK") InMyArea("C0NIRIK") IsValidForPartyDialog("C0NIRIK")~ THEN ~This kindness to a child of nature will surely please Her. Thank you, <PLAYER1>.~
== C0NIRIKJ IF ~IsGabber("C0NIRIK") InMyArea("C0NIRIK") IsValidForPartyDialog("C0NIRIK")~ THEN ~Rest well, child of Nature.~
END

I_C_T L#KUCLA 4 C0NirikKuldaharCat
== C0NIRIKJ IF ~InMyArea("C0NIRIK") IsValidForPartyDialog("C0NIRIK")~ THEN ~Taking one from their place in the cycle goes goes against all that the greater balance stands for. And the method of which to do this... no, I cannot approve. I know this is hard.~
END