local name = "commweapon_beamlaser_heavy"
local weaponDef = {
	name                    = [[Heavy Beam Laser]],
	areaOfEffect            = 14,
	beamTime                = 1.1,
	coreThickness           = 0.5,
	craterBoost             = 0,
	craterMult              = 0,

	customParams            = {
		is_unit_weapon = 1,
		slot = [[5]],
		muzzleEffectShot = [[custom:BEAMWEAPON_MUZZLE_GREEN]],
		stats_hide_damage = 1, -- continuous laser
		stats_hide_reload = 1,
		
		light_color = [[0 0.5 0]],
		light_radius = 120,
		reaim_time = 1,
	},

	damage                  = {
		default = 1400.1,
	},

	duration                = 0.1,
	edgeEffectiveness       = 0.05,
	explosionGenerator      = [[custom:heavybeamgreenimpactsmall]],
	fireStarter             = 70,
	impactOnly              = true,
	impulseBoost            = 0,
	impulseFactor           = 0.4,
	interceptedByShieldType = 1,
	largeBeamLaser          = true,
	laserFlareSize          = 5.5,
	minIntensity            = 1,
	noSelfDamage            = true,
	range                   = 650,
	reloadtime              = 10.5,
	rgbColor                = [[0 0.8 0]],
	soundStart              = [[weapon/laser/heavybeamlaser]],
	soundTrigger            = true,
	texture1                = [[largelaser]],
	texture2                = [[flare]],
	texture3                = [[flare]],
	texture4                = [[smallflare]],
	thickness               = 16.937384685954,
	tolerance               = 10000,
	turret                  = true,
	weaponType              = [[BeamLaser]],
	weaponVelocity          = 1000,
}

return name, weaponDef
