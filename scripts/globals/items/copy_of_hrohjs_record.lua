-----------------------------------------
-- ID: 6178
-- Item: Copy of Hrohj's record
-- Item Effect: Adds Geomancy skill
-----------------------------------------
require("scripts/globals/settings");
require("scripts/globals/msg");
require("scripts/globals/status");

function onItemCheck(target)
    if target:isSkillCapped(dsp.skill.GEOMANCY) then
        return dsp.msg.basic.ITEM_UNABLE_TO_USE
    end
    return 0
end;

function onItemUse(target)
	target:forceSkillUp(dsp.skill.GEOMANCY)
end;