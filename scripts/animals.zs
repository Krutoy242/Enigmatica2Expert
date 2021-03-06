import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.craft.grid.Grid;

// ======================================================
//
// TIER 1
//
// ======================================================

# Remove carbon (defined in ExNihilio configs)
recipes.remove(<advancedrocketry:misc:1>);

# Heart dust
val HD = <scalinghealth:heartdust>;
val HS = <scalinghealth:crystalshard>;
# [Heart Dust] from [Pestle and Mortar][+1]
craft.reshapeless(HD, 'A****', {
  "A": <ore:pestleAndMortar>,        # Pestle and Mortar
  "*": HS, # Heart Crystal Shard
});
scripts.process.crush(HS * 2, HD, "only: eu2Crusher AACrusher", [HD], [0.2f]);
scripts.process.crush(HS    , HD, "only: SagMill Pulverizer", [HD, HD, HD], [0.8f, 0.4f, 0.2f]);


# Honey drop on evaporation
mods.rustic.EvaporatingBasin.addRecipe(<forestry:honey_drop>, <liquid:animania_honey> * 1000);
mods.rustic.EvaporatingBasin.addRecipe(<forestry:honey_drop>, <liquid:for.honey>      * 1000);
mods.rustic.EvaporatingBasin.addRecipe(<forestry:honey_drop>, <liquid:honey>          * 1000);

# Bitumen from peat
mods.rustic.CrushingTub.addRecipe(<liquid:oil> * 500, <thermalfoundation:material:892>, <forestry:bituminous_peat>);


// Step 1
// ---------------------------


// Step 2
// ---------------------------

# [Hamster_Wheel] from [Stone_Slab][+1]
craft.remake(<animania:block_hamster_wheel>, ["pretty",
  "  ╱  ",
  "╱   ╱",
  "S ╱ S"], {
  "╱": <ore:stickIron>, # Iron Rod
  "S": <ore:slabStone>  # Stone Slab
});
// Step 3
// ---------------------------

// ======================================================
//
// TIER 2
//
// ======================================================

// Step 1
// ---------------------------

# Sunshine from Sun conglomerate
mods.mechanics.addTubeRecipe([<contenttweaker:conglomerate_of_sun>], <liquid:liquid_sunshine> * 1000);

# Life Essence from Sun conglomerate
mods.mechanics.addTubeRecipe([<contenttweaker:conglomerate_of_life>], <liquid:lifeessence> * 1000);


// Step 2
// ---------------------------

scripts.wrap.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<contenttweaker:blasted_coal> * 2, <contenttweaker:conglomerate_of_coal>);
craft.make(<contenttweaker:conglomerate_of_coal>, ["pretty",
  "L B L",
  "▲ i ▲",
  "L B L"], {
  "▲": <mechanics:fuel_dust_tiny>,      # Tiny Pile of Heavy Fuel Dust
  "B": <randomthings:ingredient:13>,    # Blackout Powder
  "i": <forestry:bituminous_peat>,      # Bituminous Peat
  "L": <rats:little_black_squash_balls> # Little Black Squash Balls
});




// Step 3
// ---------------------------



// ======================================================
//
// TIER 3
//
// ======================================================

// Step 1
// ---------------------------


// Step 2
// ---------------------------


# [Ice_Bomb*4] from [Shulker_Pearl][+3]
craft.remake(<twilightforest:ice_bomb> * 4, ["pretty",
  "I C I",
  "W ◊ W",
  "I C I"], {
  "C": <forestry:carton>,              # Carton
  "W": <forestry:crafting_material:3>, # Woven Silk
  "I": <forestry:crafting_material:5>, # Ice Shard
  "◊": <ore:gemPearl>                  # Shulker Pearl
});

# [empowered_phosphor*4] from [Bituminous_Peat][+2]
craft.remake(<contenttweaker:empowered_phosphor> * 4, ["pretty",
  "i P i",
  "P B P",
  "i P i"], {
  "P": <forestry:phosphor>,          # Phosphor
  "B": <forestry:propolis:*>,
  "i": <contenttweaker:blasted_coal>
});

# Saturate Phosphor
scripts.process.fill(<contenttweaker:empowered_phosphor>, <fluid:syngas> * 1000, <contenttweaker:saturated_phosphor>, "only: MechanicalDryingBasin NCInfuser Transposer");


// Step 3
// ---------------------------


# Animania lambs
var lambNames as string[] = [
  "animania:lamb_dorper",
  "animania:lamb_dorset",
  "animania:lamb_friesian",
  "animania:lamb_jacob",
  "animania:lamb_merino",
  "animania:lamb_suffolk"
];

var anyLambIngredient = <enderio:item_soul_vial:1>.withTag({entityId: lambNames[0]});
for i in 1 to lambNames.length {
	anyLambIngredient = anyLambIngredient.or(<enderio:item_soul_vial:1>.withTag({entityId: lambNames[i]}));
}
<contenttweaker:conglomerate_of_life>.addTooltip("Craft with any §lLamb soul§r");


# [Conglomerate_Of_Life*4] from [Soul_Vial][+4]
craft.make(<contenttweaker:conglomerate_of_life> * 4, ["pretty",
  "D B D",
  "▲ S ▲",
  "D C D"], {
  "▲": <iceandfire:pixie_dust>,             # Pixie Dust
  "B": <randomthings:rezstone>,             # Blood Stone
  "S": anyLambIngredient, # Soul Vial
  "C": <cyclicmagic:crystallized_obsidian>, # Crystallized Obsidian
  "D": <iceandfire:dragon_meal>             # Dragon Meal
});

# [Conglomerate_Of_Sun*8] from [Totem_of_Undying][+3]
craft.make(<contenttweaker:conglomerate_of_sun> * 8, ["pretty",
  "R o R",
  "C T C",
  "R o R"], {
  "R": <ore:myrmexResin>,                # Desert Myrmex Resin Chunk
  "C": <cyclicmagic:crystallized_amber>, # Crystallized Amber
  "T": <minecraft:totem_of_undying>,     # Totem of Undying
  "o": <ore:dropRoyalJelly>              # Royal Jelly
});

# [block_fused_quartz] from [Block_of_Quartz][+2]
craft.shapeless(<enderio:block_fused_quartz>, "AB", {
  A: <contenttweaker:empowered_phosphor>,
  B: <ore:blockQuartz>,
});


// ======================================================
//
// TIER 4
//
// ======================================================

// Step 1
// ---------------------------

# [Fuel_Compressor] from [Crushing_Block][+3]
craft.remake(<avaritiafurnace:fuelcompressor>, ["pretty",
  "# ▲ #",
  "▬ □ ▬",
  "# ▲ #"], {
  "□": <mechanics:crushing_block>,    # Crushing Block
  "▲": <ore:compressed3xDustBedrock>, # Double Compressed Infinity Dust Block
  "#": <forestry:logs.2:1>,           # Ebony Log
  "▬": <ore:ingotBlackIron>           # Black Iron Ingot
});



// Step 2
// ---------------------------

// Step 3
// ---------------------------


// ======================================================
//
// TIER 5
//
// ======================================================

// Step 1
// ---------------------------

// Step 2
// ---------------------------



// Step 3
// ---------------------------

# [Infinity_Furnace] from [Infinity_Fuel][+4]
utils.rh(<avaritiafurnace:infinityfurnace>);
craft.remake(<requious:infinity_furnace>, ["pretty",
  "T R E R T",
  "# ▬ n ▬ #",
  "H r I r H",
  "# ▬ Ϟ ▬ #",
  "T R E R T"], {
  "R": <rats:marbled_cheese_raw>,                 # Raw Marbled Cheese
  "#": <ore:logSequoia>,                          # Sequoia
  "T": <avaritiafurnace:triplecompressedfurnace>, # Triple Compressed Furnace
  "E": <contenttweaker:empowered_phosphor>,       # Empowered Phosphor
  "r": <rats:idol_of_ratlantis>,
  "H": <scalinghealth:heartcontainer>,            # Heart Container
  "I": <avaritiafurnace:infinityfuel>,            # Infinity Fuel
  "▬": <ore:dragonsteelIngot>,
  "n": <randomthings:spectrecoil_ender>,          # Ender Spectre Coil
  "Ϟ": <randomthings:spectreenergyinjector>       # Spectre Energy Injector
});


// ---------------------------
function morb(mobId as string) as IItemStack {
  return <thermalexpansion:morb>.withTag({Generic: 1 as byte, id: mobId});
}

for id, ingr in {
  "emberroot:enderminy" : <ore:enderpearl>, # Ender Pearl
  "emberroot:knight_fallen" : <tconstruct:sword_blade>.withTag({Material: "iron"}), # Iron Sword Blade
  "emberroot:hero" : <minecraft:armor_stand>,      # Armor Stand
  "emberroot:rainbow_golem" : <ore:blockSheetmetalIron>,    # Iron Sheetmetal
  "emberroot:withercat" : <ore:dustWither>,             # Wither Dust
  "quark:crab" : <ore:foodCrabraw>,            # Raw Crab
} as IIngredient[string] {
  craft.make(morb(id), ["pretty",
    "☼ ☼ ☼",
    "  □  ",
    "☼ ☼ ☼"], {
    "□": ingr,
    "☼": <scalinghealth:crystalshard>, # Heart Crystal Shard
  });
}