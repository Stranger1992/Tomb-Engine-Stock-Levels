-- Place in this Lua script all the levels of your game
-- Title is mandatory and must be the first level.

-- Intro image is a splash screen which appears before actual loading screen.
-- If you don't want it to appear, just remove this line.

Flow.SetIntroImagePath("Screens\\main.png")

-- Set overall amount of secrets in game.
-- If set to 0, secrets won't be displayed in statistics.

Flow.SetTotalSecretCount(5)

-- Enable/Disable Point Filter (square, unsmoothed pixels).

Flow.EnablePointFilter(true)

-- Enable/Disable saving and loading of savegames.

Flow.EnableLoadSave(true)

-- Disable/enable flycheat globally

Flow.EnableFlyCheat(true)

-- Disable/enable Lara drawing in title level

Flow.EnableLaraInTitle(true)

-- Disable/enable level selection in title level

Flow.EnableLevelSelect(true)

-- Disable/enable mass pickup (collect all pickups at once)

Flow.EnableMassPickup(true)

--------------------------------------------------

-- Title level

title = Level.new()

title.ambientTrack = "108"
title.levelFile = "Data\\title.ten"
title.scriptFile = "Scripts\\Levels\\title.lua"
title.loadScreenFile = "Screens\\Main.png"
title.horizon = true;
title.layer1 = Flow.SkyLayer.new(Color.new(227,157,81),-8)

Flow.AddLevel(title)

--Settomb Level Block
	settomb = Level.new();

		settomb.nameKey = "settomb";
		settomb.scriptFile = "Scripts\\Levels\\settomb.lua";
		settomb.ambientTrack = "107";
		settomb.levelFile = "Data\\settomb.ten";
		settomb.loadScreenFile = "Screens\\settomb.png";
		settomb.horizon = false;
		settomb.farView = 100
		settomb.fog = Flow.Fog.new(Color.new(0,0,0), 15,20)
		settomb.objects = {	
			InventoryItem.new(
				"BaCartouche1", --Name in Strings.lua 
				ObjID.PUZZLE_ITEM3_COMBO1, --Name in Constants.lua
				0,--yOffset
				1, -- Scale
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				-1,
				ItemAction.USE
			),
			InventoryItem.new(
				"BaCartouche2", --Name in Strings.lua 
				ObjID.PUZZLE_ITEM3_COMBO2, --Name in Constants.lua
				0, --yOffset (negative values move item up)
				1, -- Scale
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				-1,
				ItemAction.USE
			),
			InventoryItem.new(
				"BaCartouche", --Name in Strings.lua 
				ObjID.PUZZLE_ITEM3, --Name in Constants.lua
				0,
				1,
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				-1,
				ItemAction.USE
			),
			InventoryItem.new(
				"eye1", --Name in Strings.lua 
				ObjID.PUZZLE_ITEM1_COMBO1, --Name in Constants.lua
				50,
				0.5,
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				2,
				ItemAction.USE
			),
			InventoryItem.new(
				"eye2", --Name in Strings.lua 
				ObjID.PUZZLE_ITEM1_COMBO2, --Name in Constants.lua
				50,
				0.5,
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				2,
				ItemAction.USE
			),
			InventoryItem.new(
				"eye", --Name in Strings.lua 
				ObjID.PUZZLE_ITEM1, --Name in Constants.lua
				50,
				0.5,
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				2,
				ItemAction.USE
			),
			InventoryItem.new(
				"sands", --Name in Strings.lua 
				ObjID.PUZZLE_ITEM2, --Name in Constants.lua
				0,--yOffset
				1, -- Scale
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				-1,
				ItemAction.USE
			),
			InventoryItem.new(
				"gkey", --Name in Strings.lua 
				ObjID.PUZZLE_ITEM7, --Name in Constants.lua
				0,--yOffset
				1, -- Scale
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				-1,
				ItemAction.USE
			),
			InventoryItem.new(
				"RaCartouche", --Name in Strings.lua 
				ObjID.PUZZLE_ITEM4, --Name in Constants.lua
				0,--yOffset
				0.5, -- Scale
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				-1,
				ItemAction.USE
			),

		}
Flow.AddLevel(settomb);		
---karnak Level Block
		karnak = Level.new();

		karnak.nameKey = "karnak";
		karnak.scriptFile = "Scripts\\karnak.lua";
		karnak.ambientTrack = "110";
		karnak.levelFile = "Data\\karnak.ten";
		karnak.loadScreenFile = "Screens\\karnak.png";
		karnak.horizon = true
		karnak.farView = 20
		karnak.fog = Flow.Fog.new(Color.new(0,0,0), 15,20)
		karnak.layer1 = Flow.SkyLayer.new(Color.new(128,96,64), 7)
			karnak.objects = {	
			InventoryItem.new(
				"jar1", --Name in Strings.lua 
				ObjID.PUZZLE_ITEM2, --Name in Constants.lua
				0,--yOffset
				1, -- Scale
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				-1,
				ItemAction.USE
			),
			InventoryItem.new(
				"jar2", --Name in Strings.lua 
				ObjID.PUZZLE_ITEM3, --Name in Constants.lua
				0, --yOffset (negative values move item up)
				1, -- Scale
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				-1,
				ItemAction.USE
			),
			InventoryItem.new(
				"sunT", --Name in Strings.lua 
				ObjID.PUZZLE_ITEM1, --Name in Constants.lua
				0,
				1,
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				-1,
				ItemAction.USE
			),
			InventoryItem.new(
				"sunD", --Name in Strings.lua 
				ObjID.PUZZLE_ITEM1_COMBO1, --Name in Constants.lua
				50,
				1,
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				2,
				ItemAction.USE
			),
			InventoryItem.new(
				"sunG", --Name in Strings.lua 
				ObjID.PUZZLE_ITEM1_COMBO2, --Name in Constants.lua
				50,
				0.5,
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				2,
				ItemAction.USE
			),
			InventoryItem.new(
				"vraeus", --Name in Strings.lua 
				ObjID.PUZZLE_ITEM5, --Name in Constants.lua
				50,
				0.5,
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				2,
				ItemAction.USE
			),
			InventoryItem.new(
				"pguard", --Name in Strings.lua 
				ObjID.PUZZLE_ITEM7, --Name in Constants.lua
				0,--yOffset
				1, -- Scale
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				-1,
				ItemAction.USE
			),
			InventoryItem.new(
				"hkey", --Name in Strings.lua 
				ObjID.KEY_ITEM2, --Name in Constants.lua
				-50,--yOffset
				0.5, -- Scale
				Rotation.new(90,90, 0),
				RotationAxis.Y,
				-1,
				ItemAction.USE
			),
			InventoryItem.new(
				"horseG", --Name in Strings.lua 
				ObjID.PUZZLE_ITEM6, --Name in Constants.lua
				50,
				0.5,
				Rotation.new(0, 0, 0),
				RotationAxis.Y,
				2,
				ItemAction.USE
			),
		}
Flow.AddLevel(karnak);	
---coastal Level Block
	coastal = Level.new();
	coastal.nameKey = "coastal";
	coastal.scriptFile = "Scripts\\coastal.lua";
	coastal.ambientTrack = "110";
	coastal.levelFile = "Data\\coastal.ten";
	coastal.loadScreenFile = "Screens\\coastal.png";
	coastal.horizon = true
	coastal.fog = Flow.Fog.new(Color.new(0,0,0), 15,20)
	coastal.layer1 = Flow.SkyLayer.new(Color.new(128,128,128),-8)
		coastal.objects = {	
		InventoryItem.new(
			"token", --Name in Strings.lua 
			ObjID.KEY_ITEM1, --Name in Constants.lua
			-50,--yOffset
			1.5, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"gate1", --Name in Strings.lua 
			ObjID.KEY_ITEM10, --Name in Constants.lua
			-50,--yOffset
			1.5, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
	}
Flow.AddLevel(coastal);	
---catacomb Level Block
	catacomb = Level.new();

	catacomb.nameKey = "catacombs";
	catacomb.scriptFile = "Scripts\\catacomb.lua";
	catacomb.ambientTrack = "1080";
	catacomb.levelFile = "Data\\catacombs.ten";
	catacomb.loadScreenFile = "Screens\\catacombs.png";
	catacomb.horizon = false
	catacomb.fog = Flow.Fog.new(Color.new(0,0,0), 15,20)
	catacomb.farView = 20
		catacomb.objects = {	
		InventoryItem.new(
			"pguard", --Name in Strings.lua 
			ObjID.PUZZLE_ITEM5, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"handle", --Name in Strings.lua 
			ObjID.PUZZLE_ITEM5_COMBO1, --Name in Constants.lua
			0, --yOffset (negative values move item up)
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"hath", --Name in Strings.lua 
			ObjID.PUZZLE_ITEM5_COMBO2, --Name in Constants.lua
			0,
			1,
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"star", --Name in Strings.lua 
			ObjID.PUZZLE_ITEM3, --Name in Constants.lua
			50,
			1,
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			2,
			ItemAction.USE
		),
		InventoryItem.new(
			"horseG", --Name in Strings.lua 
			ObjID.PUZZLE_ITEM6, --Name in Constants.lua
			50,
			0.5,
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			2,
			ItemAction.USE
		),
		InventoryItem.new(
			"pknot", --Name in Strings.lua 
			ObjID.PUZZLE_ITEM10, --Name in Constants.lua
			50,
			0.5,
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			2,
			ItemAction.USE
		),
		InventoryItem.new(
			"ppillar", --Name in Strings.lua 
			ObjID.PUZZLE_ITEM11, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"beetleb", --Name in Strings.lua 
			ObjID.PICKUP_ITEM1, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"beetle", --Name in Strings.lua 
			ObjID.PUZZLE_ITEM12, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"token", --Name in Strings.lua 
			ObjID.KEY_ITEM1, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"gate1", --Name in Strings.lua 
			ObjID.KEY_ITEM10, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"trident", --Name in Strings.lua 
			ObjID.PUZZLE_ITEM1, --Name in Constants.lua
			50,
			0.5,
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			2,
			ItemAction.USE
		),
		InventoryItem.new(
			"music", --Name in Strings.lua 
			ObjID.PUZZLE_ITEM2, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
	}
Flow.AddLevel(catacomb);
-- Level Block
	cleopal = Level.new();

	cleopal.nameKey = "cleopal";
	cleopal.scriptFile = "Scripts\\cleopal.lua";
	cleopal.ambientTrack = "1080";
	cleopal.levelFile = "Data\\cleopal.ten";
	cleopal.loadScreenFile = "Screens\\cleopal.png";
	cleopal.horizon = false
	cleopal.farView = 20
	cleopal.fog = Flow.Fog.new(Color.new(0,0,0), 15,20)
		cleopal.objects = {	
		InventoryItem.new(
			"pguard", --Name in Strings.lua 
			ObjID.PUZZLE_ITEM5, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"handle", --Name in Strings.lua 
			ObjID.PUZZLE_ITEM5_COMBO1, --Name in Constants.lua
			0, --yOffset (negative values move item up)
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"hath", --Name in Strings.lua 
			ObjID.PUZZLE_ITEM5_COMBO2, --Name in Constants.lua
			0,
			1,
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"specs", --Name in Strings.lua 
			ObjID.PICKUP_ITEM2, --Name in Constants.lua
			50,
			1,
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			2,
			ItemAction.USE
		),
		InventoryItem.new(
			"horseG", --Name in Strings.lua 
			ObjID.PUZZLE_ITEM6, --Name in Constants.lua
			50,
			0.5,
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			2,
			ItemAction.USE
		),
		InventoryItem.new(
			"pknot", --Name in Strings.lua 
			ObjID.PUZZLE_ITEM10, --Name in Constants.lua
			50,
			0.5,
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			2,
			ItemAction.USE
		),
		InventoryItem.new(
			"ppillar", --Name in Strings.lua 
			ObjID.PUZZLE_ITEM11, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"beetleb", --Name in Strings.lua 
			ObjID.PICKUP_ITEM1, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"beetle", --Name in Strings.lua 
			ObjID.PUZZLE_ITEM12, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"beetle", --Name in Strings.lua 
			ObjID.KEY_ITEM1, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"beetle", --Name in Strings.lua 
			ObjID.KEY_ITEM10, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"music", --Name in Strings.lua 
			ObjID.PUZZLE_ITEM2, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
	}
Flow.AddLevel(cleopal);	
---city Level Block
	city = Level.new();
	city.nameKey = "city";
	city.scriptFile = "Scripts\\city.lua";
	city.ambientTrack = "102";
	city.levelFile = "Data\\city.ten";
	city.loadScreenFile = "Screens\\city.png";
	city.horizon = true
	city.layer1 = Flow.SkyLayer.new(Color.new(56,72,8),16)
	city.farView = 20
	city.fog = Flow.Fog.new(Color.new(0,0,0), 15,20)
		city.objects = {	
		InventoryItem.new(
			"nitro1", --Name in Strings.lua 
			ObjID.PUZZLE_ITEM1, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"cjack", --Name in Strings.lua 
			ObjID.PUZZLE_ITEM2, --Name in Constants.lua
			-25, --yOffset (negative values move item up)
			1, -- Scale
			Rotation.new(0, 0, 90),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"roofK", --Name in Strings.lua 
			ObjID.PUZZLE_ITEM4, --Name in Constants.lua
			0,
			1,
			Rotation.new(-45, 180, 90),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"code1", --Name in Strings.lua 
			ObjID.PUZZLE_ITEM5, --Name in Constants.lua
			50,
			1,
			Rotation.new(-90, 0, 90),
			RotationAxis.Y,
			2,
			ItemAction.USE
		),
		InventoryItem.new(
			"mine", --Name in Strings.lua 
			ObjID.PUZZLE_ITEM8, --Name in Constants.lua
			50,
			0.5,
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			2,
			ItemAction.USE
		),
		InventoryItem.new(
			"valve1", --Name in Strings.lua 
			ObjID.PUZZLE_ITEM1_COMBO1, --Name in Constants.lua
			50,
			0.5,
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			2,
			ItemAction.USE
		),
		InventoryItem.new(
			"ppillar", --Name in Strings.lua 
			ObjID.PUZZLE_ITEM11, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"nitro2", --Name in Strings.lua 
			ObjID.PUZZLE_ITEM1_COMBO2, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"cjackb", --Name in Strings.lua 
			ObjID.PUZZLE_ITEM2_COMBO1, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"chandle", --Name in Strings.lua 
			ObjID.PUZZLE_ITEM2_COMBO2, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"mine1", --Name in Strings.lua 
			ObjID.PUZZLE_ITEM8_COMBO1, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 0),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
		InventoryItem.new(
			"mine2", --Name in Strings.lua 
			ObjID.PUZZLE_ITEM8_COMBO2, --Name in Constants.lua
			0,--yOffset
			1, -- Scale
			Rotation.new(0, 0, 90),
			RotationAxis.Y,
			-1,
			ItemAction.USE
		),
	}
Flow.AddLevel(city);	

guard = Level.new()

guard.nameKey = "guard"
guard.scriptFile = "Scripts\\guard.lua"
guard.ambientTrack = "107"
guard.horizon = false
guard.levelFile = "Data\\guard.ten"
guard.loadScreenFile = "Screens\\rome.jpg"

Flow.AddLevel(guard);

library = Level.new()
