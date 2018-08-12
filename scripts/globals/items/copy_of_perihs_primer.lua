-----------------------------------------
-- ID: 6159
-- Item: Copy of Perih's primer
-- Item Effect: Adds Archery skill
-----------------------------------------
require("scripts/globals/settings");
require("scripts/globals/msg");
require("scripts/globals/status");

function onItemCheck(target)
    if target:isSkillCapped(dsp.skill.ARCHERY) then
        return dsp.msg.basic.ITEM_UNABLE_TO_USE
    end
    return 0
end;

function onItemUse(target)
	target:forceSkillUp(dsp.skill.ARCHERY)
end;