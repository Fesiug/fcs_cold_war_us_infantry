AddCSLuaFile()

if FCS then
	local function qv( scale )
		return Vector( scale, scale, scale )
	end
	local v = Vector
	local a = Angle

	local USGI_CAMO = {
		[0] = "Woodland Camo",
		[1] = "6 Color Desert Camo",
		[2] = "3 Color Desert Camo",
		[3] = "T-Pattern Camo",
		[4] = "Olive",
		[5] = "Tan",
		[6] = "Black",
		[7] = "Navy Blue",
	}
	local USGI_CAMO2 = {
		[0] = "Woodland Camo",
		[1] = "6 Color Desert Camo",
		[2] = "3 Color Desert Camo",
		[3] = "T-Pattern Camo",
		[5] = "Olive",
		[4] = "Tan",
		[6] = "Black",
		[7] = "Navy Blue",
	}
	local HELMETFIX = {
		["female"] = {
			["helmet"] = {
				translate = v( 0, -0.5, 0 ),
				scale = qv(0.95),
			},
			["helmetstraps"] = {
				translate = v( 0, 1, 0 ),
				scale = qv(0.95),
			},
		},
		["male_01"] = {
			["helmet"] = {
				translate = v( 0, -0.2, 1 ),
			},
			["helmetstraps"] = {
				translate = v( 1, 0.2, 0 ),
			},
		},
		["male_02"] = {
			["helmet"] = {
				translate = v( 0, -0.2, 0.5 ),
			},
			["helmetstraps"] = {
				translate = v( 0.5, 0.2, 0 ),
			},
		},
		["male_03"] = {
			["helmet"] = {
				translate = v( 0, 0.2, 0.7 ),
			},
			["helmetstraps"] = {
				translate = v( 0.9, -0.2, 0 ),
			},
		},
		["male_04"] = {
			["helmet"] = {
				translate = v( 0, 0.2, 0.5 ),
			},
			["helmetstraps"] = {
				translate = v( 0.5, -0.2, 0 ),
			},
		},
		["male_05"] = {
			["helmet"] = {
				translate = v( 0, 0, 0.2 ),
			},
			["helmetstraps"] = {
				translate = v( 0.2, 0, 0 ),
			},
		},
		["male_06"] = {
			["helmet"] = {
				translate = v( 0, 0, 0.75 ),
				scale = qv(1.1),
			},
			["helmetstraps"] = {
				translate = v( 0.750, 0, 0 ),
				scale = qv(1.1),
			},
		},
		["male_07"] = {
			["helmet"] = {
				translate = v( 0, -0.3, 0 ),
			},
			["helmetstraps"] = {
				translate = v( 0, 0.3, 0 ),
			},
		},
		["male_08"] = {
			["helmet"] = {
				translate = v( 0, -0.4, 0 ),
			},
			["helmetstraps"] = {
				translate = v( 0, 0.4, 0 ),
			},
		},
		["male_09"] = {
			["helmet"] = {
				translate = v( 0, -0.2, 0.75 ),
			},
			["helmetstraps"] = {
				translate = v( 0.75, 0.2, 0 ),
			},
		},
	}
	local CAPFIX = {
		["female"] = {
			["ValveBiped.Bip01_Head1"] = {
				translate = v( 0, -0, 0 ),
				scale = qv(1),
			},
		},
		["male_01"] = {
			["ValveBiped.Bip01_Head1"] = {
				translate = v( 0.5, -0.5, 0 ),
				scale = qv(1.05),
			},
		},
		["male_02"] = {
			["ValveBiped.Bip01_Head1"] = {
				translate = v( 0.1, -0.2, 0 ),
				scale = qv(1.025),
			},
		},
		["male_03"] = {
			["ValveBiped.Bip01_Head1"] = {
				translate = v( 0, -0.55, 0 ),
			},
		},
		["male_04"] = {
			["ValveBiped.Bip01_Head1"] = {
				translate = v( 0.6, -0.2, 0 ),
			},
		},
		["male_06"] = {
			["ValveBiped.Bip01_Head1"] = {
				translate = v( 0.5, -0.5, 0 ),
				scale = v( 1, 1.1, 1.1 ),
			},
		},
		["male_07"] = {
			["ValveBiped.Bip01_Head1"] = {
				scale = v( 1, 1.05, 1 ),
			},
		},
		["male_08"] = {
			["ValveBiped.Bip01_Head1"] = {
				translate = v( 0.2, 0.3, 0 ),
				scale = v( 1, 1.05, 1.05 ),
			},
		},
		["male_09"] = {
			["ValveBiped.Bip01_Head1"] = {
				translate = v( 0.3, 0, 0 ),
				scale = v( 1, 1.05, 1.075 ),
			},
		},
	}
	local GOGGLESFIX = {
		["female"] = {
			["ValveBiped.Bip01_Head1"] = {
				translate = v( -0.5, -0.6, 0 ),
				scale = qv( 0.975 ),
			},
		},
		["male_01"] = {
			["ValveBiped.Bip01_Head1"] = {
				translate = v( 0.5, -0.3, 0 ),
				scale = v(1, 1.075, 1.05),
			},
		},
		["male_02"] = {
			["ValveBiped.Bip01_Head1"] = {
				translate = v( 0, -0.5, -0.2 ),
			},
		},
		["male_03"] = {
			["ValveBiped.Bip01_Head1"] = {
				translate = v( 0.5, -0.5, -0.2 ),
			},
		},
		["male_04"] = {
			["ValveBiped.Bip01_Head1"] = {
				translate = v( 0.6, -0.2, 0 ),
			},
		},
		["male_06"] = {
			["ValveBiped.Bip01_Head1"] = {
				translate = v( 0.5, -0.5, 0 ),
				scale = qv(1.05),
			},
		},
		["male_07"] = {
			["ValveBiped.Bip01_Head1"] = {
				scale = v( 1, 1.05, 1 ),
			},
		},
		["male_09"] = {
			["ValveBiped.Bip01_Head1"] = {
				translate = v( 0.3, 0, 0 ),
				scale = v(1, 1.05, 1.05),
			},
		},
	}
	FCS.DefineItem("cwus_patrol", {
		PrintName = "Patrol Cap",
		Category = "US Military",
		Type = FCS_HAT,
		Model = "models/taggart_kali/characters/cold war us infantry/attachments/headgear.mdl",
		BoneMods = CAPFIX,
	})
	FCS.DefineItem("cwus_8point", {
		PrintName = "8-Point Cap",
		Category = "US Military",
		Type = FCS_HAT,
		Model = "models/taggart_kali/characters/cold war us infantry/attachments/headgear.mdl",
		Bodygroups = {[1] = 1},
		BoneMods = CAPFIX,
		Options = { Skins = USGI_CAMO2 },
	})
	FCS.DefineItem("cwus_boonie", {
		PrintName = "Boonie Hat",
		Category = "US Military",
		Type = FCS_HAT,
		Model = "models/taggart_kali/characters/cold war us infantry/attachments/headgear.mdl",
		Bodygroups = {[1] = 2},
		BoneMods = CAPFIX,
		Options = { Skins = USGI_CAMO2 },
	})

	FCS.DefineItem("cwus_goggles", {
		PrintName = "USGI Goggles",
		Category = "US Military",
		Type = FCS_EYES,
		Model = "models/taggart_kali/characters/cold war us infantry/attachments/goggles.mdl",
		BoneMods = GOGGLESFIX,
	})

	FCS.DefineItem("cwus_glasses", {
		PrintName = "USGI Glasses",
		Category = "US Military",
		Type = FCS_EYES,
		Model = "models/taggart_kali/characters/cold war us infantry/attachments/gi glasses.mdl",
		BoneMods = GOGGLESFIX,
	})

	FCS.DefineItem("cwus_helmet", {
		PrintName = "PASGT Helmet",
		Category = "US Military",
		Type = FCS_HAT + FCS_EARS,
		Model = "models/taggart_kali/characters/cold war us infantry/attachments/pasgt helmet.mdl",
		BoneMods = HELMETFIX,
		Options = { Skins = USGI_CAMO },
	})

	local VESTFIX = {
		[true] = {
			["ValveBiped.Bip01_Spine"] = {
				translate = v( 0, -1.5, 0 ),
			},
			["ValveBiped.Bip01_Spine1"] = {
				translate = v( 0, -1.25, 0 ),
				scale = qv(1.025),
			},
			["ValveBiped.Bip01_Spine2"] = {
				translate = v( 0.25, -0.5, 0 ),
				scale = v(1, 1.05, 1),
			},
			["ValveBiped.Bip01_Spine4"] = {
				translate = v( 0, -0.5, 0 ),
				scale = v(1, 1.2, 1),
			},
		},
	}

	FCS.DefineItem("cwus_vest", {
		PrintName = "PASGT Vest",
		Category = "US Military",
		Type = FCS_EXO,
		Model = "models/taggart_kali/characters/cold war us infantry/attachments/pasgt vest.mdl",
		BoneMods = VESTFIX,
		Options = { Skins = USGI_CAMO },
	})

	FCS.DefineItem("cwus_alice", {
		PrintName = "ALICE Webbing",
		Category = "US Military",
		Type = FCS_BELT,
		Model = "models/taggart_kali/characters/cold war us infantry/attachments/alice webbing pasgt vest.mdl",
		BoneMods = VESTFIX,
		Options = {
			Skins = {
				[0] = "Olive",
				[1] = "Tan",
				[2] = "Black",
			}
		}
	})
end