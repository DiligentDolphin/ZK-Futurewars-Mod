local unitDef = {
	unitname               = [[striderbantha]],
	name                   = [[Mogul]],
	description            = [[Ultraheavy Siege]],
	acceleration           = 0.1047,
	brakeRate              = 0.2212,
	buildCostMetal         = 20000,
	builder                = false,
	buildPic               = [[striderbantha.png]],
	canGuard               = true,
	canManualFire          = true,
	canMove                = true,
	canPatrol              = true,
	category               = [[LAND]],
	collisionVolumeOffsets = [[0 0 -2]],
	collisionVolumeScales  = [[60 80 60]],
	collisionVolumeType    = [[CylY]],
	corpse                 = [[DEAD]],

	customParams           = {
		extradrawrange = 700,
		aimposoffset   = [[0 -8 0]],
		midposoffset   = [[0 -8 0]],
		modelradius    = [[17]],
	},

	explodeAs              = [[ATOMIC_BLAST]],
	footprintX             = 4,
	footprintZ             = 4,
	iconType               = [[t3generic]],
	idleAutoHeal           = 320,
	idleTime               = 1800,
	leaveTracks            = true,
	losEmitHeight          = 60,
	maxDamage              = 32000,
	maxSlope               = 36,
	maxVelocity            = 1.55,
	maxWaterDepth          = 22,
	minCloakDistance       = 75,
	movementClass          = [[KBOT4]],
	noAutoFire             = false,
	noChaseCategory        = [[FIXEDWING SATELLITE SUB]],
	objectName             = [[Bantha.s3o]],
	selfDestructAs         = [[ATOMIC_BLAST]],
	script                 = [[striderbantha.lua]],
  
  sfxtypes               = {

		explosiongenerators = {
			[[custom:zeusmuzzle]],
			[[custom:zeusgroundflash]],
			[[custom:opticblast_charge]]
		},
	},
	sightDistance          = 720,
	trackOffset            = 0,
	trackStrength          = 8,
	trackStretch           = 0.5,
	trackType              = [[ComTrack]],
	trackWidth             = 42,
	turnRate               = 1056,
	upright                = true,
	workerTime             = 0,
	weapons                = {
		{
			def                = [[TRACKER]],
			--badTargetCategory  = [[FIXEDWING GUNSHIP]],
			onlyTargetCategory = [[SWIM LAND SHIP SINK TURRET FLOAT HOVER]],
		},

		{
		  def                = [[LIGHTNING]],
		  badTargetCategory  = [[FIXEDWING]],
		  onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
		},

		{
		  def                = [[EMP_MISSILE]],
		  onlyTargetCategory = [[ LAND SINK TURRET SHIP SWIM FLOAT HOVER]],
		},
	},
	weaponDefs             = {
		SECONDARY = {
			name                    = [[Fragmentation]],
			areaOfEffect            = 108,
			craterBoost             = 20,
			craterMult              = 2,
			customParams            = {
				burst = Shared.BURST_RELIABLE,
				force_ignore_ground = [[1]],

				light_color = [[3 2.33 1.5]],
				light_radius = 150,
			},
      
			damage                  = {
				default = 1000,
			},
			edgeEffectiveness = 0.2,
			explosionGenerator      = [[custom:TESS]],
			impulseBoost            = 0,
			impulseFactor           = 2,
			interceptedByShieldType = 1,
			noSelfDamage            = true,
			range                   = 450,
			reloadtime              = 3.5,
			soundHit                = [[explosion/ex_large9.wav]],
			--soundStart              = [[weapon/cannon/rhino]],
			turret                  = true,
			weaponType              = [[Cannon]],
			weaponVelocity          = 470,
		},
		PLASMA = {
			name                    = [[Fragmentation]],
			areaOfEffect            = 144,
			avoidFeature            = true,
			avoidFriendly           = true,
			burnblow                = true,
			craterBoost             = 1,
			craterMult              = 0.5,

			customParams            = {
				gatherradius = [[90]],
				smoothradius = [[60]],
				smoothmult   = [[0.08]],
				light_camera_height = 1500,
			},

			damage                  = {
				default = 260.2,
			},

			edgeEffectiveness       = 0.75,
			explosionGenerator      = [[custom:FLASH64]],
			impulseBoost            = 30,
			impulseFactor           = 0.6,
			interceptedByShieldType = 1,
			noSelfDamage            = true,
			range                   = 280,
			reloadtime              = 1.7 + 2/30,
			soundHit                = [[weapon/cannon/generic_cannon]],
			soundStart              = [[weapon/cannon/outlaw_gun]],
			soundStartVolume        = 3,
			turret                  = true,
			weaponType              = [[Cannon]],
			weaponVelocity          = 750,
		},
		TRACKER = {
			name                    = [[Missile Target Painter]],
			areaOfEffect            = 20,
			beamTime                = 0.01,
			coreThickness           = 0.5,
			craterBoost             = 0,
			craterMult              = 0,

			customParams            = {
				targeter = 1,
				--burst = Shared.BURST_RELIABLE,
				stats_hide_damage = 1, -- continuous laser
				stats_hide_reload = 1,
				light_color = [[1.25 0 0]],
				light_radius = 120,
			},
			damage                  = {
				default = 0.00,
			},
			--explosionGenerator      = [[custom:flash1red]],
			fireTolerance           = 8192, -- 45 degrees
			impactOnly              = true,
			impulseBoost            = 0,
			impulseFactor           = 0.4,
			interceptedByShieldType = 0,
			largeBeamLaser          = true,
			laserFlareSize          = 2,
			leadLimit               = 18,
			minIntensity            = 0.01,
			noSelfDamage            = true,
			range                   = 2800,
			reloadtime              = 1/15,
			sweapfire = false,
			rgbColor                = [[0.3 0 0]],
			rgbColor2				  = [[0.5 0 0]],
			soundStart              = [[weapon/laser/mogul-uplink]],
			--soundHit				  = [[trackercompleted.wav]]
			soundStartVolume        = 15,
			texture1                = [[largelaser]],
			texture2                = [[flare]],
			texture3                = [[flare]],
			texture4                = [[smallflare]],
			thickness               = 2,
			tolerance               = 10000,
			turret                  = true,
			weaponType              = [[BeamLaser]],
			weaponVelocity          = 1500,
		},
		EMP_MISSILE = {
			name                    = [[LGM-220 Barrage]],
			areaOfEffect            = 128,
			accuracy                = 512,
			avoidFeature            = false,
			avoidFriendly           = false,
			burst                   = 8,
			burstrate               = 0.7,
			cegTag                  = [[tactrail]],
			--commandFire             = true,
			craterBoost             = 0,
			craterMult              = 0,

			customParams            = {
				tracker = 1,
				combatrange = 2000,
				numprojectiles1 = 5, -- how many of the weapondef we spawn. OPTIONAL. Default: 1.
				projectile1 = "striderbantha_secondary",
				--spreadradius1 = 8, -- used in clusters. OPTIONAL. Default: 100.
				clustervec1 = "randomxyz", -- accepted values: randomx, randomy, randomz, randomxy, randomxz, randomyz, random. OPTIONAL. default: random.
				use2ddist = 0, -- should we check 2d or 3d distance? OPTIONAL. Default: 0.
				spawndist = 400, -- at what distance should we spawn the projectile(s)? REQUIRED.
				timeoutspawn = 1, -- Can this missile spawn its subprojectiles when it times out? OPTIONAL. Default: 1.
				vradius1 = "-8,2,-8,8,10,8", -- velocity that is randomly added. covers range of +-vradius. OPTIONAL. Default: 4.2
				light_color = [[0.65 0.65 0.18]],
				light_radius = 380,
				useheight = 1,
			},
			damage                  = {
				default        = 5*1000,
			},
			dance                   = 20,
			edgeEffectiveness       = 0.5,
			explosionGenerator      = [[custom:TORPEDOHITHUGE]],
			fireStarter             = 100,
			fixedlauncher           = true,
			flightTime              = 25,
			impulseBoost            = 0,
			impulseFactor           = 0,
			interceptedByShieldType = 2,
			model                   = [[banthamissile.s3o]],
			noSelfDamage            = true,
			range                   = 2900,
			reloadtime              = 30,
			smokeTrail              = false,
			soundHit                = [[explosion/ex_large9.wav]],
			soundStart              = [[weapon/missile/bantha_launch.wav]],
			soundStartVolume        = 15,
			startVelocity           = 20,
			tracks                  = true,
			trajectoryHeight        = 20,
			tolerance               = 512,
			turnRate                = 8000,
			turret                  = true,
			weaponAcceleration      = 100,
			weaponType              = [[StarburstLauncher]],
			weaponTimer			    = 5,
			weaponVelocity          = 850,
			--wobble                = 18000,
		},	
		LIGHTNING      = {
			name                    = [[Plasmatic Bomb]],
			areaOfEffect            = 0,
			craterBoost             = 0,
			craterMult              = 0,
			cegTag = [[tactrail]],
			customParams            = {
				gatherradius = [[105]],
				smoothradius = [[70]],
				smoothmult   = [[2]],
				light_camera_height = 2200,
				light_color = [[0.85 0.85 1.2]],
				light_radius = 200,
				numprojectiles1 = 3, -- how many of the weapondef we spawn. OPTIONAL. Default: 1.
				projectile1 = "striderbantha_plasma",
				--spreadradius1 = 8, -- used in clusters. OPTIONAL. Default: 100.
				clustervec1 = "randomxyz", -- accepted values: randomx, randomy, randomz, randomxy, randomxz, randomyz, random. OPTIONAL. default: random.
				use2ddist = 0, -- should we check 2d or 3d distance? OPTIONAL. Default: 0.
				spawndist = 100, -- at what distance should we spawn the projectile(s)? REQUIRED.
				timeoutspawn = 1, -- Can this missile spawn its subprojectiles when it times out? OPTIONAL. Default: 1.
				vradius1 = "-10,4,-10,10,6,10", -- velocity that is randomly added. covers range of +-vradius. OPTIONAL. Default: 4.2
				light_color = [[0.65 0.65 0.18]],
				light_radius = 380,
				useheight = 1,
			},
			damage                  = {
				default        = 180,
			},
			duration                = 10,
			explosionGenerator      = [[custom:TORPEDOHITHUGE]],
			fireStarter             = 50,
			impactOnly              = true,
			impulseBoost            = 60,
			impulseFactor           = 2.4,
			intensity               = 12,
			interceptedByShieldType = 1,
			range                   = 700,
			reloadtime              = 0.5,
			rgbColor                = [[1 0.25 0.25]],
			soundStart              = [[weapon/quantum_hit.wav]],
			soundStartVolume        = 3.8,
			soundTrigger            = true,
			sprayAngle              = 800,
			--texture1                = [[lightning]],
			thickness               = 10,
			turret                  = true,
			weaponType              = [[Cannon]],
			weaponVelocity          = 400,
		},
	},
	featureDefs            = {

		DEAD  = {
			blocking         = true,
			featureDead      = [[HEAP]],
			footprintX       = 4,
			footprintZ       = 4,
			object           = [[bantha_wreck.s3o]],
		},
		HEAP  = {
			blocking         = false,
			footprintX       = 4,
			footprintZ       = 4,
			object           = [[debris4x4b.s3o]],
		},

	},

}

return { striderbantha = unitDef }