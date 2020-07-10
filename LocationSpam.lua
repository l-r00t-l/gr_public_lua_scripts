team_pos = gui.new_checkbox("Team Positions")
chat     = gui.new_combobox("Chat", "Team Chat", "Global Chat")

spam_delay = gui.new_slider_int("Spam Delay", 1, 10, 3)

lastTime = globals.curtime()

local players = nil
local me      = entity.get_local_player()

local lp = entity.get_local_player()


function main()

    local SpamDelay    = gui.get(spam_delay)


    players = entity.get_players(enemies_only)


    for key, player in pairs(players) do
        if entity.is_alive(player) and globals.curtime() - lastTime > SpamDelay and player ~= lp then
                local wpnName = entity.get_player_weapon(player)
            if(wpnName == 507) then
                wpnName = "KARAMBIT"
            end
            if(wpnName == 505) then
                wpnName = "FLIP KNIFE"
            end
            if(wpnName == 42) then
                wpnName = "DEAFULT CT KNIFE"
            end
            if(wpnName == 59) then
                wpnName = "DEAFULT T KNIFE"
            end
            if(wpnName == 9) then
                wpnName = "AWP"
            end
            if(wpnName == 40) then
                wpnName = "SCOUT"
            end
            if(wpnName == 1) then
                wpnName = "DEAGLE"
            end
            if(wpnName == 7) then
                wpnName = "AK-47"
            end
            if(wpnName == 8) then
                wpnName = "AUG"
            end
            if(wpnName == 10) then
                wpnName = "FAMAS"
            end
            if(wpnName == 13) then
                wpnName = "GALIL AR"
            end
            if(wpnName == 60) then
                wpnName = "M4A1-S"
            end
            if(wpnName == 16) then
                wpnName = "M4A4"
            end
            if(wpnName == 39) then
                wpnName = "SG 553"
            end
            if(wpnName == 61) then
                wpnName = "USP-S"
            end
            if(wpnName == 64) then
                wpnName = "R8"
            end
            if(wpnName == 63) then
                wpnName = "CZ75-Auto"
            end
            if(wpnName == 2) then
                wpnName = "DUAL BERETTAS"
            end
            if(wpnName == 3) then
                wpnName = "FIVE SEVEN"
            end
            if(wpnName == 4) then
                wpnName = "GLOCK-18"
            end
            if(wpnName == 32) then
                wpnName = "P2000"
            end
            if(wpnName == 30) then
                wpnName = "TEC-9"
            end
            if(wpnName == 36) then
                wpnName = "P250"
            end
            if(wpnName == 17) then
                wpnName = "MAC-10"
            end
            if(wpnName == 33) then
                wpnName = "MP7"
            end
            if(wpnName == 34) then
                wpnName = "MP9"
            end
            if(wpnName == 23) then
                wpnName = "MP5-SD"
            end
            if(wpnName == 26) then
                wpnName = "PP-BIZON"
            end
            if(wpnName == 19) then
                wpnName = "P90"
            end
            if(wpnName == 24) then
                wpnName = "UMP-45"
            end
            if(wpnName == 27) then
                wpnName = "MAG-7"
            end
            if(wpnName == 35) then
                wpnName = "NOVA"
            end
            if(wpnName == 29) then
                wpnName = "SAWED-OFF"
            end
            if(wpnName == 25) then
                wpnName = "XM1014"
            end
            if(wpnName == 14) then
                wpnName = "M249"
            end
            if(wpnName == 28) then
                wpnName = "NEGEV"
            end
            if(wpnName == 11) then
                wpnName = "G3SG1"
            end
            if(wpnName == 38) then
                wpnName = "SCAR-20"
            end
            if(wpnName == 500) then
                wpnName = "BAYONET"
            end
            if(wpnName == 506) then
                wpnName = "GUT KNIFE"
            end
            if(wpnName == 508) then
                wpnName = "M9 BAYONET"
            end
            if(wpnName == 509) then
                wpnName = "HUNTSMAN KNIFE"
            end
            if(wpnName == 512) then
                wpnName = "FALCHION KNIFE"
            end
            if(wpnName == 514) then
                wpnName = "BOWIE KNIFE"
            end
            if(wpnName == 515) then
                wpnName = "BUTTERFLY KNIFE"
            end
            if(wpnName == 516) then
                wpnName = "SHADOW DAGGERS"
            end
            if(wpnName == 519) then
                wpnName = "URSUS KNIFE"
            end
            if(wpnName == 520) then
                wpnName = "NAVAJA KNIFE"
            end
            if(wpnName == 523) then
                wpnName = "TALON KNIFE"
            end
            if(wpnName == 522) then
                wpnName = "STILETTO KNIFE"
            end
            if(wpnName == 503) then
                wpnName = "CLASSIC KNIFE"
            end
            if(wpnName == 525) then
                wpnName = "SKELETON KNIFE"
            end
            if(wpnName == 521) then
                wpnName = "NOMAND KNIFE"
            end
            if(wpnName == 518) then
                wpnName = "SURVIVAL KNIFE"
            end
            if(wpnName == 517) then
                wpnName = "PARACORD KNIFE"
            end
            if(wpnName == 31) then
                wpnName = "ZEUS x27"
            end
            if(wpnName == 49) then
                wpnName = "C4"
            end
            if(wpnName == 44) then
                wpnName = "HE GRENADE"
            end
            if(wpnName == 43) then
                wpnName = "FLASHBANG"
            end
            if(wpnName == 47) then
                wpnName = "DECOY"
            end
            if(wpnName == 46) then
                wpnName = "MOLOTOV"
            end
            if(wpnName == 45) then
                wpnName = "SMOKE"
            end
            if(wpnName == 48) then
                wpnName = "INCENDARY"
            end
            if(wpnName == nil) then
                wpnName = "<error while getting weapon>"
            end


            Name     = entity.get_player_name(player)
            locations = entity.get_prop( player, "DT_BasePlayer", "m_szLastPlaceName")

                local locations = entity.get_prop( player, "DT_BasePlayer", "m_szLastPlaceName")

                -- MIRAGE
                if (locations == 1884509251) then
                    locations = "CT Start"
                end
                if (locations == 1801677140) then
                    locations = "Ticket Booth"
                end
                if (locations == 1651339074) then
                    locations = "Bombsite A"
                end
                if (locations == 1717658451) then
                    locations = "Scaffolding"
                end
                if (locations == 1634492752) then
                    locations = "Palace Interior"
                end
                if (locations == 1634751316) then
                    locations = "T Start"
                end
                if (locations == 1835094612) then
                    locations = "T Ramp"
                end
                if (locations == 1634492752) then
                    locations = "Palace Alley"
                end
                if (locations == 1701079379) then
                    locations = "Side Alley"
                end
                if (locations == 1937076040) then
                    locations = "House"
                end
                if (locations == 1801675074) then
                    locations = "Back Alley"
                end
                if (locations == 1918988353) then
                    locations = "Apartaments"
                end
                if (locations == 1852732756) then
                    locations = "Tunnel Stairs"
                end
                if (locations == 1852732756) then
                    locations = "Tunnel"
                end
                if (locations == 1684302157) then
                    locations = "Middle"
                end
                if (locations == 1869639508) then
                    locations = "Top of Mid"
                end
                if (locations == 1668641364) then
                    locations = "Truck"
                end
                if (locations == 1651339074) then
                    locations = "Bombsite B"
                end
                if (locations == 2004115779) then
                    locations = "Catwalk"
                end
                if (locations == 1886349395) then
                    locations = "Kitchen"
                end
                if (locations == 1885957715) then
                    locations = "Sniper's Nest"
                end
                if (locations == 1684300108) then
                    locations = "Ladder"
                end
                if (locations == 1735292234) then
                    locations = "Jungle"
                end
                if (locations == 1767994451) then
                    locations = "A Stairs"
                end
                if (locations == 1852731203) then
                    locations = "Connector"
                end
                if (locations == 1684300108) then
                    locations = "Ladder"
                end


            Health   = entity.get_prop( player, "DT_BasePlayer", "m_iHealth")
            --Weapon   = entity.get_player_weapon(player)

            client.chat_print(me, lol, Name .." is at ".. locations .." with ".. Health .." hp and carring ".. wpnName)
        end
    end

end


callbacks.register("create_move", main)
