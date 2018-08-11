-----------------------------------------
-- ID: 6171
-- Item: Copy of Dark Deeds
-- Item Effect: Adds Dark Magic skill
-----------------------------------------
require("scripts/globals/settings");
require("scripts/globals/msg");
require("scripts/globals/status");

function onItemCheck(target)
    if (target:isSkillCapped(dsp.skill.DARK_MAGIC) == 1) then
        return dsp.msg.basic.ITEM_UNABLE_TO_USE
    end
    return 0
end;

function onItemUse(target)
	target:forceSkillUp(dsp.skill.DARK_MAGIC)
end;