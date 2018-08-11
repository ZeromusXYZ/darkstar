-----------------------------------------
-- ID: 6161
-- Item: Throwing weapon enchiridion
-- Item Effect: Adds Throwing skill
-----------------------------------------
require("scripts/globals/settings");
require("scripts/globals/msg");
require("scripts/globals/status");

function onItemCheck(target)
    if (target:isSkillCapped(dsp.skill.THROWING) == 1) then
        return dsp.msg.basic.ITEM_UNABLE_TO_USE
    end
    return 0
end;

function onItemUse(target)
	target:forceSkillUp(dsp.skill.THROWING)
end;