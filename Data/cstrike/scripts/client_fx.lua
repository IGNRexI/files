-- Lines 5-9
function rand(lower, upper)
	return math.random(lower, upper)
end

-- Lines 15-19
function rand_real(lower, upper)
	return lower + (upper - lower) * math.random()
end

-- Lines 25-41
function rand_vector(lower, upper)
	local z = 1 - 2 * math.random()
	local r = math.sqrt(math.max(0, 1 - z * z))
	local phi = 2 * math.pi * math.random()
	local x = r * math.cos(phi)
	local y = r * math.sin(phi)
	local len = rand_real(lower, upper)

	return vector(x * len, y * len, z * len)
end

-- Lines 47-53
function lerp_vector(v0, v1, t)
	local s = 1 - t

	return vector(v0.x * s + v1.x * t, v0.y * s + v1.y * t, v0.z * s + v1.z * t)
end

pos = vector(0, 0, 0)
vel = vector(0, 0, 0)
color = vector(1, 1, 1)
life_time = 0
die_time = 1
start_alpha = 255
end_alpha = 0
start_size = 1
end_size = 1
size = 1
roll = 0
roll_delta = 0
width = 1
length = 2
offset = vector(0, 0, 0)
offset_normal = vector(0, 0, 0)

loadpcf("particles/cso2_muzzleflashes.pcf")
loadpcf("particles/cso2_blood_impact.pcf")
loadpcf("particles/cso2_blood_zombie.pcf")
loadpcf("particles/cso2_lobbysmoke.pcf")
loadpcf("particles/cso2_character_eff.pcf")
loadpcf("particles/fire_01.pcf")
loadpcf("particles/burning_fx.pcf")
loadpcf("particles/cso2_explosion.pcf")
loadpcf("particles/cso2_gen_fx.pcf")
loadpcf("particles/cso2_step_01.pcf")
loadpcf("particles/achievement2.pcf")
loadpcf("particles/combineball.pcf")
loadpcf("particles/rocket_fx.pcf")
loadpcf("particles/Vortigaunt_FX.pcf")
loadpcf("particles/water_impact.pcf")
precache("effects/muzzleflash4")
precache("effects/muzzleflashX")
precache("particle/particle_smokegrenade")
precache("particle/fire_particle_2/fire_particle_2")
precache("particle/smoke1/smoke1_nearcull2")
precache("particle/fire_burning_character/fire_burning_character")
precache("particle/vistaSmokev1/vistasmokev1_additive")
precache("particle/smoke2/smoke2")
precache("particle/smokesprites_0010")
precache("particle/warp1_warp")
precache("particle/blood_core")
precache("particle/particle_glow_03")

g_mat_fleck_wood = {
	"effects/fleck_wood1",
	"effects/fleck_wood2"
}
g_mat_fleck_cement = {
	"effects/fleck_cement1",
	"effects/fleck_cement2"
}
g_mat_fleck_tile = {
	"effects/fleck_tile1",
	"effects/fleck_tile2"
}

precache(g_mat_fleck_wood[1])
precache(g_mat_fleck_wood[2])
precache(g_mat_fleck_cement[1])
precache(g_mat_fleck_cement[2])
precache(g_mat_fleck_tile[1])
precache(g_mat_fleck_tile[2])

vec_origin = vector(0, 0, 0)

-- Lines 275-435
function fx_muzzle_view(data)
	if isflagactive(data.flags, CSO2_FLAG_ACTIVATE_SKILL) == true then
		pcf("muzzle_mboss")

		return
	end

	if data.silencer == true then
		pcf("muzzle_silencer")

		return
	end

	if data.weaponName == "weapon_mg3" then
		pcf("muzzle_mg3")
	elseif data.weaponName == "weapon_mount_mg" then
		pcf("muzzle_mg3")
	elseif data.weaponName == "weapon_rpg7" then
		pcf("muzzle_rpg7")
	elseif data.weaponName == "weapon_p228" then
		pcf("muzzle_p228")
	elseif data.weaponName == "weapon_ak47" then
		pcf("muzzle_ak47")
	elseif data.weaponName == "weapon_ak47flash" then
		pcf("muzzle_ak47_ss")
	elseif data.weaponName == "weapon_m4a1" then
		pcf("muzzle_m4a1")
	elseif data.weaponName == "weapon_m4a1flash" then
		pcf("muzzle_m4a1_ss")
	elseif data.weaponName == "weapon_awp" then
		pcf("muzzle_awp")
	elseif data.weaponName == "weapon_deagle" then
		pcf("muzzle_deagle")
	elseif data.weaponName == "weapon_fiveseven" then
		pcf("muzzle_fiveseven")
	elseif data.weaponName == "weapon_m3" then
		pcf("muzzle_m3")
	elseif data.weaponName == "weapon_xm1014" then
		pcf("muzzle_xm1014")
	elseif data.weaponName == "weapon_mac10" then
		pcf("muzzle_mac10")
	elseif data.weaponName == "weapon_mp5navy" then
		pcf("muzzle_mp5")
	elseif data.weaponName == "weapon_mp7" then
		pcf("muzzle_mp7")
	elseif data.weaponName == "weapon_ump45" then
		pcf("muzzle_ump45")
	elseif data.weaponName == "weapon_mount_cannon" then
		pcf("muzzle_apc")
	elseif data.weaponName == "weapon_pkmfire" then
		pcf("muzzle_pkmfire")
	elseif data.weaponName == "weapon_m3boom" then
		pcf("muzzle_m3boom")
	elseif data.weaponName == "weapon_mp7phoenix" and data.flags == 1 then
		pcf("muzzle_phoenix_ss")
	elseif data.weaponName == "weapon_deaglephoenix" and data.flags == 1 then
		pcf("muzzle_dep_ss")
	elseif data.weaponName == "weapon_m3dragon" then
		pcf("muzzle_m3dragon")
	elseif data.weaponType == "pistol" then
		pcf("muzzle_pistols")
	elseif data.weaponType == "smg" then
		pcf("muzzle_submachinegun")
	elseif data.weaponType == "rifle" then
		pcf("muzzle_rifles")
	elseif data.weaponType == "shotgun" then
		pcf("muzzle_shotguns")
	elseif data.weaponType == "snip" then
		pcf("muzzle_sniper")
	elseif data.weaponType == "mach" then
		pcf("muzzle_machinegun")
	elseif data.weaponType == "weapon_tmpmelt" then
		pcf("muzzle_tmp_ss")
	elseif data.weaponType == "weapon_tmpmeltplus" then
		pcf("muzzle_tmpmeltplus")
	else
		pcf("muzzle_pistols")
	end
end

-- Lines 457-569
function fx_muzzle_third(data)
	if isflagactive(data.flags, CSO2_FLAG_ACTIVATE_SKILL) == true then
		pcf("muzzle_mboss")

		return
	end

	if data.silencer == true then
		pcf("muzzle_silencer")

		return
	end

	if data.weaponName == "weapon_mg3" then
		pcf("muzzle_mg3")
	elseif data.weaponName == "weapon_mount_mg" then
		pcf("muzzle_mountmg")
	elseif data.weaponName == "weapon_rpg7" then
		pcf("muzzle_rpg7")
	elseif data.weaponName == "weapon_ak47" then
		pcf("muzzle_ak47")
	elseif data.weaponName == "weapon_ak47flash" then
		pcf("muzzle_ak47_ss")
	elseif data.weaponName == "weapon_m4a1" then
		pcf("muzzle_m4a1")
	elseif data.weaponName == "weapon_m4a1flash" then
		pcf("muzzle_m4a1_ss")
	elseif data.weaponName == "weapon_pkmfire" then
		pcf("muzzle_pkmfire")
	elseif data.weaponName == "weapon_m3boom" then
		pcf("muzzle_m3boom")
	elseif data.weaponName == "weapon_mp7phoenix" and data.flags == 1 then
		pcf("muzzle_phoenix_ss")
	elseif data.weaponName == "weapon_deaglephoenix" and data.flags == 1 then
		pcf("muzzle_dep_ss")
	elseif data.weaponName == "weapon_m3dragon" then
		pcf("muzzle_m3dragon")
	elseif data.weaponType == "pistol" then
		pcf("muzzle_pistols")
	elseif data.weaponType == "smg" then
		pcf("muzzle_submachinegun")
	elseif data.weaponType == "rifle" then
		pcf("muzzle_rifles")
	elseif data.weaponType == "shotgun" then
		pcf("muzzle_shotguns")
	elseif data.weaponType == "snip" then
		pcf("muzzle_sniper")
	elseif data.weaponType == "mach" then
		pcf("muzzle_machinegun")
	elseif data.weaponType == "weapon_tmpmelt" then
		pcf("muzzle_tmp_ss")
	else
		pcf("muzzle_pistols")
	end
end

-- Lines 589-733
function fx_muzzle_monster(data)
	if data.weaponType == 1 then
		pcf("muzzle_xm214")
	elseif data.weaponType == 2 then
		pcf("muzzle_helicopter")
	elseif data.weaponType == 3 then
		pcf("muzzle_bc_turret01")
	elseif data.weaponType == 4 then
		pcf("muzzle_bc_turret02")
	elseif data.weaponType == 5 then
		pcf("muzzle_bc_turret03")
	elseif data.weaponType == 6 then
		pcf("cso2_chieftain_a01_shoot")
	elseif data.weaponType == 7 then
		pcf("cso2_chieftain_a02_smoke")
	elseif data.weaponType == 8 then
		pcf("cso2_chieftain_a03_smoke")
	elseif data.weaponType == 9 then
		pcf("cso2_giant_a01_shoot")
	elseif data.weaponType == 10 then
		pcf("cso2_giant_a02_smoke")
	elseif data.weaponType == 11 then
		pcf("cso2_giant_a03_smoke")
	elseif data.weaponType == 12 then
		pcf("S_NPC_Shoot_01")
	elseif data.weaponType == 13 then
		pcf("cso2_chieftain_a04_smoke")
	elseif data.weaponType == 14 then
		pcf("cso2_giant_a04_shoot")
	elseif data.weaponType == 15 then
		pcf("ZM_range_shoot_01")
	elseif data.weaponType == 16 then
		pcf("ZM_range_blood_01")
	elseif data.weaponType == 17 then
		pcf("ZM_subboss_shoot_01")
	elseif data.weaponType == 18 then
		pcf("ZM_subboss_shoot_02")
	elseif data.weaponType == 19 then
		pcf("ZM_subboss_dash_01")
	elseif data.weaponType == 20 then
		pcf("ZM_bomb_dust_01")
	elseif data.weaponType == 22 then
		pcf("muzzle_zd_turret")
	elseif data.weaponType == 23 then
		pcf("zd_boss_throwattack_01")
	elseif data.weaponType == 24 then
		pcf("zd_boss_throwattack_02")
	elseif data.weaponType == 25 then
		pcf("zd_boss_jumplanding_01")
	elseif data.weaponType == 26 then
		pcf("zd_boss_nattack_01")
	elseif data.weaponType == 27 then
		pcf("zd_boss_nattack_02")
	elseif data.weaponType == 28 then
		pcf("zd_boss_swattack_01")
	elseif data.weaponType == 29 then
		pcf("zd_boss_scattack_01")
	elseif data.weaponType == 30 then
		pcf("zd_boss_fdust_01")
	elseif data.weaponType == 31 then
		pcf("cso2_wp_astart_01")
	elseif data.weaponType == 32 then
		pcf("cso2_zombie_cannon_fire")
	elseif data.weaponType == 33 then
		pcf("cso2_zombie_cannon_attack")
	elseif data.weaponType == 34 then
		pcf("cso2_zombie_drone_fire")
	else
		pcf("muzzle_bigcity_npc")
	end
end

-- Lines 775-853
function fx_blood(data)
	if isflagactive(data.flag, CSO2_FLAG_PIG) == true then
		life_time = 1

		emitter("mesh", "meshparticletest")
		spawn()
		pcf("pig_impact_hit_01")
	elseif isflagactive(data.flag, CSO2_FLAG_PROP) == true then
		pcf("blood_impact_red_01")
	elseif isflagactive(data.flag, CSO2_FLAG_CHICKEN) == true then
		emitter("mesh", "feather")
		spawn()
	elseif isflagactive(data.flag, CSO2_FLAG_ZOMBIE) == true then
		pcf("blood_impact_red_01")
	elseif data.hitgroup == 1 then
		pcf("blood_impact_headshot_01")
	else
		pcf("blood_impact_red_01")
	end
end

-- Lines 859-937
function fx_blood_teen(data)
	if isflagactive(data.flag, CSO2_FLAG_PIG) == true then
		life_time = 1

		emitter("mesh", "meshparticletest")
		spawn()
		pcf("pig_impact_hit_01")
	elseif isflagactive(data.flag, CSO2_FLAG_PROP) == true then
		pcf("blood_impact_teen_01")
	elseif isflagactive(data.flag, CSO2_FLAG_CHICKEN) == true then
		emitter("mesh", "feather")
		spawn()
	elseif isflagactive(data.flag, CSO2_FLAG_ZOMBIE) == true then
		pcf("blood_impact_teen_01")
	elseif data.hitgroup == 1 then
		pcf("blood_impact_teen_01")
	else
		pcf("blood_impact_teen_01")
	end
end

-- Lines 943-977
function fx_blood_npc(data)
	if data.ishuman == true then
		if data.hitgroup == 1 then
			pcf("blood_impact_npc_01")
		else
			pcf("blood_impact_npc_01")
		end
	else
		pcf("S_NPC_Hit_01")
	end
end

-- Lines 983-1153
function fx_explosion(data)
	if data.type == 1 then
		pcf("cso2_bigcity_boom")
	elseif data.type == 2 then
		pcf("cso2_bigcity_boom_small")
	elseif data.type == 3 then
		pcf("cso2_rpg7missile_boom")
	elseif data.type == 4 then
		pcf("cso2_bc_turret_boom")
	elseif data.type == 5 then
		pcf("cso2_bc_warship_boom_small")
	elseif data.type == 6 then
		pcf("cso2_bc_warship_boom")
	elseif data.type == 7 then
		pcf("cso2_bc_helicopter_boom")
	elseif data.type == 8 then
		pcf("cso2_apc_boom")
	elseif data.type == 9 then
		pcf("cso2_fortune_01")
	elseif data.type == 10 then
		pcf("mboss_boom")
	elseif data.type == 11 then
		pcf("S_NPC_Boom_01")
	elseif data.type == 12 then
		pcf("ZM_train_boom_01")
	elseif data.type == 13 then
		pcf("ZM_bomb_explore_01")
	elseif data.type == 14 then
		pcf("cso2_mila_hegrenade")
	elseif data.type == 15 then
		pcf("cso2_tl_boom_01")
	elseif data.type == 16 then
		pcf("cso2_hegrenade_vip")
	elseif data.type == 17 then
		pcf("cso2_wp_astart_01")
	elseif data.type == 18 then
		pcf("cso2_xmas_sboom_01")
	elseif data.type == 19 then
		pcf("cso2_zombie_cannon_death")
	elseif data.type == 20 then
		pcf("cso2_zombie_cannon_boom")
	elseif data.type == 21 then
		pcf("cso2_zombie_drone_death")
	elseif data.type == 22 then
		pcf("smokegrenade_rocket_boom")
	elseif data.type == 23 then
		pcf("cso2_zz_boom_01")
	elseif data.type == 24 then
		pcf("cso2_wp_ruby_01")
	elseif data.type == 25 then
		pcf("zz_phoenix_boom")
	else
		pcf("cso2_hegrenade_02_16")
	end
end

-- Lines 1159-1163
function fx_flashbang(data)
	devmsg("fx_flashbang - not implemented")
end

-- Lines 1169-1173
function fx_smokegrenade(data)
	devmsg("fx_flashbang - not implemented")
end

-- Lines 1181-1185
function fx_chickendie(data)
	pcf("chicken_death_01")
end

-- Lines 1191-1195
function fx_zombie_gen(data)
	pcf("ZM_zombie_gen_01")
end

-- Lines 1201-1205
function fx_vaccine_bomb(data)
	pcf("cso2_zm_vaccine_explore_01")
end

-- Lines 1211-1215
function fx_zombiewall_boom(data)
	pcf("ZM_body_boom_01")
end

-- Lines 1219-1223
function fx_propplayer_death(data)
	pcf("cso2_hide_boom")
end

-- Lines 1227-1231
function fx_player_turn_to_ice(data)
	pcf("cso2_hide_istart_01")
end

-- Lines 1235-1239
function fx_player_recover_from_ice(data)
	pcf("cso2_hide_iend_01")
end

-- Lines 1245-1249
function fx_propfix_hit(data)
	pcf("cso2_zh_hit_01")
end

-- Lines 1255-1259
function fx_propfix_fix(data)
	pcf("cso2_zh_fix_01")
end

-- Lines 1265-1269
function fx_propfix_boom(data)
	pcf("cso2_zh_boom_01")
end

-- Lines 1275-1279
function fx_propfix_fix_free(data)
	pcf("cso2_zh_free_01")
end

-- Lines 1285-1289
function fx_propfix_fix_free_end(data)
	pcf("cso2_zh_fdone_01")
end

-- Lines 1293-1297
function fx_player_teleport(data)
	pcf("cso2_hide_teleport_01")
end

-- Lines 1301-1305
function fx_spawn_prop_death(data)
	pcf("cso2_hide_xboom")
end

-- Lines 1309-1313
function fx_hideitem_itembox_boom(data)
	pcf("cso2_hide_itembox_boom")
end

-- Lines 1317-1345
function fx_prop_action(data)
	if data.modelName == "hide_securityguard" then
		pcf("cso2_ap_body")
	elseif data.modelName == "hide_fire_extinguisher" then
		pcf("cso2_ap_fire")
	elseif data.modelName == "hide_coffee_maker" then
		pcf("cso2_ap_coffee")
	elseif data.modelName == "hide_oildrum001" then
		pcf("cso2_ap_drum")
	else
		local warningMessage = string.format("fx_prop_action - not exist Type : client_fx.lua : %s\n", data.modelName)

		devwarning(warningMessage)
	end
end

-- Lines 1481-1485
function fx_change_zombie(data)
	pcf("cso2_zombie_gen_01")
end

-- Lines 1491-1613
function zombie_death_fx(data)
end

-- Lines 1619-1741
function pig_death_fx(data)
end

intro_elapsedTime = 0

-- Lines 1755-1759
function fx_intro(data)
	pcf("cso2_lobbysmoke_wall_02")
end

-- Lines 1763-1767
function fx_vip_intro(data)
	pcf("cso2_lobby_vip")
end

-- Lines 1771-1805
function blood_coin(data)
	emitter("mesh", "bloodcoin")

	local scale = 50

	for i = 1, 4 do
		life_time = rand_real(2.5, 3)

		setoffset(vector(rand_real(-scale, scale), rand_real(-scale, scale), rand_real(300, 500)))
		spawn()
	end

	for i = 1, 4 do
		life_time = rand_real(1, 1.5)

		setoffset(vector(rand_real(-scale, scale), rand_real(-scale, scale), rand_real(300, 500)))
		spawn()
	end
end
