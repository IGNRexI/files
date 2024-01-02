layer_set = {
	{
		name = "hide_chicken",
		layers = {
			{
				name = "lowerBody"
			},
			{
				name = "upperBody"
			}
		},
		behaviors = {
			{
				"default",
				{
					0,
					"if",
					"[STATE] = jump",
					-1,
					1
				},
				{
					1,
					"transition",
					sync = 1,
					priority = 1,
					blend = 0.2,
					sequence = "[STATE]_lower",
					layer = "lowerBody"
				}
			},
			{
				"jump",
				{
					0,
					"transition",
					priority = 2,
					blend = 0,
					bind = 0.3,
					force = 1,
					sequence = "fly",
					layer = "lowerBody"
				}
			},
			{
				"land",
				{
					0,
					"if",
					"[STATE] = jump",
					-1,
					1
				},
				{
					1,
					"transition",
					priority = 4,
					blend = 0.2,
					bind = 0.6,
					sequence = "land_stand",
					layer = "lowerBody"
				}
			},
			{
				"shout",
				{
					0,
					"if",
					"[STATE] = idle",
					1,
					2
				},
				{
					1,
					"transition",
					sync = 1,
					priority = 5,
					blend = 0.2,
					greater = 1,
					sequence = "idle_shout",
					layer = "upperBody"
				},
				{
					2,
					"transition",
					sync = 1,
					priority = 5,
					blend = 0.2,
					greater = 1,
					sequence = "run_shout",
					layer = "upperBody"
				}
			},
			{
				"downhill",
				{
					0,
					"transition",
					priority = 3,
					blend = 0.2,
					bind = 1,
					greater = 1,
					sequence = "fly_loop",
					layer = "lowerBody"
				}
			}
		},
		transitions = {
			{
				event = "jump",
				behavior = "jump"
			},
			{
				event = "land",
				behavior = "land"
			},
			{
				event = "fire_primary",
				behavior = "shout"
			},
			{
				event = "fire_secondary",
				behavior = "downhill"
			}
		}
	},
	{
		name = "hide_securityguard",
		layers = {
			{
				name = "lowerBody"
			},
			{
				name = "upperBody"
			}
		},
		behaviors = {
			{
				"default",
				{
					0,
					"if",
					"([STATE] = jump) | ([STATE] = walk)",
					-1,
					1
				},
				{
					1,
					"transition",
					sync = 1,
					priority = 1,
					blend = 0.2,
					sequence = "[STATE]",
					layer = "lowerBody"
				}
			},
			{
				"action_test",
				{
					0,
					"transition",
					loop = 1,
					priority = 3,
					blend = 0.2,
					bind = 1,
					greater = 1,
					sequence = "Act_01",
					layer = "lowerBody"
				}
			},
			{
				"action_stop",
				{
					0,
					"transition",
					priority = 3,
					blend = 0.2,
					bind = 1,
					greater = 1,
					sequence = "idle",
					layer = "lowerBody"
				}
			}
		},
		transitions = {
			{
				event = "prop_action",
				behavior = "action_test"
			},
			{
				event = "prop_action_stop",
				behavior = "action_stop"
			}
		}
	},
	{
		name = "hide_ticketmachine",
		layers = {
			{
				name = "lowerBody"
			},
			{
				name = "upperBody"
			}
		},
		behaviors = {
			{
				"default",
				{
					0,
					"transition",
					sync = 1,
					priority = 1,
					blend = 0.2,
					sequence = "idle",
					layer = "lowerBody"
				}
			},
			{
				"action_test",
				{
					0,
					"transition",
					loop = 1,
					priority = 3,
					blend = 0.2,
					bind = 1,
					greater = 1,
					sequence = "Act_01",
					layer = "lowerBody"
				}
			},
			{
				"action_stop",
				{
					0,
					"transition",
					priority = 3,
					blend = 0.2,
					bind = 1,
					greater = 1,
					sequence = "idle",
					layer = "lowerBody"
				}
			}
		},
		transitions = {
			{
				event = "prop_action",
				behavior = "action_test"
			},
			{
				event = "prop_action_stop",
				behavior = "action_stop"
			}
		}
	},
	{
		name = "hide_phone",
		layers = {
			{
				name = "lowerBody"
			},
			{
				name = "upperBody"
			}
		},
		behaviors = {
			{
				"default",
				{
					0,
					"transition",
					sync = 1,
					priority = 1,
					blend = 0.2,
					sequence = "idle",
					layer = "lowerBody"
				}
			},
			{
				"action_test",
				{
					0,
					"transition",
					loop = 1,
					priority = 3,
					blend = 0.2,
					bind = 1,
					greater = 1,
					sequence = "Act_01",
					layer = "lowerBody"
				}
			},
			{
				"action_stop",
				{
					0,
					"transition",
					priority = 3,
					blend = 0.2,
					bind = 1,
					greater = 1,
					sequence = "idle",
					layer = "lowerBody"
				}
			}
		},
		transitions = {
			{
				event = "prop_action",
				behavior = "action_test"
			},
			{
				event = "prop_action_stop",
				behavior = "action_stop"
			}
		}
	},
	{
		name = "hide_file_box",
		layers = {
			{
				name = "lowerBody"
			},
			{
				name = "upperBody"
			}
		},
		behaviors = {
			{
				"default",
				{
					0,
					"transition",
					sync = 1,
					priority = 1,
					blend = 0.2,
					sequence = "idle",
					layer = "lowerBody"
				}
			},
			{
				"action_test",
				{
					0,
					"transition",
					loop = 1,
					priority = 3,
					blend = 0.2,
					bind = 1,
					greater = 1,
					sequence = "Act_01",
					layer = "lowerBody"
				}
			},
			{
				"action_stop",
				{
					0,
					"transition",
					priority = 3,
					blend = 0.2,
					bind = 1,
					greater = 1,
					sequence = "idle",
					layer = "lowerBody"
				}
			}
		},
		transitions = {
			{
				event = "prop_action",
				behavior = "action_test"
			},
			{
				event = "prop_action_stop",
				behavior = "action_stop"
			}
		}
	},
	{
		name = "hide_file_cabinet_01",
		layers = {
			{
				name = "lowerBody"
			},
			{
				name = "upperBody"
			}
		},
		behaviors = {
			{
				"default",
				{
					0,
					"transition",
					sync = 1,
					priority = 1,
					blend = 0.2,
					sequence = "idle",
					layer = "lowerBody"
				}
			},
			{
				"action_test",
				{
					0,
					"transition",
					loop = 1,
					priority = 3,
					blend = 0.2,
					bind = 1,
					greater = 1,
					sequence = "Act_01",
					layer = "lowerBody"
				}
			},
			{
				"action_stop",
				{
					0,
					"transition",
					priority = 3,
					blend = 0.2,
					bind = 1,
					greater = 1,
					sequence = "idle",
					layer = "lowerBody"
				}
			}
		},
		transitions = {
			{
				event = "prop_action",
				behavior = "action_test"
			},
			{
				event = "prop_action_stop",
				behavior = "action_stop"
			}
		}
	},
	{
		name = "hide_fire_extinguisher",
		layers = {
			{
				name = "lowerBody"
			},
			{
				name = "upperBody"
			}
		},
		behaviors = {
			{
				"default",
				{
					0,
					"transition",
					sync = 1,
					priority = 1,
					blend = 0.2,
					sequence = "idle",
					layer = "lowerBody"
				}
			},
			{
				"action_test",
				{
					0,
					"transition",
					loop = 1,
					priority = 3,
					blend = 0.2,
					bind = 1,
					greater = 1,
					sequence = "Act_01",
					layer = "lowerBody"
				}
			},
			{
				"action_stop",
				{
					0,
					"transition",
					priority = 3,
					blend = 0.2,
					bind = 1,
					greater = 1,
					sequence = "idle",
					layer = "lowerBody"
				}
			}
		},
		transitions = {
			{
				event = "prop_action",
				behavior = "action_test"
			},
			{
				event = "prop_action_stop",
				behavior = "action_stop"
			}
		}
	},
	{
		name = "hide_horse",
		layers = {
			{
				name = "lowerBody"
			},
			{
				name = "upperBody"
			}
		},
		behaviors = {
			{
				"default",
				{
					0,
					"transition",
					sync = 1,
					priority = 1,
					blend = 0.2,
					sequence = "idle",
					layer = "lowerBody"
				}
			},
			{
				"action_test",
				{
					0,
					"transition",
					loop = 1,
					priority = 3,
					blend = 0.2,
					bind = 1,
					greater = 1,
					sequence = "Act_01",
					layer = "lowerBody"
				}
			},
			{
				"action_stop",
				{
					0,
					"transition",
					priority = 3,
					blend = 0.2,
					bind = 1,
					greater = 1,
					sequence = "idle",
					layer = "lowerBody"
				}
			}
		},
		transitions = {
			{
				event = "prop_action",
				behavior = "action_test"
			},
			{
				event = "prop_action_stop",
				behavior = "action_stop"
			}
		}
	},
	{
		name = "hide_italytree",
		layers = {
			{
				name = "lowerBody"
			},
			{
				name = "upperBody"
			}
		},
		behaviors = {
			{
				"default",
				{
					0,
					"transition",
					sync = 1,
					priority = 1,
					blend = 0.2,
					sequence = "idle",
					layer = "lowerBody"
				}
			},
			{
				"action_test",
				{
					0,
					"transition",
					loop = 1,
					priority = 3,
					blend = 0.2,
					bind = 1,
					greater = 1,
					sequence = "Act_01",
					layer = "lowerBody"
				}
			},
			{
				"action_stop",
				{
					0,
					"transition",
					priority = 3,
					blend = 0.2,
					bind = 1,
					greater = 1,
					sequence = "idle",
					layer = "lowerBody"
				}
			}
		},
		transitions = {
			{
				event = "prop_action",
				behavior = "action_test"
			},
			{
				event = "prop_action_stop",
				behavior = "action_stop"
			}
		}
	},
	{
		name = "hide_light_streetlight",
		layers = {
			{
				name = "lowerBody"
			},
			{
				name = "upperBody"
			}
		},
		behaviors = {
			{
				"default",
				{
					0,
					"transition",
					sync = 1,
					priority = 1,
					blend = 0.2,
					sequence = "idle",
					layer = "lowerBody"
				}
			},
			{
				"action_test",
				{
					0,
					"transition",
					loop = 1,
					priority = 3,
					blend = 0.2,
					bind = 1,
					greater = 1,
					sequence = "Act_01",
					layer = "lowerBody"
				}
			},
			{
				"action_stop",
				{
					0,
					"transition",
					priority = 3,
					blend = 0.2,
					bind = 1,
					greater = 1,
					sequence = "idle",
					layer = "lowerBody"
				}
			}
		},
		transitions = {
			{
				event = "prop_action",
				behavior = "action_test"
			},
			{
				event = "prop_action_stop",
				behavior = "action_stop"
			}
		}
	},
	{
		name = "hide_mailbox01",
		layers = {
			{
				name = "lowerBody"
			},
			{
				name = "upperBody"
			}
		},
		behaviors = {
			{
				"default",
				{
					0,
					"transition",
					sync = 1,
					priority = 1,
					blend = 0.2,
					sequence = "idle",
					layer = "lowerBody"
				}
			},
			{
				"action_test",
				{
					0,
					"transition",
					loop = 1,
					priority = 3,
					blend = 0.2,
					bind = 1,
					greater = 1,
					sequence = "Act_01",
					layer = "lowerBody"
				}
			},
			{
				"action_stop",
				{
					0,
					"transition",
					priority = 3,
					blend = 0.2,
					bind = 1,
					greater = 1,
					sequence = "idle",
					layer = "lowerBody"
				}
			}
		},
		transitions = {
			{
				event = "prop_action",
				behavior = "action_test"
			},
			{
				event = "prop_action_stop",
				behavior = "action_stop"
			}
		}
	},
	{
		name = "hide_oildrum001",
		layers = {
			{
				name = "lowerBody"
			},
			{
				name = "upperBody"
			}
		},
		behaviors = {
			{
				"default",
				{
					0,
					"transition",
					sync = 1,
					priority = 1,
					blend = 0.2,
					sequence = "idle",
					layer = "lowerBody"
				}
			},
			{
				"action_test",
				{
					0,
					"transition",
					loop = 1,
					priority = 3,
					blend = 0.2,
					bind = 1,
					greater = 1,
					sequence = "Act_01",
					layer = "lowerBody"
				}
			},
			{
				"action_stop",
				{
					0,
					"transition",
					priority = 3,
					blend = 0.2,
					bind = 1,
					greater = 1,
					sequence = "idle",
					layer = "lowerBody"
				}
			}
		},
		transitions = {
			{
				event = "prop_action",
				behavior = "action_test"
			},
			{
				event = "prop_action_stop",
				behavior = "action_stop"
			}
		}
	},
	{
		name = "hide_toilet",
		layers = {
			{
				name = "lowerBody"
			},
			{
				name = "upperBody"
			}
		},
		behaviors = {
			{
				"default",
				{
					0,
					"transition",
					sync = 1,
					priority = 1,
					blend = 0.2,
					sequence = "idle",
					layer = "lowerBody"
				}
			},
			{
				"action_test",
				{
					0,
					"transition",
					loop = 1,
					priority = 3,
					blend = 0.2,
					bind = 1,
					greater = 1,
					sequence = "Act_01",
					layer = "lowerBody"
				}
			},
			{
				"action_stop",
				{
					0,
					"transition",
					priority = 3,
					blend = 0.2,
					bind = 1,
					greater = 1,
					sequence = "idle",
					layer = "lowerBody"
				}
			}
		},
		transitions = {
			{
				event = "prop_action",
				behavior = "action_test"
			},
			{
				event = "prop_action_stop",
				behavior = "action_stop"
			}
		}
	},
	{
		name = "hide_vending_machine",
		layers = {
			{
				name = "lowerBody"
			},
			{
				name = "upperBody"
			}
		},
		behaviors = {
			{
				"default",
				{
					0,
					"transition",
					sync = 1,
					priority = 1,
					blend = 0.2,
					sequence = "idle",
					layer = "lowerBody"
				}
			},
			{
				"action_test",
				{
					0,
					"transition",
					loop = 1,
					priority = 3,
					blend = 0.2,
					bind = 1,
					greater = 1,
					sequence = "Act_01",
					layer = "lowerBody"
				}
			},
			{
				"action_stop",
				{
					0,
					"transition",
					priority = 3,
					blend = 0.2,
					bind = 1,
					greater = 1,
					sequence = "idle",
					layer = "lowerBody"
				}
			}
		},
		transitions = {
			{
				event = "prop_action",
				behavior = "action_test"
			},
			{
				event = "prop_action_stop",
				behavior = "action_stop"
			}
		}
	},
	{
		name = "hide_vending_turtle",
		layers = {
			{
				name = "lowerBody"
			},
			{
				name = "upperBody"
			}
		},
		behaviors = {
			{
				"default",
				{
					0,
					"transition",
					sync = 1,
					priority = 1,
					blend = 0.2,
					sequence = "idle",
					layer = "lowerBody"
				}
			},
			{
				"action_test",
				{
					0,
					"transition",
					loop = 1,
					priority = 3,
					blend = 0.2,
					bind = 1,
					greater = 1,
					sequence = "Act_01",
					layer = "lowerBody"
				}
			},
			{
				"action_stop",
				{
					0,
					"transition",
					priority = 3,
					blend = 0.2,
					bind = 1,
					greater = 1,
					sequence = "idle",
					layer = "lowerBody"
				}
			}
		},
		transitions = {
			{
				event = "prop_action",
				behavior = "action_test"
			},
			{
				event = "prop_action_stop",
				behavior = "action_stop"
			}
		}
	},
	{
		name = "hide_coffee_maker",
		layers = {
			{
				name = "lowerBody"
			},
			{
				name = "upperBody"
			}
		},
		behaviors = {
			{
				"default",
				{
					0,
					"transition",
					sync = 1,
					priority = 1,
					blend = 0.2,
					sequence = "idle",
					layer = "lowerBody"
				}
			},
			{
				"action_test",
				{
					0,
					"transition",
					loop = 1,
					priority = 3,
					blend = 0.2,
					bind = 1,
					greater = 1,
					sequence = "Act_01",
					layer = "lowerBody"
				}
			},
			{
				"action_stop",
				{
					0,
					"transition",
					priority = 3,
					blend = 0.2,
					bind = 1,
					greater = 1,
					sequence = "idle",
					layer = "lowerBody"
				}
			}
		},
		transitions = {
			{
				event = "prop_action",
				behavior = "action_test"
			},
			{
				event = "prop_action_stop",
				behavior = "action_stop"
			}
		}
	},
	{
		name = "zombie_normalhost",
		layers = {
			{
				name = "lowerBody"
			},
			{
				name = "upperBody"
			},
			{
				name = "landBody"
			},
			{
				name = "attack"
			},
			{
				name = "flinch"
			}
		},
		behaviors = {
			{
				"default",
				{
					0,
					"transition",
					blend = 0.2,
					layer = "attack"
				},
				{
					1,
					"transition",
					blend = 0.2,
					layer = "landBody"
				},
				{
					2,
					"transition",
					blend = 0,
					layer = "flinch"
				},
				{
					3,
					"if",
					"[STATE] = jump",
					-1,
					4
				},
				{
					4,
					"transition",
					sync = 1,
					alwaysupdate = 1,
					blend = 0.2,
					sequence = "[STATE]_lower",
					layer = "lowerBody"
				},
				{
					5,
					"transition",
					sync = 1,
					alwaysupdate = 1,
					blend = 0.2,
					sequence = "[STATE]_upper_[WEAPON]",
					layer = "upperBody"
				}
			},
			{
				"attack",
				{
					0,
					"if",
					"[STATE] = jump",
					1,
					3
				},
				{
					1,
					"transition",
					priority = 1,
					blend = 0.2,
					bind = 0.9,
					sequence = "run_shoot_[WEAPON]",
					layer = "attack"
				},
				{
					2,
					"end"
				},
				{
					3,
					"transition",
					priority = 1,
					blend = 0.2,
					bind = 1,
					force = 1,
					sequence = "[STATE]_shoot_[WEAPON]",
					layer = "attack"
				}
			},
			{
				"jump",
				{
					0,
					"transition",
					blend = 0.2,
					priority = 1,
					sequence = "jump",
					layer = "lowerBody"
				}
			},
			{
				"land",
				{
					0,
					"transition",
					priority = 1,
					blend = 0,
					bind = 0.9,
					sequence = "land",
					layer = "landBody"
				}
			},
			{
				"flinch",
				{
					0,
					"if",
					"([STATE] = crouch_idle) | ([STATE] = crouch_walk)",
					1,
					3
				},
				{
					1,
					"transition",
					priority = 1,
					sequence = "CSO2_zombie_origin_flinch_crouch_[FLINCH]",
					layer = "flinch"
				},
				{
					2,
					"end"
				},
				{
					3,
					"transition",
					priority = 1,
					sequence = "CSO2_zombie_origin_flinch_[FLINCH]",
					layer = "flinch"
				}
			}
		},
		transitions = {
			{
				event = "fire_primary",
				behavior = "attack"
			},
			{
				event = "fire_secondary",
				behavior = "attack"
			},
			{
				event = "jump",
				behavior = "jump"
			},
			{
				event = "land",
				behavior = "land"
			},
			{
				event = "flinch_head",
				behavior = "flinch"
			},
			{
				event = "flinch_chest",
				behavior = "flinch"
			},
			{
				event = "flinch_leftarm",
				behavior = "flinch"
			},
			{
				event = "flinch_leftleg",
				behavior = "flinch"
			},
			{
				event = "flinch_rightarm",
				behavior = "flinch"
			},
			{
				event = "flinch_rightleg",
				behavior = "flinch"
			}
		}
	},
	{
		name = "zombie_normalhost_f",
		layers = {
			{
				name = "lowerBody"
			},
			{
				name = "upperBody"
			},
			{
				name = "landBody"
			},
			{
				name = "attack"
			},
			{
				name = "flinch"
			}
		},
		behaviors = {
			{
				"default",
				{
					0,
					"transition",
					blend = 0.2,
					layer = "attack"
				},
				{
					1,
					"transition",
					blend = 0.2,
					layer = "landBody"
				},
				{
					2,
					"transition",
					blend = 0,
					layer = "flinch"
				},
				{
					3,
					"if",
					"[STATE] = jump",
					-1,
					4
				},
				{
					4,
					"transition",
					sync = 1,
					alwaysupdate = 1,
					blend = 0.2,
					sequence = "[STATE]_lower",
					layer = "lowerBody"
				},
				{
					5,
					"transition",
					sync = 1,
					alwaysupdate = 1,
					blend = 0.2,
					sequence = "[STATE]_upper_[WEAPON]",
					layer = "upperBody"
				}
			},
			{
				"attack",
				{
					0,
					"if",
					"[STATE] = jump",
					1,
					3
				},
				{
					1,
					"transition",
					priority = 1,
					blend = 0.2,
					bind = 0.9,
					sequence = "run_shoot_[WEAPON]",
					layer = "attack"
				},
				{
					2,
					"end"
				},
				{
					3,
					"transition",
					priority = 1,
					blend = 0.2,
					bind = 0.9,
					force = 1,
					sequence = "[STATE]_shoot_[WEAPON]",
					layer = "attack"
				}
			},
			{
				"jump",
				{
					0,
					"transition",
					blend = 0.2,
					priority = 1,
					sequence = "jump",
					layer = "lowerBody"
				}
			},
			{
				"land",
				{
					0,
					"transition",
					priority = 1,
					blend = 0,
					bind = 0.9,
					sequence = "land",
					layer = "landBody"
				}
			},
			{
				"flinch",
				{
					0,
					"if",
					"([STATE] = crouch_idle) | ([STATE] = crouch_walk)",
					1,
					3
				},
				{
					1,
					"transition",
					priority = 1,
					sequence = "CSO2_zombie_normalhost_f_flinch_crouch_[FLINCH]",
					layer = "flinch"
				},
				{
					2,
					"end"
				},
				{
					3,
					"transition",
					priority = 1,
					sequence = "CSO2_zombie_normalhost_f_flinch_[FLINCH]",
					layer = "flinch"
				}
			}
		},
		transitions = {
			{
				event = "fire_primary",
				behavior = "attack"
			},
			{
				event = "fire_secondary",
				behavior = "attack"
			},
			{
				event = "jump",
				behavior = "jump"
			},
			{
				event = "land",
				behavior = "land"
			},
			{
				event = "flinch_head",
				behavior = "flinch"
			},
			{
				event = "flinch_chest",
				behavior = "flinch"
			},
			{
				event = "flinch_leftarm",
				behavior = "flinch"
			},
			{
				event = "flinch_leftleg",
				behavior = "flinch"
			},
			{
				event = "flinch_rightarm",
				behavior = "flinch"
			},
			{
				event = "flinch_rightleg",
				behavior = "flinch"
			}
		}
	},
	{
		name = "zombie_normal",
		layers = {
			{
				name = "lowerBody"
			},
			{
				name = "upperBody"
			},
			{
				name = "landBody"
			},
			{
				name = "attack"
			},
			{
				name = "flinch"
			}
		},
		behaviors = {
			{
				"default",
				{
					0,
					"transition",
					blend = 0.2,
					layer = "attack"
				},
				{
					1,
					"transition",
					blend = 0.2,
					layer = "landBody"
				},
				{
					2,
					"transition",
					blend = 0,
					layer = "flinch"
				},
				{
					3,
					"if",
					"[STATE] = jump",
					-1,
					4
				},
				{
					4,
					"transition",
					sync = 1,
					alwaysupdate = 1,
					blend = 0.2,
					sequence = "[STATE]_lower",
					layer = "lowerBody"
				},
				{
					5,
					"transition",
					sync = 1,
					alwaysupdate = 1,
					blend = 0.2,
					sequence = "[STATE]_upper_[WEAPON]",
					layer = "upperBody"
				}
			},
			{
				"attack",
				{
					0,
					"if",
					"[STATE] = jump",
					1,
					3
				},
				{
					1,
					"transition",
					priority = 1,
					blend = 0.2,
					bind = 0.9,
					sequence = "run_shoot_[WEAPON]",
					layer = "attack"
				},
				{
					2,
					"end"
				},
				{
					3,
					"transition",
					priority = 1,
					blend = 0.2,
					bind = 0.9,
					force = 1,
					sequence = "[STATE]_shoot_[WEAPON]",
					layer = "attack"
				}
			},
			{
				"jump",
				{
					0,
					"transition",
					blend = 0.2,
					priority = 1,
					sequence = "jump",
					layer = "lowerBody"
				}
			},
			{
				"land",
				{
					0,
					"transition",
					priority = 1,
					blend = 0.2,
					bind = 0.9,
					sequence = "land",
					layer = "landBody"
				}
			},
			{
				"flinch",
				{
					0,
					"if",
					"[STATE] = crouch_idle | [STATE] = crouch_walk",
					1,
					3
				},
				{
					1,
					"transition",
					priority = 1,
					sequence = "CSO2_zombieinfectee_flinch_crouch_[FLINCH]",
					layer = "flinch"
				},
				{
					2,
					"end"
				},
				{
					3,
					"transition",
					priority = 1,
					sequence = "CSO2_zombieinfectee_flinch_[FLINCH]",
					layer = "flinch"
				}
			}
		},
		transitions = {
			{
				event = "fire_primary",
				behavior = "attack"
			},
			{
				event = "fire_secondary",
				behavior = "attack"
			},
			{
				event = "jump",
				behavior = "jump"
			},
			{
				event = "land",
				behavior = "land"
			},
			{
				event = "flinch_head",
				behavior = "flinch"
			},
			{
				event = "flinch_chest",
				behavior = "flinch"
			},
			{
				event = "flinch_leftarm",
				behavior = "flinch"
			},
			{
				event = "flinch_leftleg",
				behavior = "flinch"
			},
			{
				event = "flinch_rightarm",
				behavior = "flinch"
			},
			{
				event = "flinch_rightleg",
				behavior = "flinch"
			}
		}
	},
	{
		name = "zombie_normal_f",
		layers = {
			{
				name = "lowerBody"
			},
			{
				name = "upperBody"
			},
			{
				name = "landBody"
			},
			{
				name = "attack"
			},
			{
				name = "flinch"
			}
		},
		behaviors = {
			{
				"default",
				{
					0,
					"transition",
					blend = 0.2,
					layer = "attack"
				},
				{
					1,
					"transition",
					blend = 0.2,
					layer = "landBody"
				},
				{
					2,
					"transition",
					blend = 0,
					layer = "flinch"
				},
				{
					3,
					"if",
					"[STATE] = jump",
					-1,
					4
				},
				{
					4,
					"transition",
					sync = 1,
					alwaysupdate = 1,
					blend = 0.2,
					sequence = "[STATE]_lower",
					layer = "lowerBody"
				},
				{
					5,
					"transition",
					sync = 1,
					alwaysupdate = 1,
					blend = 0.2,
					sequence = "[STATE]_upper_[WEAPON]",
					layer = "upperBody"
				}
			},
			{
				"attack",
				{
					0,
					"if",
					"[STATE] = jump",
					1,
					3
				},
				{
					1,
					"transition",
					priority = 1,
					blend = 0.2,
					bind = 0.9,
					sequence = "run_shoot_[WEAPON]",
					layer = "attack"
				},
				{
					2,
					"end"
				},
				{
					3,
					"transition",
					priority = 1,
					blend = 0.2,
					bind = 0.9,
					force = 1,
					sequence = "[STATE]_shoot_[WEAPON]",
					layer = "attack"
				}
			},
			{
				"jump",
				{
					0,
					"transition",
					blend = 0,
					priority = 1,
					sequence = "jump",
					layer = "lowerBody"
				}
			},
			{
				"land",
				{
					0,
					"transition",
					priority = 1,
					blend = 0.2,
					bind = 0.9,
					sequence = "land",
					layer = "landBody"
				}
			},
			{
				"flinch",
				{
					0,
					"if",
					"[STATE] = crouch_idle | [STATE] = crouch_walk",
					1,
					3
				},
				{
					1,
					"transition",
					priority = 1,
					sequence = "CSO2_zombieinfectee_flinch_crouch_[FLINCH]",
					layer = "flinch"
				},
				{
					2,
					"end"
				},
				{
					3,
					"transition",
					priority = 1,
					sequence = "CSO2_zombieinfectee_flinch_[FLINCH]",
					layer = "flinch"
				}
			}
		},
		transitions = {
			{
				event = "fire_primary",
				behavior = "attack"
			},
			{
				event = "fire_secondary",
				behavior = "attack"
			},
			{
				event = "jump",
				behavior = "jump"
			},
			{
				event = "land",
				behavior = "land"
			},
			{
				event = "flinch_head",
				behavior = "flinch"
			},
			{
				event = "flinch_chest",
				behavior = "flinch"
			},
			{
				event = "flinch_leftarm",
				behavior = "flinch"
			},
			{
				event = "flinch_leftleg",
				behavior = "flinch"
			},
			{
				event = "flinch_rightarm",
				behavior = "flinch"
			},
			{
				event = "flinch_rightleg",
				behavior = "flinch"
			}
		}
	},
	{
		name = "zombie_heavy",
		layers = {
			{
				name = "lowerBody"
			},
			{
				name = "upperBody"
			},
			{
				name = "landBody"
			},
			{
				name = "attack"
			},
			{
				name = "flinch"
			}
		},
		behaviors = {
			{
				"default",
				{
					0,
					"transition",
					blend = 0.2,
					layer = "attack"
				},
				{
					1,
					"transition",
					blend = 0.2,
					layer = "landBody"
				},
				{
					2,
					"transition",
					blend = 0,
					layer = "flinch"
				},
				{
					3,
					"if",
					"[STATE] = jump",
					-1,
					4
				},
				{
					4,
					"transition",
					sync = 1,
					alwaysupdate = 1,
					blend = 0.2,
					sequence = "[STATE]_lower",
					layer = "lowerBody"
				}
			},
			{
				"attack_snab",
				{
					0,
					"if",
					"[STATE] = jump",
					1,
					3
				},
				{
					1,
					"transition",
					priority = 1,
					blend = 0.2,
					bind = 0.9,
					sequence = "run_shoot_KNIFE_Stab",
					layer = "attack"
				},
				{
					2,
					"end"
				},
				{
					3,
					"transition",
					priority = 1,
					blend = 0.2,
					bind = 0.9,
					force = 1,
					sequence = "[STATE]_shoot_KNIFE_Stab",
					layer = "attack"
				}
			},
			{
				"attack",
				{
					0,
					"if",
					"[STATE] = jump",
					1,
					3
				},
				{
					1,
					"transition",
					priority = 1,
					blend = 0.2,
					bind = 0.9,
					sequence = "run_shoot_KNIFE",
					layer = "attack"
				},
				{
					2,
					"end"
				},
				{
					3,
					"transition",
					priority = 1,
					blend = 0.2,
					bind = 0.9,
					force = 1,
					sequence = "[STATE]_shoot_KNIFE",
					layer = "attack"
				}
			},
			{
				"jump",
				{
					0,
					"transition",
					blend = 0.2,
					priority = 1,
					sequence = "jump",
					layer = "lowerBody"
				}
			},
			{
				"land",
				{
					0,
					"transition",
					priority = 1,
					blend = 0.2,
					bind = 0.9,
					sequence = "land",
					layer = "landBody"
				}
			},
			{
				"flinch",
				{
					0,
					"if",
					"[STATE] = crouch_idle | [STATE] = crouch_walk",
					1,
					3
				},
				{
					1,
					"transition",
					priority = 1,
					sequence = "CSO2_zombieinfectee_flinch_crouch_[FLINCH]",
					layer = "flinch"
				},
				{
					2,
					"end"
				},
				{
					3,
					"transition",
					priority = 1,
					sequence = "CSO2_zombieinfectee_flinch_[FLINCH]",
					layer = "flinch"
				}
			}
		},
		transitions = {
			{
				event = "fire_primary",
				behavior = "attack_snab"
			},
			{
				event = "fire_secondary",
				behavior = "attack"
			},
			{
				event = "jump",
				behavior = "jump"
			},
			{
				event = "land",
				behavior = "land"
			},
			{
				event = "flinch_head",
				behavior = "flinch"
			},
			{
				event = "flinch_chest",
				behavior = "flinch"
			},
			{
				event = "flinch_leftarm",
				behavior = "flinch"
			},
			{
				event = "flinch_leftleg",
				behavior = "flinch"
			},
			{
				event = "flinch_rightarm",
				behavior = "flinch"
			},
			{
				event = "flinch_rightleg",
				behavior = "flinch"
			}
		}
	},
	{
		name = "zombie_lighthost",
		layers = {
			{
				name = "lowerBody"
			},
			{
				name = "upperBody"
			},
			{
				name = "landBody"
			},
			{
				name = "attack"
			},
			{
				name = "flinch"
			}
		},
		behaviors = {
			{
				"default",
				{
					0,
					"transition",
					blend = 0.2,
					layer = "attack"
				},
				{
					1,
					"transition",
					blend = 0.2,
					layer = "landBody"
				},
				{
					2,
					"transition",
					blend = 0,
					layer = "flinch"
				},
				{
					3,
					"if",
					"[STATE] = jump",
					-1,
					4
				},
				{
					4,
					"transition",
					sync = 1,
					alwaysupdate = 1,
					blend = 0.2,
					sequence = "[STATE]_lower",
					layer = "lowerBody"
				}
			},
			{
				"attack",
				{
					0,
					"if",
					"[STATE] = jump",
					1,
					3
				},
				{
					1,
					"transition",
					priority = 1,
					blend = 0.2,
					bind = 0.9,
					sequence = "run_shoot_KNIFE",
					layer = "attack"
				},
				{
					2,
					"end"
				},
				{
					3,
					"transition",
					priority = 1,
					blend = 0.2,
					bind = 0.9,
					force = 1,
					sequence = "[STATE]_shoot_KNIFE",
					layer = "attack"
				}
			},
			{
				"jump",
				{
					0,
					"transition",
					blend = 0,
					priority = 1,
					sequence = "jump",
					layer = "lowerBody"
				}
			},
			{
				"land",
				{
					0,
					"transition",
					priority = 1,
					blend = 0.2,
					bind = 0.9,
					sequence = "land",
					layer = "landBody"
				}
			},
			{
				"flinch",
				{
					0,
					"if",
					"[STATE] = crouch_idle | [STATE] = crouch_walk",
					1,
					3
				},
				{
					1,
					"transition",
					priority = 1,
					sequence = "CSO2_zombieinfectee_flinch_crouch_[FLINCH]",
					layer = "flinch"
				},
				{
					2,
					"end"
				},
				{
					3,
					"transition",
					priority = 1,
					sequence = "CSO2_zombieinfectee_flinch_[FLINCH]",
					layer = "flinch"
				}
			}
		},
		transitions = {
			{
				event = "fire_primary",
				behavior = "attack"
			},
			{
				event = "fire_secondary",
				behavior = "attack"
			},
			{
				event = "jump",
				behavior = "jump"
			},
			{
				event = "land",
				behavior = "land"
			},
			{
				event = "flinch_head",
				behavior = "flinch"
			},
			{
				event = "flinch_chest",
				behavior = "flinch"
			},
			{
				event = "flinch_leftarm",
				behavior = "flinch"
			},
			{
				event = "flinch_leftleg",
				behavior = "flinch"
			},
			{
				event = "flinch_rightarm",
				behavior = "flinch"
			},
			{
				event = "flinch_rightleg",
				behavior = "flinch"
			}
		}
	},
	{
		name = "zombie_miner",
		layers = {
			{
				name = "lowerBody"
			},
			{
				name = "attack"
			}
		},
		behaviors = {
			{
				"default",
				{
					0,
					"if",
					"[STATE] ! jump",
					1,
					5
				},
				{
					1,
					"if",
					"[STATE] = walk",
					2,
					4
				},
				{
					2,
					"transition",
					sync = 1,
					alwaysupdate = 1,
					blend = 0.2,
					playbackrate = 1,
					sequence = "[STATE]_lower",
					layer = "lowerBody"
				},
				{
					3,
					"jump",
					5
				},
				{
					4,
					"transition",
					sync = 1,
					alwaysupdate = 1,
					blend = 0.2,
					sequence = "[STATE]_lower",
					layer = "lowerBody"
				},
				{
					5,
					"transition",
					blend = 0.2,
					layer = "attack"
				}
			},
			{
				"attack",
				{
					0,
					"if",
					"[STATE] = jump",
					1,
					3
				},
				{
					1,
					"transition",
					priority = 1,
					blend = 0.2,
					bind = 0.9,
					sequence = "run_shoot_KNIFE",
					layer = "attack"
				},
				{
					2,
					"end"
				},
				{
					3,
					"if",
					"[STATE] = idle",
					4,
					6
				},
				{
					4,
					"transition",
					move = 0,
					priority = 1,
					blend = 0.2,
					bind = 0.9,
					sequence = "idle_shoot_KNIFE",
					layer = "attack"
				},
				{
					5,
					"end"
				},
				{
					6,
					"if",
					"[STATE] = run & ( [DIRECTION] = NW | [DIRECTION] = W | [DIRECTION] = NE | [DIRECTION] = E )",
					7,
					9
				},
				{
					7,
					"transition",
					priority = 1,
					blend = 0.2,
					bind = 0.9,
					force = 1,
					sequence = "Run[DIRECTION]_shoot_KNIFE",
					layer = "attack"
				},
				{
					8,
					"end"
				},
				{
					9,
					"transition",
					priority = 1,
					blend = 0.2,
					bind = 0.9,
					force = 1,
					sequence = "[STATE]_shoot_KNIFE",
					layer = "attack"
				}
			},
			{
				"jump",
				{
					0,
					"transition",
					blend = 0.2,
					sequence = "jump",
					layer = "lowerBody"
				}
			}
		},
		transitions = {
			{
				event = "fire_primary",
				behavior = "attack"
			},
			{
				event = "fire_secondary",
				behavior = "attack"
			},
			{
				event = "jump",
				behavior = "jump"
			}
		}
	},
	{
		name = "zombie_afterlife",
		layers = {
			{
				name = "lowerBody"
			},
			{
				name = "landBody"
			},
			{
				name = "attack"
			},
			{
				name = "flinch"
			}
		},
		behaviors = {
			{
				"default",
				{
					0,
					"transition",
					blend = 0.2,
					layer = "attack"
				},
				{
					1,
					"transition",
					blend = 0.2,
					layer = "landBody"
				},
				{
					2,
					"transition",
					blend = 0,
					layer = "flinch"
				},
				{
					3,
					"if",
					"[STATE] = crouch_idle",
					-1,
					4
				},
				{
					4,
					"if",
					"[STATE] = jump | [STATE] = land",
					-1,
					5
				},
				{
					5,
					"transition",
					sync = 1,
					alwaysupdate = 1,
					blend = 0.2,
					sequence = "[STATE]_lower",
					layer = "lowerBody"
				},
				{
					6,
					"end"
				}
			},
			{
				"attack",
				{
					0,
					"if",
					"[STATE] = jump",
					2,
					3
				},
				{
					1,
					"transition",
					priority = 1,
					blend = 0.2,
					bind = 0.9,
					sequence = "run_shoot_[WEAPON]",
					layer = "attack"
				},
				{
					2,
					"end"
				},
				{
					3,
					"transition",
					priority = 1,
					blend = 0.2,
					bind = 0.9,
					force = 1,
					sequence = "idle_shoot_[WEAPON]",
					layer = "attack"
				}
			},
			{
				"jump",
				{
					0,
					"transition",
					sync = 1,
					alwaysupdate = 1,
					blend = 0.2,
					sequence = "jump",
					layer = "lowerBody"
				}
			},
			{
				"land",
				{
					0,
					"transition",
					sync = 1,
					alwaysupdate = 1,
					blend = 0.2,
					sequence = "land",
					layer = "landBody"
				}
			},
			{
				"flinch",
				{
					0,
					"if",
					"[STATE] = crouch_idle | [STATE] = crouch_walk",
					1,
					3
				},
				{
					1,
					"transition",
					priority = 1,
					sequence = "CSO2_zombieinfectee_flinch_crouch_[FLINCH]",
					layer = "flinch"
				},
				{
					2,
					"end"
				},
				{
					3,
					"transition",
					priority = 1,
					sequence = "CSO2_zombieinfectee_flinch_[FLINCH]",
					layer = "flinch"
				}
			}
		},
		transitions = {
			{
				event = "fire_primary",
				behavior = "attack"
			},
			{
				event = "fire_secondary",
				behavior = "attack"
			},
			{
				event = "jump",
				behavior = "jump"
			},
			{
				event = "land",
				behavior = "land"
			},
			{
				event = "flinch_head",
				behavior = "flinch"
			},
			{
				event = "flinch_chest",
				behavior = "flinch"
			},
			{
				event = "flinch_leftarm",
				behavior = "flinch"
			},
			{
				event = "flinch_leftleg",
				behavior = "flinch"
			},
			{
				event = "flinch_rightarm",
				behavior = "flinch"
			},
			{
				event = "flinch_rightleg",
				behavior = "flinch"
			}
		}
	}
}
