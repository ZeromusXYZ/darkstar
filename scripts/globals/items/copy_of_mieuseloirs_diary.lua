-----------------------------------------
-- ID: 6150
-- Item: Copy of Mieuseloir's diary
-- Item Effect: Adds Great Sword skill
-----------------------------------------
require("scripts/globals/settings");
require("scripts/globals/msg");
require("scripts/globals/status");

function onItemCheck(target)
    if (target:isSkillCapped(dsp.skill.GREAT_SWORD) == 1) then
        return dsp.msg.basic.ITEM_UNABLE_TO_USE
    end
    return 0
end;

function onItemUse(target)
	target:forceSkillUp(dsp.skill.GREAT_SWORD)
end;