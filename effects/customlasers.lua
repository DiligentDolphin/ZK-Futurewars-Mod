return {
	["beamlaser_hit_emerald"] = {
		usedefaultexplosions = false,
		glow = {
			air                = true,
			class              = [[explspike]],
			count              = 1,
			ground             = true,
			water              = true,
			properties = {
				alpha              = 1,
				alphadecay         = 0.0625,
				alwaysvisible      = false,
				color              = [[0.043, 0.4, 0.274]],
				dir                = [[-4 r8, -4 r8, -4 r8]],
				length             = 1,
				lengthgrowth       = 1,
				width              = 8,
			},
		},
		groundflash = {
			circlealpha        = 1,
			circlegrowth       = 0.125,
			flashalpha         = 0.5,
			flashsize          = 8,
			ttl                = 64,
			color = {
				[1]  = 0.1255,
				[2]  = 0.25098,
				[3]  = 0,
			},
		},
		sphere = {
			air                = true,
			class              = [[CSpherePartSpawner]],
			count              = 1,
			ground             = true,
			water              = true,
			underwater 		 = true,
			properties = {
				alpha              = 0.25,
				color              = [[0.043, 0.4, 0.274]],
				expansionspeed     = 12,
				ttl                = 5,
			},
		},
		sparks = {
			class              = [[CSimpleParticleSystem]],
			count              = 1,
			ground             = true,
			unit               = 1,
			properties = {
				airdrag            = 0.97,
				alwaysvisible      = true,
				colormap           = [[0.033 0.28 0.204 0.01   0.01 0.01 0.005 0.01]],
				directional        = true,
				emitrot            = 0,
				emitrotspread      = 80,
				emitvector         = [[0, 1, 0]],
				gravity            = [[0, -0.4, 0]],
				numparticles       = 4,
				particlelife       = 15,
				particlelifespread = 0,
				particlesize       = 3,
				particlesizespread = 2,
				particlespeed      = 6,
				particlespeedspread = 4,
				pos                = [[0, 0, 0]],
				sizegrowth         = 0,
				sizemod            = 1.0,
				texture            = [[plasma]],
			},
		},
		steam = {
			class              = [[CSimpleParticleSystem]],
			count              = 1,
			water              = true,
			properties = {
				airdrag            = 0.75,
				alwaysvisible      = false,
				colormap           = [[0.5 0.5 0.5 0.5   0.05 0.05 0.05 0.05]],
				directional        = false,
				emitrot            = 0,
				emitrotspread      = 5,
				emitvector         = [[0, 1, 0]],
				gravity            = [[0, 1, 0]],
				numparticles       = 1,
				particlelife       = 12,
				particlelifespread = 8,
				particlesize       = 6,
				particlesizespread = 4,
				particlespeed      = 0,
				particlespeedspread = 2,
				pos                = [[0, 0, 0]],
				sizegrowth         = 0,
				sizemod            = 1.0,
				texture            = [[smokesmall]],
			},
		},
	},
	["heavybeamgreenimpact"] = {
		groundflash = {
			air                = true,
			alwaysvisible      = true,
			circlealpha        = 0.2,
			circlegrowth       = 4,
			flashalpha         = 0.5,
			flashsize          = 55,
			ground             = true,
			ttl                = 10,
			water              = true,
			color = {
				[1]  = 0,
				[2]  = 0.8,
				[3]  = 0,
			},
		},
		poof02 = {
			air                = true,
			class              = [[CSimpleParticleSystem]],
			count              = 1,
			ground             = true,
			water              = true,
			properties = {
				airdrag            = 0.8,
				alwaysvisible      = true,
				colormap           = [[0.1 0.8 0.1 0.01	0.2 0.8 0.2 0.01	0.0 0.0 0.0 0.01]],
				directional        = false,
				emitrot            = 45,
				emitrotspread      = 32,
				emitvector         = [[0, 1, 0]],
				gravity            = [[0, -0.005, 0]],
				numparticles       = 8,
				particlelife       = 5,
				particlelifespread = 8,
				particlesize       = 10,
				particlesizespread = 0,
				particlespeed      = 8,
				particlespeedspread = 3,
				pos                = [[0, 2, 0]],
				sizegrowth         = 0.8,
				sizemod            = 1.0,
				texture            = [[randdots]],
				useairlos          = false,
			},
		},
		pop1 = {
			air                = true,
			class              = [[heatcloud]],
			count              = 2,
			ground             = true,
			water              = true,
			properties = {
				alwaysvisible      = true,
				heat               = 10,
				heatfalloff        = 1,
				maxheat            = 10,
				pos                = [[0, 5, 0]],
				size               = 0.2,
				sizegrowth         = 8,
				speed              = [[0, 0, 0]],
				texture            = [[greennovaexplo]],
			},
		},
		pop2 = {
			air                = true,
			class              = [[heatcloud]],
			count              = 2,
			ground             = true,
			water              = true,
			properties = {
				alwaysvisible      = true,
				heat               = 10,
				heatfalloff        = 2,
				maxheat            = 15,
				pos                = [[r-3 r3, 5, r-3 r3]],
				size               = 0.2,
				sizegrowth         = 4,
				speed              = [[0, 1, 0]],
				texture            = [[2explo]],
			},
		},
	},
	["heavybeamgreenimpactsmall"] = {
		groundflash = {
			air                = true,
			alwaysvisible      = true,
			circlealpha        = 0.2,
			circlegrowth       = 4,
			flashalpha         = 0.5,
			flashsize          = 5,
			ground             = true,
			ttl                = 10,
			water              = true,
			color = {
				[1]  = 0,
				[2]  = 0.8,
				[3]  = 0,
			},
		},
		poof02 = {
			air                = true,
			class              = [[CSimpleParticleSystem]],
			count              = 1,
			ground             = true,
			water              = true,
			properties = {
				airdrag            = 0.8,
				alwaysvisible      = true,
				colormap           = [[0.1 0.8 0.1 0.01	0.2 0.8 0.2 0.01	0.0 0.0 0.0 0.01]],
				directional        = false,
				emitrot            = 45,
				emitrotspread      = 32,
				emitvector         = [[0, 1, 0]],
				gravity            = [[0, -0.005, 0]],
				numparticles       = 8,
				particlelife       = 5,
				particlelifespread = 8,
				particlesize       = 10,
				particlesizespread = 0,
				particlespeed      = 8,
				particlespeedspread = 3,
				pos                = [[0, 2, 0]],
				sizegrowth         = 0.8,
				sizemod            = 0.5,
				texture            = [[randdots]],
				useairlos          = false,
			},
		},
		pop1 = {
			air                = true,
			class              = [[heatcloud]],
			count              = 2,
			ground             = true,
			water              = true,
			properties = {
				alwaysvisible      = true,
				heat               = 10,
				heatfalloff        = 1,
				maxheat            = 10,
				pos                = [[0, 5, 0]],
				size               = 0.2,
				sizegrowth         = 4,
				speed              = [[0, 0, 0]],
				texture            = [[greennovaexplo]],
			},
		},
		pop2 = {
			air                = true,
			class              = [[heatcloud]],
			count              = 2,
			ground             = true,
			water              = true,
			properties = {
				alwaysvisible      = true,
				heat               = 10,
				heatfalloff        = 2,
				maxheat            = 15,
				pos                = [[r-3 r3, 5, r-3 r3]],
				size               = 0.2,
				sizegrowth         = 4,
				speed              = [[0, 1, 0]],
				texture            = [[2explo]],
			},
		},
	},
	["heavybeampurpleimpact"] = {
		groundflash = {
			air                = true,
			alwaysvisible      = true,
			circlealpha        = 0.2,
			circlegrowth       = 4,
			flashalpha         = 0.5,
			flashsize          = 55,
			ground             = true,
			ttl                = 10,
			water              = true,
			color = {
				[1]  = 0.8,
				[2]  = 0.0,
				[3]  = 0.8,
			},
		},
		poof02 = {
			air                = true,
			class              = [[CSimpleParticleSystem]],
			count              = 1,
			ground             = true,
			water              = true,
			properties = {
				airdrag            = 0.8,
				alwaysvisible      = true,
				colormap           = [[0.1 0.8 0.1 0.01	0.2 0.8 0.2 0.01	0.0 0.0 0.0 0.01]],
				directional        = false,
				emitrot            = 45,
				emitrotspread      = 32,
				emitvector         = [[0, 1, 0]],
				gravity            = [[0, -0.005, 0]],
				numparticles       = 8,
				particlelife       = 5,
				particlelifespread = 8,
				particlesize       = 10,
				particlesizespread = 0,
				particlespeed      = 8,
				particlespeedspread = 3,
				pos                = [[0, 2, 0]],
				sizegrowth         = 0.8,
				sizemod            = 1.0,
				texture            = [[randdots]],
				useairlos          = false,
			},
		},
		pop1 = {
			air                = true,
			class              = [[heatcloud]],
			count              = 2,
			ground             = true,
			water              = true,
			properties = {
				alwaysvisible      = true,
				heat               = 10,
				heatfalloff        = 1,
				maxheat            = 10,
				pos                = [[0, 5, 0]],
				size               = 0.2,
				sizegrowth         = 8,
				speed              = [[0, 0, 0]],
				texture            = [[purplenovaexplo]],
			},
		},
		pop2 = {
			air                = true,
			class              = [[heatcloud]],
			count              = 2,
			ground             = true,
			water              = true,
			properties = {
				alwaysvisible      = true,
				heat               = 10,
				heatfalloff        = 2,
				maxheat            = 15,
				pos                = [[r-3 r3, 5, r-3 r3]],
				size               = 0.2,
				sizegrowth         = 4,
				speed              = [[0, 1, 0]],
				texture            = [[2explo]],
			},
		},
	},
}
