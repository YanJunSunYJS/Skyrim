;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname _sdtif_dream_scene2outfit Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Actor PlayerActor = Game.GetPlayer()

		fctOutfit.clearNonGenericDeviceByString ( "WristRestraint", "Sanguine" )
		fctOutfit.clearNonGenericDeviceByString ( "LegCuffs", "Sanguine" )
		fctOutfit.clearNonGenericDeviceByString ( "Collar", "Sanguine" )

Utility.Wait(2.0)

	PlayerActor.SendModEvent("SDEquipDevice",   "Collar|Dremora")
	PlayerActor.SendModEvent("SDEquipDevice",   "Corset|Dremora")
	PlayerActor.SendModEvent("SDEquipDevice",   "Gloves|Dremora")
	PlayerActor.SendModEvent("SDEquipDevice",   "Boots|Dremora")
;	PlayerActor.SendModEvent("SDEquipDevice",   "Gag|Dremora")
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

_sdqs_fcts_outfit Property fctOutfit  Auto  
