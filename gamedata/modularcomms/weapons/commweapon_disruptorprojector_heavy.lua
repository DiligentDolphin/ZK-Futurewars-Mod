local name = "commweapon_disruptorprojector_heavy"
local weaponDef = {
	name                    = [[Heavy Disruptor Projector]],
	areaOfEffect            = 140,
	beamDecay               = 0.9,
	beamTime                = 1/3,
	beamttl                 = 20,
	coreThickness           = 2.3,
	craterBoost             = 0,
	craterMult              = 0,

	customParams            = {
		is_unit_weapon = 1,
		slot = [[5]],
		--timeslow_preset = [[commrecon_slowbeam]],
		timeslow_damagefactor = [[4]],
		timeslow_smartretarget = [[0.5]],
		timeslow_overslow_frames = 2*30, -- 2s before decay
		stats_hide_damage = 1, -- continuous laser
        stats_hide_reload = 1,
		light_camera_height = 1800,
		light_color = [[0.8 0.22 0.7]],
		light_radius = 200,
		reaim_time = 1,
	},

	damage                  = {
		default = 600.1,
	},
	edgeEffectiveness		= 0.01,
	explosionGenerator      = [[custom:heavybeampurpleimpact]],
	fireStarter             = 30,
	impactOnly              = false,
	impulseBoost            = 0,
	impulseFactor           = 0.4,
	interceptedByShieldType = 1,
	largeBeamLaser          = true,
	laserFlareSize          = 6,
	minIntensity            = 1,
	noSelfDamage            = true,
	range                   = 450,
	reloadtime              = 4,
	rgbColor                = [[0.8 0.22 0.7]],
	soundStart              = [[weapon/laser/heavydisruptor2.wav]],
	soundStartVolume        = 3,
	soundTrigger            = true,
	sweepfire               = false,
	texture1                = [[laser3]],
	texture2                = [[flare]],
	texture3                = [[flare]],
	texture4                = [[smallflare]],
	thickness               = 5,
	tolerance               = 18000,
	turret                  = true,
	weaponType              = [[BeamLaser]],
	weaponVelocity          = 500,
}

return name, weaponDef