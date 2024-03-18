local effects = {
  {position = Position(32350, 32223, 7), text = 'Roulette!', effect = CONST_ME_GROUNDSHAKER},
	{position = Position(32350, 32224, 7), text = 'Forge Shortcut!', effect = CONST_ME_GROUNDSHAKER},
	{position = Position(32349, 32222, 7), text = 'Task Altar!', effect = CONST_ME_GROUNDSHAKER},
}
local animatedText = GlobalEvent("AnimatedText") 
function animatedText.onThink(interval)
    for i = 1, #effects do
        local settings = effects[i]
        local spectators = Game.getSpectators(settings.position, false, true, 7, 7, 5, 5)
        if #spectators > 0 then
            if settings.text then
                for i = 1, #spectators do
                    spectators[i]:say(settings.text, TALKTYPE_MONSTER_SAY, false, spectators[i], settings.position)
                end
            end
            if settings.effect then
                settings.position:sendMagicEffect(settings.effect)
            end
        end
    end
   return true
end

animatedText:interval(3750)
animatedText:register()
