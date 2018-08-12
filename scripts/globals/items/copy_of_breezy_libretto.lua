-----------------------------------------
-- ID: 6172
-- Item: Copy of Breezy Libretto
-- Item Effect: Adds Singing skill
-----------------------------------------
require("scripts/globals/settings");
require("scripts/globals/msg");
require("scripts/globals/status");

function onItemCheck(target)
    if target:isSkillCapped(dsp.skill.SINGING) then
        return dsp.msg.basic.ITEM_UNABLE_TO_USE
    end
    return 0
end;

function onItemUse(target)
	target:forceSkillUp(dsp.skill.SINGING)
end;