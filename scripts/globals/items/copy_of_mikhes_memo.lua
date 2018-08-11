-----------------------------------------
-- ID: 6147
-- Item: Copy of Mikhe's Memo
-- Item Effect: Adds Hand-To-Hand skill
-----------------------------------------
require("scripts/globals/settings");
require("scripts/globals/msg");
require("scripts/globals/status");

function onItemCheck(target)
    if (target:isSkillCapped(dsp.skill.HAND_TO_HAND) == 1) then
        return dsp.msg.basic.ITEM_UNABLE_TO_USE
    end
    return 0
end;

function onItemUse(target)
	target:forceSkillUp(dsp.skill.HAND_TO_HAND)
end;