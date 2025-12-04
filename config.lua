-------------------------------------------------------------------------------------------------------------------------------
-- OTHER SETTINGS --------------------------------
-------------------------------------------------------------------------------------------------------------------------------

dropDestroyTime = 30000     --30 seconds

--shop
defaultQuantity = 10

-- inventory see permission groups (ACL group names allowed to use inventorySee)
inventorySeeACLGroups = {
	"Admin",
}

-- house storage default capacity (max weight for each storage)
houseStorageDefaultCapacity = 10000

-- ACL groups allowed to create house storage markers via command
houseStorageACLGroups = {
	"Admin",
}

--element Datas
hungerElementData = "hunger"
thirstElementData = "thirst"

--thirst fill amount
NormalDrinkAmount = 20
SpecialDrinkAmount = 40

--hunger fill amount
NormalFoodAmount = 20
SpecialFoodAmount = 40



-------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------
-- Sample Shops Table (Default Shops)
-------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------
-- Predefined shops (default values)
predefinedShops = {
    {
        id = 1, name = "MIA KALIFA STORE", owner = "mia",
        x = 1480, y = -1724, z = 14, interior = 0, dimension = 0,
        items = {
            water = {quantity = 10, price = 5},
            Radio = {quantity = 5, price = 10},
            Cocaine = {quantity = 5, price = 10},
            Seed = {quantity = 5, price = 10},
            Fertilizer = {quantity = 5, price = 10},
            Pot = {quantity = 5, price = 10},
            Nokia = {quantity = 5, price = 10}

        }
    },

    {
        id = 2, name = "LSPD STORE 2", owner = "mia",
        x = 1550, y = -1675, z = 16, interior = 0, dimension = 0,
        items = {
            water = {quantity = 10, price = 5},
            coffee = {quantity = 5, price = 10},
            fanta = {quantity = 10, price = 5},
            LemonSoda = {quantity = 10, price = 10},
            wine = {quantity = 5, price = 10},
            beer = {quantity = 5, price = 10},
            oldMonk = {quantity = 5, price = 10},
            Tequila = {quantity = 5, price = 10},
            Vodka = {quantity = 5, price = 10},
            Whisky = {quantity = 5, price = 10},
            Chocolate = {quantity = 5, price = 10},
            lays = {quantity = 5, price = 10},
            Pizza = {quantity = 5, price = 10},
            burger = {quantity = 5, price = 10},
            salad = {quantity = 5, price = 10}
        }
    }

}
-------------------------------------------------------------------------------------------------------------------------------
-- ALL THE ITEMS NAME AND DETAILS TO BE ADDED HERE
-------------------------------------------------------------------------------------------------------------------------------

items = {
	--drinks
    
    ["water"] = {name = "water", weight = 1, image = "shopSystem/html/images/foods/agua.png"},
    ["coffee"] = {name = "coffee", weight = 1, image = "shopSystem/html/images/foods/cafe.png"},
    ["fanta"] = {name = "fanta", weight = 1, image = "shopSystem/html/images/foods/energetico.png"},
    ["LemonSoda"] = {name = "LemonSoda", weight = 1, image = "shopSystem/html/images/foods/limonada.png"},
    
    ["wine"] = {name = "wine", weight = 1, image = "shopSystem/html/images/foods/absinto.png"},
    ["beer"] = {name = "beer", weight = 1, image = "shopSystem/html/images/foods/cerveja.png"},
    ["oldMonk"] = {name = "oldMonk", weight = 1, image = "shopSystem/html/images/foods/conhaque.png"},
    ["Tequila"] = {name = "Tequila", weight = 1, image = "shopSystem/html/images/foods/tequila.png"},
    ["Vodka"] = {name = "Vodka", weight = 1, image = "shopSystem/html/images/foods/vodka.png"},
    ["Whisky"] = {name = "Whisky", weight = 1, image = "shopSystem/html/images/foods/whisky.png"},

    ["tea"] = {name = "tea", weight = 1, image = "shopSystem/html/images/foods/tea.png"},
    
    --food
    
    ["Chocolate"] = {name = "Chocolate", weight = 1, image = "shopSystem/html/images/foods/chocolate.png"},
    ["lays"] = {name = "lays", weight = 1, image = "shopSystem/html/images/foods/salgadinho.png"},
    
    ["Pizza"] = {name = "Pizza", weight = 1, image = "shopSystem/html/images/foods/pizza.png"},
    ["burger"] = {name = "burger", weight = 1, image = "shopSystem/html/images/foods/lanche.png"},
    ["salad"] = {name = "salad", weight = 1, image = "shopSystem/html/images/foods/salada.png"},

    ["biriyani"] = {name = "biriyani", weight = 1, image = "shopSystem/html/images/foods/biriyani.png"},
    ["chicken"] = {name = "chicken", weight = 1, image = "shopSystem/html/images/foods/chickenCurry.png"},
    ["fish"] = {name = "fish", weight = 1, image = "shopSystem/html/images/foods/fishCurry.png"},
    ["friedRice"] = {name = "friedRice", weight = 1, image = "shopSystem/html/images/foods/friedRice.png"},
    ["prawn"] = {name = "prawn", weight = 1, image = "shopSystem/html/images/foods/prawn.png"},
    ["rice"] = {name = "rice", weight = 1, image = "shopSystem/html/images/foods/rice.png"},
    ["sambar"] = {name = "sambar", weight = 1, image = "shopSystem/html/images/foods/sambar.png"},
    ["vada"] = {name = "vada", weight = 1, image = "shopSystem/html/images/foods/vada.png"},

    --vehicle
    ["fuelcan"] = {name = "fuelcan", weight = 1, image = "shopSystem/html/images/utilities/gasolina.png"},
    ["repairkit"] = {name = "repairkit", weight = 1, image = "shopSystem/html/images/utilities/repairkit.png"},

    --Radio and phone
    ["Radio"] = {name = "Radio", weight = 1, image = "shopSystem/html/images/others/radio.png"},
    ["Phone"] = {name = "Phone", weight = 1, image = "shopSystem/html/images/others/Phone.png"},

    --drug
    ["Fertilizer"] = {name = "Fertilizer", weight = 1, image = "shopSystem/html/images/drugs/fertilizante.png"},
    ["Seed"] = {name = "Seed", weight = 1, image = "shopSystem/html/images/drugs/smaconha.png"},
    ["Cocaine"] = {name = "Cocaine", weight = 1, image = "shopSystem/html/images/drugs/cocaina.png"},
    ["Joint"] = {name = "Joint", weight = 1, image = "shopSystem/html/images/others/Joint.png"},
    ["Pot"] = {name = "Pot", weight = 1, image = "shopSystem/html/images/drugs/pot.png"},
    ["Nokia"] = {name = "Nokia", weight = 1, image = "shopSystem/html/images/drugs/nokia.png"},
    ["Cigarette"] = {name = "Cigarette", weight = 0.3, image = "shopSystem/html/images/others/Cigret.png"},
    ["Marijuana"] = {name = "Marijuana", weight = 1, image = "shopSystem/html/images/drugs/fmaconha.png"},

	--tools
    ["Furadeira"] = {name = "Furadeira", weight = 1.1, image = "shopSystem/html/images/utilities/furadeira.png"},
    ["Mira"] = {name = "Mira", weight = 0.5, image = "shopSystem/html/images/utilities/mira.png"},
    ["Pendrive"] = {name = "Pendrive", weight = 0.2, image = "shopSystem/html/images/utilities/pendrive.png"},
    ["Serra"] = {name = "Serra", weight = 0.9, image = "shopSystem/html/images/utilities/serra.png"},
    ["Shovel"] = {name = "Shovel", weight = 0.0, image = "shopSystem/html/images/utilities/pa.png"},
    
    ["BulletProofHelmet"] = {name = "BulletProofHelmet", weight = 0.3, image = "shopSystem/html/images/utilities/bulletproofhelmet.png"},
	--others
    ["BoomBox"] = {name = "BoomBox", weight = 0.3, image = "shopSystem/html/images/others/BoomBox.png"},
    ["Lighter"] = {name = "Lighter", weight = 0.3, image = "shopSystem/html/images/others/Lighter.png"},
    ["Colete"] = {name = "Colete", weight = 1.0, image = "shopSystem/html/images/utilities/colete.png"},
    ["Medkit"] = {name = "Medkit", weight = 0.3, image = "shopSystem/html/images/utilities/medkit.png"},
    ["Militec"] = {name = "Militec", weight = 0.3, image = "shopSystem/html/images/utilities/militec.png"},
    ["Bandagem"] = {name = "Bandagem", weight = 1, image = "shopSystem/html/images/utilities/bandagem.png"},
	--mask
    ["Diabo"] = {name = "Diabo", weight = 1, image = "shopSystem/html/images/masks/diabo.png"},
    ["Chapeu"] = {name = "Chapeu", weight = 1, image = "shopSystem/html/images/masks/chapeu.png"},
    ["Anonymous"] = {name = "Anonymous", weight = 1, image = "shopSystem/html/images/masks/anonymous.png"},
    ["Saco"] = {name = "Saco", weight = 1, image = "shopSystem/html/images/masks/saco.png"},
    ["Jedi"] = {name = "Jedi", weight = 1, image = "shopSystem/html/images/masks/jedi.png"},
    ["Cachorro"] = {name = "Cachorro", weight = 1, image = "shopSystem/html/images/masks/cachorro.png"},
    ["Macaco"] = {name = "Macaco", weight = 1, image = "shopSystem/html/images/masks/macaco.png"},
    ["Terror"] = {name = "Terror", weight = 1, image = "shopSystem/html/images/masks/terror.png"},
    ["Gas"] = {name = "Gas", weight = 1, image = "shopSystem/html/images/masks/gas.png"},
	--black
    ["Algemas"] = {name = "Algemas", weight = 1.0, image = "shopSystem/html/images/black/algemas.png"},
    ["C4"] = {name = "C4", weight = 1.0, image = "shopSystem/html/images/black/c4.png"},
    ["Capuz"] = {name = "Capuz", weight = 0.0, image = "shopSystem/html/images/black/capuz.png"},
    ["Keys Invasão"] = {name = "Keys Invasão", weight = 1, image = "shopSystem/html/images/black/keysinvasao.png"},
    ["Logs Invasão"] = {name = "Logs Invasão", weight = 1, image = "shopSystem/html/images/black/logsinvasao.png"},
	--other
    ["OCBPaper"] = {name = "OCBPaper", weight = 1, image = "shopSystem/html/images/others/OCBPaper.png"},
    ["LockPick"] = {name = "LockPick", weight = 1, image = "shopSystem/html/images/others/LockPick.png"},
	
	--weapons
    ["Glock"] = {name = "Glock", weight = 1, image = "shopSystem/html/images/weapons/WEAPON_GLOCK.png"},
    ["Munição 9mm"] = {name = "Munição 9mm", weight = 0.0, image = "shopSystem/html/images/weapons/municao9mm.png"},
    ["38"] = {name = "38", weight = 1, image = "shopSystem/html/images/weapons/WEAPON_38.png"},
    ["MP5"] = {name = "MP5", weight = 1, image = "shopSystem/html/images/weapons/WEAPON_MP5.png"},
    ["AK47"] = {name = "AK47", weight = 1, image = "shopSystem/html/images/weapons/WEAPON_AK47.png"},
    ["AR15"] = {name = "AR15", weight = 1, image = "shopSystem/html/images/weapons/WEAPON_AR15.png"},
    ["DOZE"] = {name = "DOZE", weight = 1.0, image = "shopSystem/html/images/weapons/WEAPON_DOZE.png"},
    ["AR10"] = {name = "AR10", weight = 1.0, image = "shopSystem/html/images/weapons/WEAPON_AR10.png"},
    ["Taser"] = {name = "Taser", weight = 1, image = "shopSystem/html/images/weapons/WEAPON_TASER.png"},
    ["Munição 556"] = {name = "Munição 556", weight = 0.0, image = "shopSystem/html/images/weapons/municao556.png"},
    ["Munição 762"] = {name = "Munição 762", weight = 0.0, image = "shopSystem/html/images/weapons/municao762.png"},
    ["Munição Sniper"] = {name = "Munição Sniper", weight = 0.0, image = "shopSystem/html/images/weapons/municaosnip.png"},
    ["Cartucho 12"] = {name = "Cartucho 12", weight = 0.0, image = "shopSystem/html/images/weapons/cartucho12.png"},
	--other
    ["PistolAmmoClip"] = {name = "PistolAmmoClip", weight = 1.0, image = "shopSystem/html/images/others/m-glock.png"},
    ["SMGAmmoClip"] = {name = "SMGAmmoClip", weight = 1.0, image = "shopSystem/html/images/others/m-uzi.png"},
    ["ARAmmoClip"] = {name = "ARAmmoClip", weight = 1.0, image = "shopSystem/html/images/others/m-ak47.png"},
    ["Dinheiro Sujo"] = {name = "Dinheiro Sujo", weight = 0, image = "shopSystem/html/images/others/dinheirosujo.png"},
	--jobs
    ["Garrafa Vazia"] = {name = "Garrafa Vazia", weight = 1, image = "shopSystem/html/images/jobs/garrafa.png"},
    ["Garrafa Leite"] = {name = "Garrafa Leite", weight = 0.2, image = "shopSystem/html/images/jobs/garrafaleite.png"},
    ["Latinha"] = {name = "Latinha", weight = 1, image = "shopSystem/html/images/jobs/latinha.png"},
    ["Papelão"] = {name = "Papelão", weight = 1, image = "shopSystem/html/images/jobs/papelao.png"},
    ["Vidro"] = {name = "Vidro", weight = 1, image = "shopSystem/html/images/jobs/vidro.png"},
    ["Ouro"] = {name = "Ouro", weight = 0.4, image = "shopSystem/html/images/jobs/ouro.png"},
    ["Prata"] = {name = "Prata", weight = 0.3, image = "shopSystem/html/images/jobs/prata.png"},
    ["Ferro"] = {name = "Ferro", weight = 0.2, image = "shopSystem/html/images/jobs/ferro.png"},
    ["Porte de Armas"] = {name = "Porte de Armas", weight = 0, image = "shopSystem/html/images/others/porte-armas.png"},

    ["Capacete Preto"] = {name = "Capacete Preto", weight = 1, image = "shopSystem/html/images/others/capacete.png"},
    ["Capacete Vermelho"] = {name = "Capacete Vermelho", weight = 1, image = "shopSystem/html/images/others/capacete.png"},
    ["Capacete Rosa"] = {name = "Capacete Rosa", weight = 1, image = "shopSystem/html/images/others/capacete.png"},
    ["Capacete Azul"] = {name = "Capacete Azul", weight = 1, image = "shopSystem/html/images/others/capacete.png"},
    ["Pedra Preciosa"] = {name = "Pedra Preciosa", weight = 1.5, image = "shopSystem/html/images/others/Joia.png"},
    ["Cane"] = {name = "Cane", weight = 1, image = "shopSystem/html/images/MealWeapon/Cane.png"},
    ["ChainSaw"] = {name = "ChainSaw", weight = 1, image = "shopSystem/html/images/MealWeapon/ChainSaw.png"},
    ["Glof_Club"] = {name = "Glof_Club", weight = 1, image = "shopSystem/html/images/MealWeapon/Glof_Club.png"},
    ["GolfBat"] = {name = "GolfBat", weight = 1, image = "shopSystem/html/images/MealWeapon/GolfBat.png"},
    ["HandMeal"] = {name = "HandMeal", weight = 1, image = "shopSystem/html/images/MealWeapon/HandMeal.png"},
    ["Aruva"] = {name = "Aruva", weight = 1, image = "shopSystem/html/images/MealWeapon/Katana.png"},
    ["Knife"] = {name = "Knife", weight = 1, image = "shopSystem/html/images/MealWeapon/Knife.png"},
    ["Pool_Cue"] = {name = "Pool_Cue", weight = 1, image = "shopSystem/html/images/MealWeapon/Pool_Cue.png"},
    ["Molotov"] = {name = "Molotov", weight = 1, image = "shopSystem/html/images/MealWeapon/Molotov.png"},
    ["Parasuite"] = {name = "Parasuite", weight = 1, image = "shopSystem/html/images/MealWeapon/Parasuite.png"},
    ["BlueStoneOre"] = {name = "BlueStoneOre", weight = 1, image = "shopSystem/html/images/jobs/BlueStoneOre.png"},
    ["CopperOre"] = {name = "CopperOre", weight = 1, image = "shopSystem/html/images/jobs/CopperOre.png"},
    ["DiamondOre"] = {name = "DiamondOre", weight = 1, image = "shopSystem/html/images/jobs/DiamondOre.png"},
    ["EmeraldOre"] = {name = "EmeraldOre", weight = 1, image = "shopSystem/html/images/jobs/EmeraldOre.png"},
    ["GoldOre"] = {name = "GoldOre", weight = 1, image = "shopSystem/html/images/jobs/GoldOre.png"},
    ["IronOre"] = {name = "IronOre", weight = 1, image = "shopSystem/html/images/jobs/IronOre.png"},
    ["RubyOre"] = {name = "RubyOre", weight = 1, image = "shopSystem/html/images/jobs/RubyOre.png"},
    ["SilverOre"] = {name = "SilverOre", weight = 1, image = "shopSystem/html/images/jobs/SilverOre.png"},
    ["CopperBar"] = {name = "CopperBar", weight = 1, image = "shopSystem/html/images/jobs/CopperBar.png"},
    ["SilverBar"] = {name = "SilverBar", weight = 1, image = "shopSystem/html/images/jobs/SilverBar.png"},
    ["GoldBar"] = {name = "GoldBar", weight = 0, image = "shopSystem/html/images/jobs/GoldBar.png"},
    ["IronBar"] = {name = "IronBar", weight = 1, image = "shopSystem/html/images/jobs/ferro.png"},
    ["Bolt"] = {name = "Bolt", weight = 1, image = "shopSystem/html/images/others/Bolt.png"},
    ["Glue"] = {name = "Glue", weight = 1, image = "shopSystem/html/images/others/Glue.png"},
    ["Screw"] = {name = "Screw", weight = 1, image = "shopSystem/html/images/others/Screw.png"},
    ["ScrewDriver"] = {name = "ScrewDriver", weight = 1, image = "shopSystem/html/images/others/ScrewDriver.png"},
    ["Tap"] = {name = "Tap", weight = 1, image = "shopSystem/html/images/others/Tap.png"},
    ["Spring"] = {name = "Spring", weight = 1, image = "shopSystem/html/images/others/molas.png"},
    ["AluminiumBar"] = {name = "AluminiumBar", weight = 1, image = "shopSystem/html/images/jobs/AluminiumBar.png"},
    ["AluminiumOre"] = {name = "AluminiumOre", weight = 1, image = "shopSystem/html/images/jobs/AluminiumOre.png"},
    ["MetalBar"] = {name = "MetalBar", weight = 1, image = "shopSystem/html/images/jobs/MetalBar.png"},
    ["MetalOre"] = {name = "MetalOre", weight = 1, image = "shopSystem/html/images/jobs/MetalOre.png"},
    ["Sulfer"] = {name = "Sulfer", weight = 1, image = "shopSystem/html/images/jobs/Sulfer.png"},
    ["Coal"] = {name = "Coal", weight = 1, image = "shopSystem/html/images/jobs/Coal.png"},
    ["GunPowder"] = {name = "GunPowder", weight = 1, image = "shopSystem/html/images/others/polvora.png"},
    ["BulletShell"] = {name = "BulletShell", weight = 1, image = "shopSystem/html/images/others/capsulas.png"},
    ["GlockBody"] = {name = "GlockBody", weight = 1, image = "shopSystem/html/images/others/corpo-glock.png"},
    ["DeagleBody"] = {name = "DeagleBody", weight = 1, image = "shopSystem/html/images/others/corpo-magnum44.png"},
    ["MP5Body"] = {name = "MP5Body", weight = 1, image = "shopSystem/html/images/others/corpo-mp5.png"},
    ["AK47Body"] = {name = "AK47Body", weight = 1, image = "shopSystem/html/images/others/corpo-ak47.png"},
    ["GunHandle"] = {name = "GunHandle", weight = 1, image = "shopSystem/html/images/others/gatilho.png"},
    ["CalfSyrup"] = {name = "CalfSyrup", weight = 1, image = "shopSystem/html/images/others/calfsyrup.png"},
    ["GoldChain"] = {name = "GoldChain", weight = 1, image = "shopSystem/html/images/others/GoldChain.png"},
    ["Drone"] = {name = "Drone", weight = 1, image = "shopSystem/html/images/others/Drone.png"},
    ["NightStick"] = {name = "NightStick", weight = 1, image = "shopSystem/html/images/others/NightStick.png"},
}

