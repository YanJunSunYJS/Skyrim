Scriptname SLP_MEF_CharmSpider extends activemagiceffect  
 
Faction Property SpiderFaction Auto

Event OnEffectStart(Actor Target, Actor Caster)
 	Actor kPlayer = Game.GetPlayer()

	Debug.Trace("Spider pheromones ON")
	; Debug.Notification("Spider pheromones ON")
 	StorageUtil.SetIntValue(kPlayer, "_SLP_iSpiderPheromoneON", 1)
 	StorageUtil.SetIntValue(kPlayer, "_SLP_iSpiderCharmON", 0)
 	; kPlayer.AddToFaction(SpiderFaction)

EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)        
 	Actor kPlayer = Game.GetPlayer()

	Debug.Trace("Spider pheromones OFF")
	; Debug.Notification("Spider pheromones OFF")
 	; StorageUtil.SetIntValue(kPlayer, "_SLP_iSpiderPheromoneON", 0)
	; StorageUtil.SetIntValue(kPlayer, "_SLP_iSpiderCharmON", 0)
 	; kPlayer.RemoveFromFaction(SpiderFaction)
 	
EndEvent