-----------------------------------------
-- ID: 6153
-- Item: Copy of Ludwigs's Report
-- Item Effect: Adds Scyth skill
-----------------------------------------
require("scripts/globals/settings");
require("scripts/globals/msg");
require("scripts/globals/status");

function onItemCheck(target)
    if (target:isSkillCapped(dsp.skill.SCYTHE) == 1) then
        return dsp.msg.basic.ITEM_UNABLE_TO_USE
    end
    return 0
end;

function onItemUse(target)
	target:forceSkillUp(dsp.skill.SCYTHE)
end;