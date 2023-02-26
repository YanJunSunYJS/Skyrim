;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname SLD_TIF_Gift01 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Actor kPlayer = Game.GetPlayer()

If (Utility.RandomInt(0,100)>80)
	CharitySpell.RemoteCast( kPlayer , kPlayer, kPlayer )

	Int randomNum = Utility.RandomInt(1, 3)

	StorageUtil.SetIntValue( akSpeaker, "_SD_iDisposition", StorageUtil.GetIntValue(akSpeaker, "_SD_iDisposition") + randomNum )
EndIf

akSpeaker.ShowGiftMenu( True, _SLD_GiftFilter, True )
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

SPELL Property CharitySpell  Auto  

FormList Property _SLD_GiftFilter  Auto  
