--[[

	Heist Assistant v1.0
	Made by newbie(me), Boncabee: https://github.com/boncabee
	Script for Kiddion's Modest External Menu: https://www.unknowncheats.me/forum/grand-theft-auto-v/497052-kiddions-modest-external-menu-thread-3-a.html
	Thanks to Roy007 for make me interesting with lua, because his code is easy to understand then i can made this script
	Heist Assistant is based from ScriptStash by Roy007 & inspired from Stand Heist Control by IceDoomfist
	
	Global, local, stats and codes found in UnknownCheats forum: https://www.unknowncheats.me/forum/grand-theft-auto-v/
	Most of the scripts were created by other people, some were modified to fit my needs, some are original
	All credits go to the original authors, if something is missed please notify me

]]--

--[[ Version

	HA: v1.0
	Kiddion's: v0.9.4
	GTAO: v1.61
	
]]--

local GlO=262145				--v1.61 Global offset

-- Cayo Perico Heist
local TTL = true				--Cayo Total Take preferred Limit
local CrVO=2725439				--v1.61 Cayo Create Vehicle offset
local CPTO=262145+29970			--v1.61 Cayo Primary Target take Value offset
local CPCO=1973321+823+56		--v1.61 Cayo Player Cut offset
local CBgC=291865				--v1.61 Cayo Bag Capacity
local HSST=41707+1392+53		--v1.61 Cayo Secondary Target take value(local) ~41449
local HSSF=27500				--v1.61 Cayo Sewer Fence(local)
local HSCF=23385				--v1.61 Cayo Clone Fingerprint(local)
local HSCG=28736+3				--v1.61 Cayo Cut Glass(local)
local HSCS=28735				--v1.61 Cayo CutterStage(local)
local HSBC=28736				--v1.61 Cayo BitCheck(local)
local HSIF1=38397				--v1.61 Cayo InstantFinish(local) Local_38396.f_1375[1]
local HSIF2=39772				--v1.61 Cayo InstantFinish(local) Local_38396.f_1

-- Diamond Casino Heist
local CrVO=2725439				--v1.61 Casino Create Vehicle offset
local DTO=262145+28793			--v1.61 Casino Target value offset
local DPCO=1966534+1497+736+92	--v1.61 Casino Player Cut offset
local HS0RT=22365				--v1.61 Casino Real Take(local)
local HS0FG=52929				--v1.61 Casino Finger Graft(local)
local HS0KP=53991				--v1.61 Casino Keypad(local)
local HS0VT=10082+37			--v1.61 Casino Vault Total(local)
local HS0VS=10082+7				--v1.61 Casino Vault Stat(local)

-- The Doomsday Heist
local DDCO=1962546+812+50		--v1.61 Doomsday Player Cut offset
local Beam=1398					--v1.61 D'Day Act III Beam puzzle
local Nodes=1537				--v1.61 D'Day Act I Server Nodes puzzle
local HSIFD1=19679				--v1.61 D'Day InstantFinish(local)
local HSIFD2=28298+1			--v1.61 D'Day InstantFinish(local)
local HSIFD3=31554+69			--v1.61 D'Day InstantFinish(local)

-- Apartment Heist
local VLSI=11731+24				--v1.61 Apartment Fleeca Circuit Breaker


require_game_build(2699) -- GTAO v1.61
local hs=script("fm_mission_controller_2020")
local function mpx() return stats.get_int("MPPLY_LAST_MP_CHAR") end

local ha=menu.add_submenu("Heist Assistant")
ha:add_action("                  Heist Assistant v1.0", function() end)

--- Cayo Perico Heist			

	local hacp=ha:add_submenu("Cayo Perico Heist", function() end)
	
	local hareq=hacp:add_submenu("Request Services", function() end)
		hareq:add_action("Request Kosatka", function()
		menu.deliver_kosatka() end)
		hareq:add_action("Request Sea Sparrow", function()
		menu.deliver_sparrow() end)
		hareq:add_action("Request Dinghy", function()
		menu.deliver_dinghy() end)
		-- hareq:add_action("Spawn Oppressor MK2", function()
		-- end)
	--
	
	local hacpsp=hacp:add_submenu("Setup Preset", function() end)			
		local hacpsp1=hacpsp:add_action("Hard Panther", function()
			stats.set_int("MP"..mpx().."_H4CNF_BS_GEN", 122879)
			stats.set_int("MP"..mpx().."_H4CNF_WEAPONS", 2)
			stats.set_int("MP"..mpx().."_H4CNF_TARGET", 5)
			stats.set_int("MP"..mpx().."_H4CNF_BOLTCUT", 4424)
			stats.set_int("MP"..mpx().."_H4CNF_UNIFORM", 5256)
			stats.set_int("MP"..mpx().."_H4CNF_GRAPPEL", 5156)
			stats.set_int("MP"..mpx().."_H4CNF_TROJAN", 3)
			stats.set_int("MP"..mpx().."_H4LOOT_CASH_I", 0)
			stats.set_int("MP"..mpx().."_H4LOOT_CASH_I_SCOPED", 0)
			stats.set_int("MP"..mpx().."_H4LOOT_CASH_C", 0)
			stats.set_int("MP"..mpx().."_H4LOOT_CASH_C_SCOPED", 0)
			stats.set_int("MP"..mpx().."_H4LOOT_COKE_I", 0)
			stats.set_int("MP"..mpx().."_H4LOOT_COKE_I_SCOPED", 0)
			stats.set_int("MP"..mpx().."_H4LOOT_COKE_C", 0)
			stats.set_int("MP"..mpx().."_H4LOOT_COKE_C_SCOPED", 0)
			stats.set_int("MP"..mpx().."_H4LOOT_GOLD_I", 16777215)
			stats.set_int("MP"..mpx().."_H4LOOT_GOLD_I_SCOPED", 16777215)
			stats.set_int("MP"..mpx().."_H4LOOT_GOLD_C", 255)
			stats.set_int("MP"..mpx().."_H4LOOT_GOLD_C_SCOPED", 255)
			stats.set_int("MP"..mpx().."_H4LOOT_WEED_I", 0)
			stats.set_int("MP"..mpx().."_H4LOOT_WEED_I_SCOPED", 0)
			stats.set_int("MP"..mpx().."_H4LOOT_WEED_C", 0)
			stats.set_int("MP"..mpx().."_H4LOOT_WEED_C_SCOPED", 0)
			stats.set_int("MP"..mpx().."_H4LOOT_PAINT", 127)
			stats.set_int("MP"..mpx().."_H4LOOT_PAINT_SCOPED", 127)
			stats.set_int("MP"..mpx().."_H4LOOT_GOLD_V", 585151)
			stats.set_int("MP"..mpx().."_H4LOOT_PAINT_V", 438863)
			stats.set_int("MP"..mpx().."_H4_PROGRESS", 131055)
			stats.set_int("MP"..mpx().."_H4_MISSIONS", 8191)
		end)
		
		local hacpsp2=hacpsp:add_action("Normal Panther", function()
			stats.set_int("MP"..mpx().."_H4CNF_BS_GEN", 122879)
			stats.set_int("MP"..mpx().."_H4CNF_WEAPONS", 2)
			stats.set_int("MP"..mpx().."_H4CNF_TARGET", 5)
			stats.set_int("MP"..mpx().."_H4CNF_BOLTCUT", 4424)
			stats.set_int("MP"..mpx().."_H4CNF_UNIFORM", 5256)
			stats.set_int("MP"..mpx().."_H4CNF_GRAPPEL", 5156)
			stats.set_int("MP"..mpx().."_H4CNF_TROJAN", 3)
			stats.set_int("MP"..mpx().."_H4LOOT_CASH_I", 0)
			stats.set_int("MP"..mpx().."_H4LOOT_CASH_I_SCOPED", 0)
			stats.set_int("MP"..mpx().."_H4LOOT_CASH_C", 0)
			stats.set_int("MP"..mpx().."_H4LOOT_CASH_C_SCOPED", 0)
			stats.set_int("MP"..mpx().."_H4LOOT_COKE_I", 0)
			stats.set_int("MP"..mpx().."_H4LOOT_COKE_I_SCOPED", 0)
			stats.set_int("MP"..mpx().."_H4LOOT_COKE_C", 0)
			stats.set_int("MP"..mpx().."_H4LOOT_COKE_C_SCOPED", 0)
			stats.set_int("MP"..mpx().."_H4LOOT_GOLD_I", 16777215)
			stats.set_int("MP"..mpx().."_H4LOOT_GOLD_I_SCOPED", 16777215)
			stats.set_int("MP"..mpx().."_H4LOOT_GOLD_C", 255)
			stats.set_int("MP"..mpx().."_H4LOOT_GOLD_C_SCOPED", 255)
			stats.set_int("MP"..mpx().."_H4LOOT_WEED_I", 0)
			stats.set_int("MP"..mpx().."_H4LOOT_WEED_I_SCOPED", 0)
			stats.set_int("MP"..mpx().."_H4LOOT_WEED_C", 0)
			stats.set_int("MP"..mpx().."_H4LOOT_WEED_C_SCOPED", 0)
			stats.set_int("MP"..mpx().."_H4LOOT_PAINT", 127)
			stats.set_int("MP"..mpx().."_H4LOOT_PAINT_SCOPED", 127)
			stats.set_int("MP"..mpx().."_H4LOOT_GOLD_V", 585151)
			stats.set_int("MP"..mpx().."_H4LOOT_PAINT_V", 438863)
			stats.set_int("MP"..mpx().."_H4_PROGRESS", 126823)
			stats.set_int("MP"..mpx().."_H4_MISSIONS", 8191)
		end)
		
		local hacpspl=hacpsp:add_action("-----", function() end)
		
		local hacppoi=hacpsp:add_action("Get All POI", function()
			stats.set_int("MP"..mpx().."_H4CNF_BS_GEN", -1)
			stats.set_int("MP"..mpx().."_H4CNF_BS_ENTR", 63)
			stats.set_int("MP"..mpx().."_H4CNF_APPROACH", -1)
		end)
		
		local hacpsp3=hacpsp:add_action("Reset Heist To Default", function()
			stats.set_int("MP"..mpx().."_H4_MISSIONS", 0)
			stats.set_int("MP"..mpx().."_H4_PROGRESS", 0)
			stats.set_int("MP"..mpx().."_H4CNF_APPROACH", 0)
			stats.set_int("MP"..mpx().."_H4CNF_BS_ENTR", 0)
			stats.set_int("MP"..mpx().."_H4CNF_BS_GEN", 0)
			stats.set_int("MP"..mpx().."_H4_PLAYTHROUGH_STATUS", 0)
			stats.set_int("MP"..mpx().."_H4CNF_TARGET", -1)
		end)
	
	---
	
	local hacphh=hacp:add_submenu("Heist Helper")
		hacphh:add_action("Bypass Drainage Pipe Cut", function()
		if hs:is_active() and hs:get_int(HSSF)>=3 and hs:get_int(HSSF)<6 then hs:set_int(HSSF, 6) end end)
		hacphh:add_action("Bypass Fingerprint Hack", function()
		if hs:is_active() and hs:get_int(HSCF)>=2 and hs:get_int(HSCF)<10 then hs:set_int(HSCF, 5) end end)
		hacphh:add_action("Bypass Plasma Glass Cut", function()
		if hs:is_active() and hs:get_float(HSCG)>0 and hs:get_float(HSCG)<100 then hs:set_float(HSCG, 100) end end)
		hacphh:add_action("Remove CCTV", function() menu.remove_cctvs() end)
		hacphh:add_action("Kill All Mission NPCs", function() menu.kill_all_mission_peds() end)
		hacphh:add_action("Kill All NPCs", function() menu.kill_all_npcs() end)
		hacphh:add_action("Auto Finish Primary Target", function()
		if hs:is_active() then hs:set_int(HSCS, 5) hs:set_int(HSBC, 3) end end)
		hacphh:add_action("Instant Finish Heist", function()
		if hs:is_active() then hs:set_int(HSIF1, 51338752) hs:set_int(HSIF2, 50) end end) 
		
		hacphh:add_action("  _________________Teleport_________________", function() end)
			local function TP2L(TPx,TPy,TPz,Yaw,Pitch,Roll)
			localplayer:set_rotation(vector3(Yaw,Pitch,Roll))
			localplayer:set_position((vector3(TPx, TPy, TPz))) end
			hacphh:add_action("Forward", function()
			menu.teleport_forward() end)
			hacphh:add_action("Primary Target", function()
			TP2L(5006.747070, -5755.465332, 14.184439,2.754982,0,0) end)
			hacphh:add_action("Loot Room UG", function()
			TP2L(5001.265625, -5747.136230, 13.540489,2.603355,0,0) end)
			hacphh:add_action("Loot Room1", function()
			TP2L(5078.780273, -5758.335449, 14.529647,2.856643,0,0) end)
			hacphh:add_action("Loot Room2", function()
			TP2L(5027.184082, -5733.711426, 16.565582,1.164920,0,0) end)
			hacphh:add_action("Loot Room3", function()
			TP2L(5009.367676, -5790.344727, 16.531700,-2.891438,0,0) end)
			hacphh:add_action("Front Gate", function()
			menu.end_cutscene() TP2L(4990.194824, -5716.448730, 18.580215, 0.946360, -0,0) end)
			hacphh:add_action("Sea Escaped", function()
			menu.end_cutscene() TP2L(4639.124023, -6010.004883, -7.475036, 1.930023, -0, -0) end)
		--
		
		
		hacphh:add_action("  _______________Modify Loot_______________", function() end)
			hacphh:add_int_range("Secondary Take", 100000, 900000, 6662960, function()
			if hs:is_active() then return hs:get_int(HSST) else return 0 end end, function(RTk)
			if hs:is_active() then hs:set_int(HSST, RTk) end end)
			local tke=0
			hacphh:add_array_item("Auto Max Take", { "Safe Hard", "Max Hard", "Safe Easy", "Max Easy" }, function()
			return 1 end, function(sf) if hs:is_active() then
			if sf==1 or sf==3 then plmx=2444398.88 else plmx=2550000 end
			if sf==3 or sf==4 then Mult=1 else Mult=1.1 end
			if globals.get_int(CPCO+1)>=15 and globals.get_int(CPCO+1)<=200 then
				MaX=math.max(globals.get_int(CPCO+4), globals.get_int(CPCO+3), globals.get_int(CPCO+2), globals.get_int(CPCO+1)) end
			if not MaX then return end
			tke=math.floor(plmx*100/MaX*113.63/100)
			if TTL then if tke>=7351544 then tke=7351544 end end	
			if tke>=1900000 then globals.set_int(CPTO+stats.get_int("MP"..mpx().."_H4CNF_TARGET"), 1900000)
			hs:set_int(HSST, math.floor(tke-1900000*Mult))
			else globals.set_int(CPTO+stats.get_int("MP"..mpx().."_H4CNF_TARGET"), math.floor(tke/2))
			hs:set_int(HSST, math.floor(tke-(tke/2)*Mult)) end end end)
		--
		
		hacphh:add_action("  __________________Spawn__________________", function() end)
			function MYCREATE_VEHICLE(Hash,cord_x,cord_y,cord_z,pegasus)
			WP, WS, peg=2, 1, 0 if Hash=="oppressor2" then WP=2 elseif Hash=="apc" or model=="deluxo" then WP=-1
			elseif Hash=="bombushka" then WP=1 elseif Hash=="tampa3" or model=="insurgent3" or model=="halftrack" then WP=3
			elseif Hash=="barrage" then WP=30 end
			globals.set_float(CrVO+7+0, cord_x) 
			globals.set_float(CrVO+7+1, cord_y) 
			globals.set_float(CrVO+7+2, cord_z)
			
			globals.set_int(CrVO+27+66, joaat(Hash))
			globals.set_int(CrVO+3, peg)
			globals.set_int(CrVO+27+28, 1)  -- Weaponised ownerflag
			globals.set_int(CrVO+27+95, 14) -- Ownerflag
			globals.set_int(CrVO+27+94, 2)  -- Personal car ownerflag
			globals.set_int(CrVO+5, 1)      -- SET('i',CarSpawn+0x1168, 1)  --can spawn flag must be odd
			globals.set_int(CrVO+2, 1)      -- SET('i',CarSpawn+0x1180, 1) --spawn toggle gets reset to 0 on car spawn
			globals.set_int(CrVO+27+60, 1)	-- Landinggear/vehstate
			globals.set_int(CrVO+27+74, 1) 
			globals.set_int(CrVO+27+75, 1) 
			globals.set_int(CrVO+27+76, 0)  -- RGB Neon Amount 1-255 100%-0%
			globals.set_int(CrVO+27+5, -1) 
			globals.set_int(CrVO+27+6, -1)  -- Default paintjob primary,secondary 0-120 (-1>>auto)
			globals.set_int(CrVO+27+21, 4)  -- Engine (0-3)
			globals.set_int(CrVO+27+23, 3)  -- Transmission (0-9)
			globals.set_int(CrVO+27+26, 5)  -- Armor (0-18)
			globals.set_int(CrVO+27+27, 1)  -- Turbo (0-1)
			globals.set_int(CrVO+27+65, 2)  -- Window tint 0-6
			globals.set_int(CrVO+27+69, -1) -- Wheel type
			globals.set_int(CrVO+27+33, -1) -- Wheel Selection
			globals.set_int(CrVO+27+25, 8)  -- Suspension (0-13)
			globals.set_int(CrVO+27+15, WP) 
			globals.set_int(CrVO+27+20, WS) -- Primary,secondary weapon
			globals.set_int(CrVO+27+60, 1) 
			globals.set_int(CrVO+27+7, -1) 
			globals.set_int(CrVO+27+8, -1) 
			globals.set_int(CrVO+27+19, 4)
			globals.set_int(CrVO+27+24, 58) 
			globals.set_int(CrVO+27+22, 3) 
			globals.set_int(CrVO+27+19, -1) end
			
			hacphh:add_action("Oppressor MK2", function()
			MYCREATE_VEHICLE("oppressor2",4965.86,-5719.61,18.34,0) end)
			hacphh:add_action("Deluxo", function()
			MYCREATE_VEHICLE("deluxo",4965.24,-5723.78,18.38,0) end)
			hacphh:add_action("APC", function()
			MYCREATE_VEHICLE("apc",4965.24,-5723.78,18.38,0) end)
		--
	---
	
	local hacpm=hacp:add_submenu("Misc", function() end)
		local hacpm1=hacpm:add_action("Unlock Heist Reward", function()
			stats.set_bool("MP"..mpx().."_AWD_INTELGATHER", true)
			stats.set_bool("MP"..mpx().."_AWD_COMPOUNDINFILT", true)
			stats.set_bool("MP"..mpx().."_AWD_LOOT_FINDER", true)
			stats.set_bool("MP"..mpx().."_AWD_MAX_DISRUPT", true)
			stats.set_bool("MP"..mpx().."_AWD_THE_ISLAND_HEIST", true)
			stats.set_bool("MP"..mpx().."_AWD_GOING_ALONE", true)
			stats.set_bool("MP"..mpx().."_AWD_TEAM_WORK", true)
			stats.set_bool("MP"..mpx().."_AWD_MIXING_UP", true)
			stats.set_bool("MP"..mpx().."_AWD_PRO_THIEF", true)
			stats.set_bool("MP"..mpx().."_AWD_CAT_BURGLAR", true)
			stats.set_bool("MP"..mpx().."_AWD_ONE_OF_THEM", true)
			stats.set_bool("MP"..mpx().."_AWD_GOLDEN_GUN", true)
			stats.set_bool("MP"..mpx().."_AWD_ELITE_THIEF", true)
			stats.set_bool("MP"..mpx().."_AWD_PROFESSIONAL", true)
			stats.set_bool("MP"..mpx().."_AWD_HELPING_OUT", true)
			stats.set_bool("MP"..mpx().."_AWD_COURIER", true)
			stats.set_bool("MP"..mpx().."_AWD_PARTY_VIBES", true)
			stats.set_bool("MP"..mpx().."_AWD_HELPING_HAND", true)
			stats.set_bool("MP"..mpx().."_AWD_ELEVENELEVEN", true)
			stats.set_bool("MP"..mpx().."_COMPLETE_H4_F_USING_VETIR", true)
			stats.set_bool("MP"..mpx().."_COMPLETE_H4_F_USING_LONGFIN", true)
			stats.set_bool("MP"..mpx().."_COMPLETE_H4_F_USING_ANNIH", true)
			stats.set_bool("MP"..mpx().."_COMPLETE_H4_F_USING_ALKONOS", true)
			stats.set_bool("MP"..mpx().."_COMPLETE_H4_F_USING_PATROLB", true)
			stats.set_int("MP"..mpx().."_AWD_LOSTANDFOUND", 500000)
			stats.set_int("MP"..mpx().."_AWD_SUNSET", 1800000)
			stats.set_int("MP"..mpx().."_AWD_TREASURE_HUNTER", 1000000)
			stats.set_int("MP"..mpx().."_AWD_WRECK_DIVING", 1000000)
			stats.set_int("MP"..mpx().."_AWD_KEINEMUSIK", 1800000)
			stats.set_int("MP"..mpx().."_AWD_PALMS_TRAX", 1800000)
			stats.set_int("MP"..mpx().."_AWD_MOODYMANN", 1800000)
			stats.set_int("MP"..mpx().."_AWD_FILL_YOUR_BAGS", 1000000000)
			stats.set_int("MP"..mpx().."_AWD_WELL_PREPARED", 80)
			stats.set_int("MP"..mpx().."_H4_H4_DJ_MISSIONS", -1) end)
		---
		
		local hacpm2=hacpm:add_action("Complete All Missions [only]", function()
			stats.set_int("MP"..mpx().."_H4_MISSIONS", -1)
			stats.set_int("MP"..mpx().."_H4CNF_APPROACH", -1)
			stats.set_int("MP"..mpx().."_H4CNF_BS_ENTR", 63)
			stats.set_int("MP"..mpx().."_H4CNF_BS_GEN", 63)
			stats.set_int("MP"..mpx().."_H4CNF_WEP_DISRP", 3)
			stats.set_int("MP"..mpx().."_H4CNF_ARM_DISRP", 3)
			stats.set_int("MP"..mpx().."_H4CNF_HEL_DISRP", 3)
		end)
	--
---

--- Diamond Casino Heist

	local hadc=ha:add_submenu("Diamond Casino Heist", function() end)
	
	local hadcsp=hadc:add_submenu("Setup Preset", function() end)	
	
		local hadcspg=hadcsp:add_submenu("Standart Preset [Gold]", function() end)
		
			local hadcspg1=hadcspg:add_action("The Big Con Approach", function()
				stats.set_int("MP"..mpx().."_H3_COMPLETEDPOSIX", -1)
				stats.set_int("MP"..mpx().."_H3OPT_APPROACH", 2)
				stats.set_int("MP"..mpx().."_H3_LAST_APPROACH", 3)
				stats.set_int("MP"..mpx().."_H3OPT_TARGET", 1)
				stats.set_int("MP"..mpx().."_H3OPT_BITSET1", 543)
				stats.set_int("MP"..mpx().."_H3OPT_DISRUPTSHIP", 3)
				stats.set_int("MP"..mpx().."_H3OPT_KEYLEVELS", 2)
				stats.set_int("MP"..mpx().."_H3OPT_CREWWEAP", 1)
				stats.set_int("MP"..mpx().."_H3OPT_CREWDRIVER", 1)
				stats.set_int("MP"..mpx().."_H3OPT_CREWHACKER", 5)
				stats.set_int("MP"..mpx().."_H3OPT_VEHS", 3)
				stats.set_int("MP"..mpx().."_H3OPT_WEAPS", 0)
				stats.set_int("MP"..mpx().."_H3OPT_BITSET0", 913431) 
				stats.set_int("MP"..mpx().."_H3OPT_MASKS", 11)
			end)
			
			local hadcspg2=hadcspg:add_action("Aggressive Approach", function()
				stats.set_int("MP"..mpx().."_H3_COMPLETEDPOSIX", -1)
				stats.set_int("MP"..mpx().."_H3OPT_APPROACH", 3)
				stats.set_int("MP"..mpx().."_H3_LAST_APPROACH", 2)
				stats.set_int("MP"..mpx().."_H3OPT_TARGET", 1)
				stats.set_int("MP"..mpx().."_H3OPT_BITSET1", 799)
				stats.set_int("MP"..mpx().."_H3OPT_DISRUPTSHIP", 3)
				stats.set_int("MP"..mpx().."_H3OPT_KEYLEVELS", 2)
				stats.set_int("MP"..mpx().."_H3OPT_CREWWEAP", 3)
				stats.set_int("MP"..mpx().."_H3OPT_CREWDRIVER", 1)
				stats.set_int("MP"..mpx().."_H3OPT_CREWHACKER", 5)
				stats.set_int("MP"..mpx().."_H3OPT_VEHS", 3)
				stats.set_int("MP"..mpx().."_H3OPT_WEAPS", 1)
				stats.set_int("MP"..mpx().."_H3OPT_BITSET0", 1912855) 
				stats.set_int("MP"..mpx().."_H3OPT_MASKS", 11)
			end)
			
			local hadcspg3=hadcspg:add_action("Silent Sneaky Approach", function()
				stats.set_int("MP"..mpx().."_H3_COMPLETEDPOSIX", -1)
				stats.set_int("MP"..mpx().."_H3OPT_APPROACH", 1)
				stats.set_int("MP"..mpx().."_H3_LAST_APPROACH", 3)
				stats.set_int("MP"..mpx().."_H3OPT_TARGET", 1)
				stats.set_int("MP"..mpx().."_H3OPT_BITSET1", 127)
				stats.set_int("MP"..mpx().."_H3OPT_DISRUPTSHIP", 3)
				stats.set_int("MP"..mpx().."_H3OPT_KEYLEVELS", 2)
				stats.set_int("MP"..mpx().."_H3OPT_CREWWEAP", 5)
				stats.set_int("MP"..mpx().."_H3OPT_CREWDRIVER", 1)
				stats.set_int("MP"..mpx().."_H3OPT_CREWHACKER", 5)
				stats.set_int("MP"..mpx().."_H3OPT_VEHS", 3)
				stats.set_int("MP"..mpx().."_H3OPT_WEAPS", 1)
				stats.set_int("MP"..mpx().."_H3OPT_BITSET0", 340031) 
				stats.set_int("MP"..mpx().."_H3OPT_MASKS", 11)
			end)
		--
		
		local hadcspd=hadcsp:add_submenu("Standart Preset [Diamond]", function() end)
		
			local hadcspd1=hadcspd:add_action("The Big Con Approach", function()
				stats.set_int("MP"..mpx().."_H3_COMPLETEDPOSIX", -1)
				stats.set_int("MP"..mpx().."_H3OPT_APPROACH", 2)
				stats.set_int("MP"..mpx().."_H3_LAST_APPROACH", 3)
				stats.set_int("MP"..mpx().."_H3OPT_TARGET", 3)
				stats.set_int("MP"..mpx().."_H3OPT_BITSET1", 159)
				stats.set_int("MP"..mpx().."_H3OPT_DISRUPTSHIP", 3)
				stats.set_int("MP"..mpx().."_H3OPT_KEYLEVELS", 2)
				stats.set_int("MP"..mpx().."_H3OPT_CREWWEAP", 1)
				stats.set_int("MP"..mpx().."_H3OPT_CREWDRIVER", 1)
				stats.set_int("MP"..mpx().."_H3OPT_CREWHACKER", 5)
				stats.set_int("MP"..mpx().."_H3OPT_VEHS", 3)
				stats.set_int("MP"..mpx().."_H3OPT_WEAPS", 0)
				stats.set_int("MP"..mpx().."_H3OPT_BITSET0", 454679) 
				stats.set_int("MP"..mpx().."_H3OPT_MASKS", 11)
			end)
			
			local hadcspd2=hadcspd:add_action("Aggressive Approach", function()
				stats.set_int("MP"..mpx().."_H3_COMPLETEDPOSIX", -1)
				stats.set_int("MP"..mpx().."_H3OPT_APPROACH", 3)
				stats.set_int("MP"..mpx().."_H3_LAST_APPROACH", 1)
				stats.set_int("MP"..mpx().."_H3OPT_TARGET", 3)
				stats.set_int("MP"..mpx().."_H3OPT_BITSET1", 799)
				stats.set_int("MP"..mpx().."_H3OPT_DISRUPTSHIP", 3)
				stats.set_int("MP"..mpx().."_H3OPT_KEYLEVELS", 2)
				stats.set_int("MP"..mpx().."_H3OPT_CREWWEAP", 3)
				stats.set_int("MP"..mpx().."_H3OPT_CREWDRIVER", 1)
				stats.set_int("MP"..mpx().."_H3OPT_CREWHACKER", 5)
				stats.set_int("MP"..mpx().."_H3OPT_VEHS", 3)
				stats.set_int("MP"..mpx().."_H3OPT_WEAPS", 1)
				stats.set_int("MP"..mpx().."_H3OPT_BITSET0", 1978391) 
				stats.set_int("MP"..mpx().."_H3OPT_MASKS", 11)
			end)
			
			local hadcspd3=hadcspd:add_action("Silent Sneaky Approach", function()
				stats.set_int("MP"..mpx().."_H3_COMPLETEDPOSIX", -1)
				stats.set_int("MP"..mpx().."_H3OPT_APPROACH", 1)
				stats.set_int("MP"..mpx().."_H3_LAST_APPROACH", 3)
				stats.set_int("MP"..mpx().."_H3OPT_TARGET", 3)
				stats.set_int("MP"..mpx().."_H3OPT_BITSET1", 127)
				stats.set_int("MP"..mpx().."_H3OPT_DISRUPTSHIP", 3)
				stats.set_int("MP"..mpx().."_H3OPT_KEYLEVELS", 2)
				stats.set_int("MP"..mpx().."_H3OPT_CREWWEAP", 3)
				stats.set_int("MP"..mpx().."_H3OPT_CREWDRIVER", 1)
				stats.set_int("MP"..mpx().."_H3OPT_CREWHACKER", 5)
				stats.set_int("MP"..mpx().."_H3OPT_VEHS", 3)
				stats.set_int("MP"..mpx().."_H3OPT_WEAPS", 1)
				stats.set_int("MP"..mpx().."_H3OPT_BITSET0", 405567) 
				stats.set_int("MP"..mpx().."_H3OPT_MASKS", 11)
			end)
		--
		
		local hadcpl=hadcsp:add_action("-----", function() end)
		
		local hadcpoi=hadcsp:add_action("Get All POI", function()
			stats.set_int("MP"..mpx().."_H3OPT_POI", -1)
			stats.set_int("MP"..mpx().."_H3OPT_ACCESSPOINTS", -1)
		end)
		
		local hadcr=hadcsp:add_action("Reset Heist To Default", function()
			stats.set_int("MP"..mpx().."_H3_LAST_APPROACH", 0) 
			stats.set_int("MP"..mpx().."_H3OPT_APPROACH", 0) 
			stats.set_int("MP"..mpx().."_H3_HARD_APPROACH", 0) 
			stats.set_int("MP"..mpx().."_H3OPT_TARGET", 0) 
			stats.set_int("MP"..mpx().."_H3OPT_POI", 0) 
			stats.set_int("MP"..mpx().."_H3OPT_ACCESSPOINTS", 0) 
			stats.set_int("MP"..mpx().."_H3OPT_BITSET1", 0) 
			stats.set_int("MP"..mpx().."_H3OPT_CREWWEAP", 0) 
			stats.set_int("MP"..mpx().."_H3OPT_CREWDRIVER", 0) 
			stats.set_int("MP"..mpx().."_H3OPT_CREWHACKER", 0) 
			stats.set_int("MP"..mpx().."_H3OPT_WEAPS", 0) 
			stats.set_int("MP"..mpx().."_H3OPT_VEHS", 0) 
			stats.set_int("MP"..mpx().."_H3OPT_DISRUPTSHIP", 0) 
			stats.set_int("MP"..mpx().."_H3OPT_BODYARMORLVL", 0) 
			stats.set_int("MP"..mpx().."_H3OPT_KEYLEVELS", 0) 
			stats.set_int("MP"..mpx().."_H3OPT_MASKS", 0) 
			stats.set_int("MP"..mpx().."_H3OPT_BITSET0", 0)
		end)
	--
	
	local hadchh=hadc:add_submenu("Heist Helper")
		hadchh:add_action("Bypass Keypad Hack", function()
		if hs:is_active() and hs:get_int(HS0KP)>=3 and hs:get_int(HS0KP)<100 then hs:set_int(HS0KP, 5) end end)
		hadchh:add_action("Bypass Fingerprint Hack", function()
		if hs:is_active() and hs:get_int(HS0FG)==3 or hs:get_int(HS0FG)==4 then
		hs:set_int(HS0FG, 5) end end)
		hadchh:add_action("Bypass Drill Vault Door", function()
		if hs:is_active() and hs:get_int(HS0VT)>=0 or hs:get_int(HS0VT)<=100 then
		hs:set_int(HS0VS, hs:get_int(HS0VT)) end end)
		hadchh:add_action("Remove CCTV", function() menu.remove_cctvs() end)
		hadchh:add_action("Kill All Mission NPCs", function() menu.kill_all_mission_peds() end)
		hadchh:add_action("Kill All NPCs", function() menu.kill_all_npcs() end)
		hadchh:add_action("Suicide [for Blackscreen Bug]", function() menu.suicide_player() end)
		
		hadchh:add_action("  _________________Teleport_________________", function() end)
			local function TP2L(TPx,TPy,TPz,Yaw,Pitch,Roll)
			localplayer:set_rotation(vector3(Yaw,Pitch,Roll)) localplayer:set_position((vector3(TPx, TPy, TPz))) end
			hadchh:add_action("Double Key Card", function()
			TP2L(2469.234863,-281.168030,-71.994225, -1.049023,0,0) end)
			hadchh:add_action("Bonus Room", function()
			TP2L(2521.906494, -287.172882, -60.022964, 0,0,0) end)
			hadchh:add_action("Laundry Room", function()
			TP2L(2536.455078, -300.772522, -60.022968, 0,0,0) end)
			hadchh:add_action("Staff Lobby Entrance", function()
			TP2L(2547.100098,-269.579987,-60.022987, 3.134611,0,0) end)
			hadchh:add_action("Staff Door Exit", function()
			TP2L(2547.458496, -277.744507, -59.741863, -0.071993, 0.005218, -0.113118) end)
			hadchh:add_action("Roof Exit", function()
			TP2L(2522.338379, -248.534760, -25.414972, 0,0,0) end)
		--
		
		hadchh:add_action("  _______________Modify Loot_______________", function()	end)
			local AMTOpt=1
			hadchh:add_array_item("(!85%+)Auto Max Take", { "Safe", "Max" }, function() return AMTOpt end, function(sf)
			if MaX==nil then return end AMTOpt=sf
			Car=stats.get_int("MP"..mpx().."_H3OPT_CREWDRIVER") Hck=stats.get_int("MP"..mpx().."_H3OPT_CREWHACKER") Gun=stats.get_int("MP"..mpx().."_H3OPT_CREWWEAP")
			if sf==1 then plmx=3300000 else plmx=3660000 end
			if OH then Wp,Dr,Hc=5,5,3 else if Gun==1 then Wp=5 elseif Gun==2 then Wp=9 elseif Gun==3 then Wp=7 elseif Gun==4 then Wp=10  elseif Gun==5 then Wp=8 end
			if Car==1 then Dr=5 elseif Car==2 then Dr=7 elseif Car==3 then Dr=9 elseif Car==4 then Dr=6 elseif Car==5 then Dr=10 end
			if Hck==1 then Hc=3 elseif Hck==2 then Hc=7 elseif Hck==3 then Hc=5 elseif Hck==4 then Hc=10 elseif Hck==5 then Hc=9 end end
			tke=math.floor((plmx*100/MaX)*((((10000/(100-Wp)-100)+(10000/(100-Dr)-100)+(10000/(100-Hc)-100)+(10000/95-100))+100)/100))
			if tke>4438000 then tke=4438000 end hs:set_int(HS0RT, tke) end)
		--
		
		hadchh:add_action("  __________________Spawn___________________", function() end)
			local function MYCREATE_VEHICLE(Hash,cord_x,cord_y,cord_z,pegasus)
			WP, WS, peg=2, 1, 0
			if Hash=="oppressor2" then WP=2 elseif Hash=="apc" or model=="deluxo" then WP=-1
			elseif Hash=="bombushka" then WP=1 elseif Hash=="tampa3" or model=="insurgent3" or model=="halftrack" then WP=3
			elseif Hash=="barrage" then WP=30 end
			globals.set_float(CrVO+7+0, cord_x) globals.set_float(CrVO+7+1, cord_y) globals.set_float(CrVO+7+2, cord_z)
			globals.set_int(CrVO+27+66, joaat(Hash))
			globals.set_int(CrVO+27+28, 1)  -- Weaponised ownerflag
			globals.set_int(CrVO+27+60, 1)
			globals.set_int(CrVO+27+95, 14) -- Ownerflag
			globals.set_int(CrVO+27+94, 2)  -- Personal car ownerflag
			globals.set_int(CrVO+5, 1)      -- SET('i',CarSpawn+0x1168, 1)  --can spawn flag must be odd
			globals.set_int(CrVO+2, 1)      -- SET('i',CarSpawn+0x1180, 1) --spawn toggle gets reset to 0 on car spawn
			globals.set_int(CrVO+3, peg)
			globals.set_int(CrVO+27+74, 1)
			globals.set_int(CrVO+27+75, 1)
			globals.set_int(CrVO+27+76, 0) -- RGB Neon Amount 1-255 100%-0%
			globals.set_int(CrVO+27+60, 1) -- Landinggear/vehstate
			globals.set_int(CrVO+27+5, -1)
			globals.set_int(CrVO+27+6, -1) -- Default paintjob primary,secondary 0-120 (-1>>auto)
			globals.set_int(CrVO+27+7, -1)
			globals.set_int(CrVO+27+8, -1)
			globals.set_int(CrVO+27+19, 4)
			globals.set_int(CrVO+27+21, 4)  -- Engine (0-3)
			globals.set_int(CrVO+27+22, 3)
			globals.set_int(CrVO+27+23, 3)  -- Transmission (0-9)
			globals.set_int(CrVO+27+24, 58)
			globals.set_int(CrVO+27+26, 5)  -- Armor (0-18)
			globals.set_int(CrVO+27+27, 1)  -- Turbo (0-1)
			globals.set_int(CrVO+27+65, 2)  -- Window tint 0-6
			globals.set_int(CrVO+27+69, -1) -- Wheel type
			globals.set_int(CrVO+27+33, -1) -- Wheel Selection
			globals.set_int(CrVO+27+25, 8)  -- Suspension (0-13)
			globals.set_int(CrVO+27+19, -1)
			globals.set_int(CrVO+27+15, WP)
			globals.set_int(CrVO+27+20, WS) -- Primary,secondary weapon
			end
			
			hadchh:add_action("Oppressor MK2 - Field", function() MYCREATE_VEHICLE("oppressor2",982.24,-27.73,81.0,0) end)
			hadchh:add_action("Police Maverick - Top Helipad", function() MYCREATE_VEHICLE("polmav",966.54,42.75,122.0,0) end)
			hadchh:add_action("Police Maverick - Side Gang Area", function() MYCREATE_VEHICLE("polmav",964.94,-131.53,73.5,0) end)
			
		--
	--
	
	local hadcm=hadc:add_submenu("Misc", function() end)
		local hadcm1=hadcm:add_action("Unlock Heist Reward", function()
			stats.set_int("MP"..mpx().."_CAS_HEIST_NOTS", -1)
			stats.set_int("MP"..mpx().."_CH_ARC_CAB_LOVE_TROPHY", -1)
			stats.set_int("MP"..mpx().."_SIGNAL_JAMMERS_COLLECTED", 50)
			stats.set_int("MP"..mpx().."_AWD_ODD_JOBS", 52)
			stats.set_int("MP"..mpx().."_AWD_PREPARATION", 40)
			stats.set_int("MP"..mpx().."_AWD_ASLEEPONJOB", 20)
			stats.set_int("MP"..mpx().."_AWD_DAICASHCRAB", 100000)
			stats.set_int("MP"..mpx().."_AWD_BIGBRO", 40)
			stats.set_int("MP"..mpx().."_AWD_SHARPSHOOTER", 40)
			stats.set_int("MP"..mpx().."_AWD_RACECHAMP", 40)
			stats.set_int("MP"..mpx().."_AWD_BATSWORD", 1000000)
			stats.set_int("MP"..mpx().."_AWD_COINPURSE", 950000)
			stats.set_int("MP"..mpx().."_AWD_ASTROCHIMP", 3000000)
			stats.set_int("MP"..mpx().."_AWD_MASTERFUL", 40000)
			stats.set_int("MP"..mpx().."_H3_BOARD_DIALOGUE0", -1)
			stats.set_int("MP"..mpx().."_H3_BOARD_DIALOGUE1", -1)
			stats.set_int("MP"..mpx().."_H3_BOARD_DIALOGUE2", -1)
			stats.set_int("MP"..mpx().."_CAS_HEIST_NOTS", -1)
			stats.set_int("MP"..mpx().."_H3_VEHICLESUSED", -1)
			stats.set_bool("MP"..mpx().."_AWD_FIRST_TIME1", true)
			stats.set_bool("MP"..mpx().."_AWD_FIRST_TIME2", true)
			stats.set_bool("MP"..mpx().."_AWD_FIRST_TIME3", true)
			stats.set_bool("MP"..mpx().."_AWD_FIRST_TIME4", true)
			stats.set_bool("MP"..mpx().."_AWD_FIRST_TIME5", true)
			stats.set_bool("MP"..mpx().."_AWD_FIRST_TIME6", true)
			stats.set_bool("MP"..mpx().."_AWD_ALL_IN_ORDER", true)
			stats.set_bool("MP"..mpx().."_AWD_SUPPORTING_ROLE", true)
			stats.set_bool("MP"..mpx().."_AWD_LEADER", true)
			stats.set_bool("MP"..mpx().."_AWD_ODD_JOBS", true)
			stats.set_bool("MP"..mpx().."_AWD_SURVIVALIST", true)
			stats.set_bool("MP"..mpx().."_AWD_SCOPEOUT", true)
			stats.set_bool("MP"..mpx().."_AWD_CREWEDUP", true)
			stats.set_bool("MP"..mpx().."_AWD_MOVINGON", true)
			stats.set_bool("MP"..mpx().."_AWD_PROMOCAMP", true)
			stats.set_bool("MP"..mpx().."_AWD_GUNMAN", true)
			stats.set_bool("MP"..mpx().."_AWD_SMASHNGRAB", true)
			stats.set_bool("MP"..mpx().."_AWD_INPLAINSI", true)
			stats.set_bool("MP"..mpx().."_AWD_UNDETECTED", true)
			stats.set_bool("MP"..mpx().."_AWD_ALLROUND", true)
			stats.set_bool("MP"..mpx().."_AWD_ELITETHEIF", true)
			stats.set_bool("MP"..mpx().."_AWD_PRO", true)
			stats.set_bool("MP"..mpx().."_AWD_SUPPORTACT", true)
			stats.set_bool("MP"..mpx().."_AWD_SHAFTED", true)
			stats.set_bool("MP"..mpx().."_AWD_COLLECTOR", true)
			stats.set_bool("MP"..mpx().."_AWD_DEADEYE", true)
			stats.set_bool("MP"..mpx().."_AWD_PISTOLSATDAWN", true)
			stats.set_bool("MP"..mpx().."_AWD_TRAFFICAVOI", true)
			stats.set_bool("MP"..mpx().."_AWD_CANTCATCHBRA", true)
			stats.set_bool("MP"..mpx().."_AWD_WIZHARD", true)
			stats.set_bool("MP"..mpx().."_AWD_APEESCAPE", true)
			stats.set_bool("MP"..mpx().."_AWD_MONKEYKIND", true)
			stats.set_bool("MP"..mpx().."_AWD_AQUAAPE", true)
			stats.set_bool("MP"..mpx().."_AWD_KEEPFAITH", true)
			stats.set_bool("MP"..mpx().."_AWD_TRUELOVE", true)
			stats.set_bool("MP"..mpx().."_AWD_NEMESIS", true)
			stats.set_bool("MP"..mpx().."_AWD_FRIENDZONED", true)
			stats.set_bool("MP"..mpx().."_VCM_FLOW_CS_RSC_SEEN", true)
			stats.set_bool("MP"..mpx().."_VCM_FLOW_CS_BWL_SEEN", true)
			stats.set_bool("MP"..mpx().."_VCM_FLOW_CS_MTG_SEEN", true)
			stats.set_bool("MP"..mpx().."_VCM_FLOW_CS_OIL_SEEN", true)
			stats.set_bool("MP"..mpx().."_VCM_FLOW_CS_DEF_SEEN", true)
			stats.set_bool("MP"..mpx().."_VCM_FLOW_CS_FIN_SEEN", true)
			stats.set_bool("MP"..mpx().."_CAS_VEHICLE_REWARD", true)
			stats.set_bool("MP"..mpx().."_HELP_FURIA", true)
			stats.set_bool("MP"..mpx().."_HELP_YOSEMITE2", true)
			stats.set_bool("MP"..mpx().."_HELP_ZHABA", true)
			stats.set_bool("MP"..mpx().."_HELP_IMORGEN", true)
			stats.set_bool("MP"..mpx().."_HELP_SULTAN2", true)
			stats.set_bool("MP"..mpx().."_HELP_VAGRANT", true)
			stats.set_bool("MP"..mpx().."_HELP_VSTR", true)
			stats.set_bool("MP"..mpx().."_HELP_STRYDER", true)
			stats.set_bool("MP"..mpx().."_HELP_SUGOI", true)
			stats.set_bool("MP"..mpx().."_HELP_KANJO", true)
			stats.set_bool("MP"..mpx().."_HELP_FORMULA", true)
			stats.set_bool("MP"..mpx().."_HELP_FORMULA2", true)
			stats.set_bool("MP"..mpx().."_HELP_JB7002", true)
		end)
		
	--
	
---

--- Doomsday Heist

	local had=ha:add_submenu("Doomsday Heist", function() end)
	
	local hadsp=had:add_submenu("Setup Preset", function() end)
	
		local hadfh=hadsp:add_submenu("Final Heist", function() end)
			local hadfh1=hadfh:add_action("The Data Breaches ACT I", function()
			stats.set_int("MP"..mpx().."_GANGOPS_FLOW_MISSION_PROG", 503)
			stats.set_int("MP"..mpx().."_GANGOPS_HEIST_STATUS", -229383)
			stats.set_int("MP"..mpx().."_GANGOPS_FLOW_NotifyS", 1557) end)
			
			local hadfh2=hadfh:add_action("The Bogdan Problem ACT II", function()
			stats.set_int("MP"..mpx().."_GANGOPS_FLOW_MISSION_PROG", 240)
			stats.set_int("MP"..mpx().."_GANGOPS_HEIST_STATUS", -229378)
			stats.set_int("MP"..mpx().."_GANGOPS_FLOW_NotifyS", 1557) end)
			
			local hadfh3=hadfh:add_action("The Doomsday Scenario ACT III", function()
			stats.set_int("MP"..mpx().."_GANGOPS_FLOW_MISSION_PROG", 16368)
			stats.set_int("MP"..mpx().."_GANGOPS_HEIST_STATUS", -229380)
			stats.set_int("MP"..mpx().."_GANGOPS_FLOW_NotifyS", 1557) end)
		--
		
		local hadp=hadsp:add_action("Complete Preparation [only]", function() 
			stats.set_int("MP"..mpx().."_GANGOPS_FM_MISSION_PROG", -1)  end)	
		--
		
		local hadl=hadsp:add_action("---", function() end)
		
		local hadr=hadsp:add_action("Reset Heist To Default", function() 
			stats.set_int("MP"..mpx().."_GANGOPS_FLOW_MISSION_PROG", 240)  
			stats.set_int("MP"..mpx().."_GANGOPS_HEIST_STATUS", 0)  
			stats.set_int("MP"..mpx().."_GANGOPS_FLOW_NotifyS", 1557) end)	
		--

	--
	
	local hadhh=had:add_submenu("Heist Helper", function() end)
		hadhh:add_action("Bypass Server Nodes Hack [ACT I]", function()
		if hs:is_active() then if hs:get_int(Nodes)>-1 and hs:get_int(Nodes)<100 then hs:set_int(Nodes, 2) end end end)
		hadhh:add_action("Bypass Beam Puzzle Hack [ACT III]", function()
		if hs:is_active() then if hs:get_int(Beam)>-1 and hs:get_int(Beam)<100 then hs:set_int(Beam, 3) end end end)
		hadhh:add_action("Remove CCTV", function() menu.remove_cctvs() end)
		hadhh:add_action("Kill All Mission NPCs", function() menu.kill_all_mission_peds() end)
		hadhh:add_action("Kill All NPCs", function() menu.kill_all_npcs() end)
		hadhh:add_action("Instant Finish Heist", function()
		if hs:is_active() then hs:set_int(HSIFD1, 12) hs:set_int(HSIFD2, 99999) hs:set_int(HSIFD3, 1) end end)
	--
	
	local hadm=had:add_submenu("Misc", function() end)
		local hadm1=hadm:add_action("Unlock All Doomsday Heist", function()
		stats.set_int("MP"..mpx().."_GANGOPS_HEIST_STATUS", -1)
		stats.set_int("MP"..mpx().."_GANGOPS_HEIST_STATUS", -229384) end)
		
		local hadm2=hadm:add_action("Unlock Heist Reward", function()
		stats.set_int("MP"..mpx().."_GANGOPS_FM_MISSION_PROG", -1)
		stats.set_int("MP"..mpx().."_GANGOPS_ALLINORDER", 100)
		stats.set_int("MP"..mpx().."_GANGOPS_LOYALTY", 100)
		stats.set_int("MP"..mpx().."_GANGOPS_CRIMMASMD", 100)
		stats.set_int("MP"..mpx().."_GANGOPS_LOYALTY2", 100)
		stats.set_int("MP"..mpx().."_GANGOPS_LOYALTY3", 100)
		stats.set_int("MP"..mpx().."_GANGOPS_CRIMMASMD2", 100)
		stats.set_int("MP"..mpx().."_GANGOPS_CRIMMASMD3", 100)
		stats.set_int("MP"..mpx().."_GANGOPS_SUPPORT", 100)
		stats.set_int("MP"..mpx().."_CR_GANGOP_MORGUE", 10)
		stats.set_int("MP"..mpx().."_CR_GANGOP_DELUXO", 10)
		stats.set_int("MP"..mpx().."_CR_GANGOP_SERVERFARM", 10)
		stats.set_int("MP"..mpx().."_CR_GANGOP_IAABASE_FIN", 10)
		stats.set_int("MP"..mpx().."_CR_GANGOP_STEALOSPREY", 10)
		stats.set_int("MP"..mpx().."_CR_GANGOP_FOUNDRY", 10)
		stats.set_int("MP"..mpx().."_CR_GANGOP_RIOTVAN", 10)
		stats.set_int("MP"..mpx().."_CR_GANGOP_SUBMARINECAR", 10)
		stats.set_int("MP"..mpx().."_CR_GANGOP_SUBMARINE_FIN", 10)
		stats.set_int("MP"..mpx().."_CR_GANGOP_PREDATOR", 10)
		stats.set_int("MP"..mpx().."_CR_GANGOP_BMLAUNCHER", 10)
		stats.set_int("MP"..mpx().."_CR_GANGOP_BCCUSTOM", 10)
		stats.set_int("MP"..mpx().."_CR_GANGOP_STEALTHTANKS", 10)
		stats.set_int("MP"..mpx().."_CR_GANGOP_SPYPLANE", 10)
		stats.set_int("MP"..mpx().."_CR_GANGOP_FINALE", 10)
		stats.set_int("MP"..mpx().."_CR_GANGOP_FINALE_P2", 10)
		stats.set_int("MP"..mpx().."_CR_GANGOP_FINALE_P3", 10)
		stats.set_bool("MP"..mpx().."_AWD_GANGOPS_SUBMARINE", true)
		stats.set_bool("MP"..mpx().."_AWD_GANGOPS_MISSILE", true)
		stats.set_bool("MP"..mpx().."_AWD_GANGOPS_IAA", true)
		stats.set_bool("MP"..mpx().."_AWD_GANGOPS_ALLINORDER", true)
		stats.set_bool("MP"..mpx().."_AWD_GANGOPS_LOYALTY", true)
		stats.set_bool("MP"..mpx().."_AWD_GANGOPS_LOYALTY2", true)
		stats.set_bool("MP"..mpx().."_AWD_GANGOPS_LOYALTY3", true)
		stats.set_bool("MP"..mpx().."_AWD_GANGOPS_CRIMMASMD", true)
		stats.set_bool("MP"..mpx().."_AWD_GANGOPS_CRIMMASMD2", true)
		stats.set_bool("MP"..mpx().."_AWD_GANGOPS_CRIMMASMD3", true) end)
	--
	
---

--- Apartment Heist

	-- local haa=ha:add_submenu("Apartment Heist", function() end)
		-- haa:add_action("Fleeca Circut Breaker", function()
		-- if hs:is_active() then if hs:get_int(VLSI)>-1 and hs:get_int(VLSI)<100 then hs:set_int(VLSI, 7) end end end)
	--
	
---

--- Credits. Where's the code come from

	local hac=ha:add_submenu("Credits", function() end)
		hac:add_action("Kiddion", function() end) -- For made kiddion's modest external menu
		hac:add_action("Roy007", function() end) -- Your code is inspiring me (ScriptStash)
		hac:add_action("IceDoomfist", function() end) -- Your code is inspiring me (Stand Heist Control)
		hac:add_action("KilllaB", function() end) -- Your code is inspiring me (Ultimate Controller)
		hac:add_action("Beholdmystuff", function() end) -- For make heist stat maker
		hac:add_action("UnknownCheats Community", function() end) -- For sharing knowledge
		hac:add_action("Others", function() end) -- Everyone whos give information
	--
	--[[
		Kiddion: https://www.unknowncheats.me/forum/members/1861563.html
		Roy007: https://www.unknowncheats.me/forum/members/4362780.html
		IceDoomfist: https://github.com/IceDoomfist
		KilllaB: https://www.unknowncheats.me/forum/members/4376084.html
		Beholdmystuff: https://github.com/beholdmystuff
		UnknownCheats Community: https://www.unknowncheats.me/forum/grand-theft-auto-v/
	]]--
	
---
