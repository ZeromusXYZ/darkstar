------------------------------------------------
-- func: !skillshop
-- auth: ZeromusXYZ
-- desc: opens the custom shop menu for buying
--       skill books anywhere in the world
------------------------------------------------

require("scripts/globals/shop");

cmdprops =
{
    permission = 1,
    parameters = "s"
};

function onTrigger(player,page)

    local bookprice
    local showpage

    bookprice = 5000

    if (page == nil) then
        showpage = 0
    else
        showpage = tonumber(page);
        if (page:lower() == "combat") then
            showpage = 1
        end
        if (page:lower() == "magic") then
            showpage = 2
        end
    end

    if ((showpage <= 0) or (showpage > 2)) then
        player:PrintToPlayer( "Usage: !skillshop <page>", 0xF)
        player:PrintToPlayer( "<page> can be combat or magic or 1 or 2", 0xF)
    end

    -- capture invalid pages
    stock = { 0x0585,  1656, }  --Cattleya

    if (showpage == 1) then
        stock = {
            6147,  bookprice,   -- Copy of Mikhe's memo
            6148,  bookprice,   -- Dagger enchiridion
            6149,  bookprice,   -- Copy of Swing and Stab
            6150,  bookprice,   -- Copy of Mieuseloir's diary
            6151,  bookprice,   -- Copy of Striking Bull's diary
            6152,  bookprice,   -- Copy of Death for Dimwits
            6153,  bookprice,   -- Copy of Ludwig's report
            6154,  bookprice,   -- Copy of Clash of Titans
            6155,  bookprice,   -- Copy of Kagetora's diary
            6156,  bookprice,   -- Copy of Noillurie's log
            6157,  bookprice,   -- Copy of Ferreous's diary
            6158,  bookprice,   -- Copy of Kayeel-Payeel's memoirs
            6159,  bookprice,   -- Copy of Perih's primer
            6160,  bookprice,   -- Copy of Barrels of Fun
            6161,  bookprice,   -- Throwing weapon enchiridion
            6162,  bookprice,   -- Copy of Mikhe's note
            6163,  bookprice,   -- Copy of Sonia's diary
            6164,  bookprice,   -- Copy of The Successor
            6165,  bookprice,   -- Copy of Kagetora's journal
         }
        -- Show the current shop stock to the player
        showShop(player,STATIC,stock)
        player:PrintToPlayer( "Welcome to the Combat Skill Shop, Kupo!", 0xF)
    end

    if (showpage == 2) then
         stock = {
            6166,  bookprice,   -- Copy of Altana's Hymn
            6167,  bookprice,   -- Copy of Coveffe Barrows musings
            6168,  bookprice,   -- Copy of Aid for All
            6169,  bookprice,   -- Investigative report
            6170,  bookprice,   -- Bounty list
            6171,  bookprice,   -- Copy of Dark Deeds
            6172,  bookprice,   -- Copy of Breezy Libretto
            6173,  bookprice,   -- Cavernous score
            6174,  bookprice,   -- Beaming score
            6175,  bookprice,   -- Copy of Yomi's diagram
            6176,  bookprice,   -- Copy of Astral Homeland
            6177,  bookprice,   -- Copy of Life-form Study
            6178,  bookprice,   -- Copy of Hrohj's record
            -- 6179,  bookprice,   -- Copy of The Bell Tolls (do we actually already have handbell skill in this code ?)
         }
        -- Show the current shop stock to the player
        showShop(player,STATIC,stock)
        player:PrintToPlayer( "Welcome to the Magic Skill Shop, Kupo!", 0xF)
    end

end;
