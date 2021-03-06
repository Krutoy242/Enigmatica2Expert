#modloaded psi

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

# *======= Recipes =======*
	
# [Spell Inscriber] from [Psidust][+1]
craft.remake(<psi:programmer>, ["pretty",
  "▬ ▲ ▬",
  "▬   ▬",
  "▬   ▬"], {
  "▲": <ore:dustPsi>,     # Psidust
  "▬": <ore:ingotCarbon>, # Carbon Brick
});

# [Rod Constructor] from [Electronics Assembler][+2]
craft.remake(<psi:cad_assembler>, ["pretty",
  "▬ ▬ ▬",
  "▬ : ▬",
  "-   -"], {
  ":": <ore:oc:assembler>,   # Electronics Assembler
  "▬": <ore:ingotCarbon>,    # Carbon Brick
  "-": <ore:ingotManasteel>, # Manasteel Ingot
});


# [Flux Resonator] from [Hardened Cell Frame][+3]
craft.remake(<psicosts:flux_resonator>, ["pretty",
  "O ▬ O",
  "C ◘ C",
  "O ▬ O"], {
  "C": <ore:sheetCopper>,                # Copper Sheet
  "◘": <thermalexpansion:frame:129>,     # Hardened Cell Frame
  "▬": <ore:ingotIvoryPsi>,              # Ivory Psimetal Ingot
  "O": <enderio:item_basic_capacitor:2>, # Octadic Capacitor
});

val ingrs = {
  "P": <psicosts:material_glassy>,  # Psi Glass
  "1": <psicosts:psi_cell>,         # PSI Cell
  "2": <psicosts:psi_cell:1>,       # PSI-O Cell
  "3": <psicosts:psi_cell:2>,       # PSI-Dyne Cell
  "□": <ore:plateSilver>,           # Silver Plate
  "S": <cyclicmagic:soulstone>,     # Soulstone
  "M": <tconstruct:materials:19>,   # Mending Moss
  "-": <ore:ingotEnergeticAlloy>,   # Energetic Alloy Ingot
  "_": <ore:ingotCrystallineAlloy>, # Crystalline Alloy Ingot
  "▬": <ore:ingotWyvernMetal>,      # Wyvern Metal Ingot
  "◊": <ore:gemPsi>,                # Psigem
  "=": <ore:ingotPsi>,              # Psimetal Ingot
  "≡": <ore:ingotEbonyPsi>,         # Ebony Psimetal Ingot
} as IIngredient[string];

# [PSI Cell] from [Mending Moss][+2]
craft.remake(<psicosts:psi_cell>, ["pretty",
  "□ P □",
  "M P M",
  "□ P □"], ingrs
);

# [PSI-O Cell] from [PSI Cell][+3]
craft.remake(<psicosts:psi_cell:1>, ["pretty",
  "◊ - ◊",
  "M 1 M",
  "□ - □"], ingrs
);

# [PSI-Dyne Cell] from [PSI-O Cell][+3]
craft.remake(<psicosts:psi_cell:2>, ["pretty",
  "= _ =",
  "M 2 M",
  "□ _ □"], ingrs
);

# [PSI-Force Cell] from [PSI-Dyne Cell][+3]
craft.remake(<psicosts:psi_cell:3>, ["pretty",
  "≡ ▬ ≡",
  "S 3 S",
  "□ ▬ □"], ingrs
);



# --------------------------------------------------
# Remake All CADs
val cads = {
	<psi:cad_assembly:0> : [<ore:ingotFakeIron> , <ore:listAllsugar>],
	<psi:cad_assembly:1> : [<ore:ingotGold>     , <ore:dirtyGemGold>],
	<psi:cad_assembly:2> : [<ore:ingotPsi>      , <ore:dirtyGemPlatinum>],
	<psi:cad_assembly:3> : [<ore:ingotEbonyPsi> , <ore:dirtyGemDimensionalShard>],
	<psi:cad_assembly:4> : [<ore:ingotIvoryPsi> , <ore:dirtyGemDimensionalShard>],
} as IIngredient[][IItemStack];

for out, inps in cads {
	craft.remake(out, ["pretty",
		"▬ ▬ A",
		"    ▬"], {
		"▬": inps[0],
		"A": inps[1],
	});
}
# --------------------------------------------------

# [Star of PSI] from [PSI-Dyne Cell][+4]
craft.remake(<psicosts:creative_cell>, ["pretty",
  "P   § § P",
  "§ ▬ D ▬  ",
  "§ D ◘ D §",
  "  ▬ D ▬ §",
  "P § §   P"], {
  "P": <deepmoblearning:pristine_matter_slime>, # Pristine Slime Matter
  "D": <draconicevolution:draconic_core>,       # Draconic Core
  "§": <deepmoblearning:glitch_infused_ingot>,  # Glitch Infused Ingot
  "◘": <psicosts:psi_cell:2>,                   # PSI-Dyne Cell
  "▬": <ore:ingotEbonyPsi>,                     # Ebony Psimetal Ingot
});

# [Creative Rod Frame] from [Benitoite][+9]
craft.remake(<psi:cad_assembly:5>, ["pretty",
  "  п □            ",
  "D S п □ □        ",
  "  D S * □ □      ",
  "    D S * □ D    ",
  "      D S ◘ ▲ D  ",
  "        ◊ ▲ ◘ ▲ D",
  "      D ■ ■ ▲ F  ",
  "      ■ ■ ■ D    ",
  "      D ■ D      "], {
  "■": <psi:psi_decorative:7>,                    # Ebony Psimetal Block
  "□": <psi:psi_decorative:6>,                    # Bright Psimetal Flow Plate
  "▲": <ore:dustAlchAmethyst>,                    # Amethyst Alchemical Ore Dust
  "S": <psicosts:creative_cell>,                  # Star of PSI
  "D": <draconicevolution:infused_obsidian>,      # Draconium Infused Obsidian
  "F": <psicosts:flux_resonator>,                 # Flux Resonator
  "◘": <psicosts:psi_cell:3>,                     # PSI-Force Cell
  "*": <extendedcrafting:singularity_custom:107>, # Flux Crystal Singularity
  "◊": <ore:gemBenitoite>,                        # Benitoite
  "п": <psi:psi_decorative:4>,                    # Dark Psimetal Flow Plate
});