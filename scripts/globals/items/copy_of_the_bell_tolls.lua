-----------------------------------------
-- ID: 6179
-- Item: Copy of The Bell Tolls
-- Item Effect: Adds Handbell skill
-----------------------------------------
require("scripts/globals/settings");
require("scripts/globals/msg");
require("scripts/globals/status");

function onItemCheck(target)
    -- if target:isSkillCapped(dsp.skill.HANDBELL) then
        return dsp.msg.basic.ITEM_UNABLE_TO_USE
    -- end
    -- return 0
end;

function onItemUse(target)
	-- Do we have Handbell skill yet ?
	-- target:forceSkillUp(dsp.skill.HANDBELL)
end;