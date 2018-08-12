-----------------------------------------
-- ID: 6163
-- Item: Copy of Sonia's diary
-- Item Effect: Adds Guarding skill
-----------------------------------------
require("scripts/globals/settings");
require("scripts/globals/msg");
require("scripts/globals/status");

function onItemCheck(target)
    if target:isSkillCapped(dsp.skill.EVASION) then
        return dsp.msg.basic.ITEM_UNABLE_TO_USE
    end
    return 0
end;

function onItemUse(target)
	target:forceSkillUp(dsp.skill.EVASION)
end;