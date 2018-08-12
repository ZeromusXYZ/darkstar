-----------------------------------------
-- ID: 6155
-- Item: Copy of Kagetora's diary
-- Item Effect: Adds Katana skill
-----------------------------------------
require("scripts/globals/settings");
require("scripts/globals/msg");
require("scripts/globals/status");

function onItemCheck(target)
    if target:isSkillCapped(dsp.skill.KATANA) then
        return dsp.msg.basic.ITEM_UNABLE_TO_USE
    end
    return 0
end;

function onItemUse(target)
	target:forceSkillUp(dsp.skill.KATANA)
end;