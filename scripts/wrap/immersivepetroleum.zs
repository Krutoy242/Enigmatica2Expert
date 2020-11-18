/*
	This File generated automatically with wrapper.js
	Its wrap functions to print additional information
		into crafttweaker.log
*/
import crafttweaker.block.IBlock;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mod.mekanism.gas.IGasStack;
import thaumcraft.aspect.CTAspectStack;

#priority 2900
#modloaded immersivepetroleum
// Uses of this mod: 1


//####################################################
// Uses of this class: 1
zenClass Class_Distillation { zenConstructor() {}

	// Uses of this method: 1
	function addRecipe(fluidOutputs as ILiquidStack[], itemOutputs as IItemStack[], fluidInput as ILiquidStack, energy as int, time as int, chance as float[]) as void {
		print('Recipe wrapped: mods.immersivepetroleum.Distillation.addRecipe'~
			serializeArguments([serializeFluids1d(fluidOutputs), serializeIngredients1d(itemOutputs), serializeFluid(fluidInput), energy, time, serializeArray(chance, "[]")]));
		mods.immersivepetroleum.Distillation.addRecipe(fluidOutputs, itemOutputs, fluidInput, energy, time, chance);
	}

}
static Distillation as Class_Distillation = Class_Distillation() as Class_Distillation;