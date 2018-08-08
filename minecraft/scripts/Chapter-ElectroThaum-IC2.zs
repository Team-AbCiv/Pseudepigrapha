/*
 * Copyright (c) 2015 - 2018 3TUSK
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import mods.thaumcraft.Research;
import mods.thaumcraft.Arcane;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.Infusion;
import mods.thaumcraft.Warp;
import mods.thaumcraft.Aspects;

import mods.avaritia.ExtremeCrafting;

# Global variables
#-----------------

val fifthElement = <Avaritia:Resource:5>.withTag({display: {Name: "Philosopher's Stone", Lore: ["The infinity from infinity..."]}});

var plateAdvAlloy = <IC2:itemPartAlloy>;
var ingotBronze = <ore:ingotBronze>;
var ingotIron = <ore:ingotIron>;
var ingotThaumium = <ore:ingotThaumium>;

var plateIron = <ore:plateIron>;
var plateCarbon = <IC2:itemPartCarbonPlate>;
var plateSteel = <ore:plateSteel>;

var circuit = <IC2:itemPartCircuit>;
var circuitAdv = <IC2:itemPartCircuitAdv>;
var machineHull = <IC2:blockMachine:0>;
var treeTap = <IC2:itemTreetap>;
var coil = <IC2:itemRecipePart:0>;
var rotorElectric = <IC2:itemRecipePart:1>;

var casingTin = <IC2:itemCasing:1>;

var shardSmallAer = <Automagy:shardSliver:0>;
var shardSmallIgnis = <Automagy:shardSliver:1>;
var shardSmallAqua = <Automagy:shardSliver:2>;
var shardSmallTerra = <Automagy:shardSliver:3>;
var shardSmallOrdo = <Automagy:shardSliver:4>;
var shardSmallPerditio = <Automagy:shardSliver:5>;

var containPlate = <IC2:reactorPlatingExplosive>;
var heatPlate = <IC2:reactorPlatingHeat>;
var ichor = <ThaumicTinkerer:kamiResource:0>;
var plateIridiumAdv = <IC2:itemPartIridium>;
var ingotNeutron = <ore:ingotCosmicNeutronium>;
var singluarityRedstone = <Avaritia:Singularity:3>;

print("Loading IC2 Tweakes, please stand by...");

# Researches
#-----------------

Research.clearPrereqs("Etheral Processor");
Research.clearPrereqs("Thaumium Drill");
Research.clearPrereqs("Thaumium Chainsaw");
Research.clearPrereqs("Iron Omnitool");
Research.clearPrereqs("Diamond Omnitool");
Research.clearPrereqs("Thaumium Omnitool");
Research.clearPrereqs("Electric Goggles");
Research.clearPrereqs("Feather Wings");
Research.clearPrereqs("Thaumium Reinforced Wings");
Research.clearPrereqs("Electric Boots of the Traveller");
Research.clearPrereqs("Portable Node");
Research.clearPrereqs("Electric Scribing Tools");
Research.clearPrereqs("Shield Focus");
Research.clearPrereqs("Wand Focus: Charging");
Research.clearPrereqs("Energy Ball Focus");

Research.removeResearch("Macerating Native Ore Clusters");
Research.removeResearch("Etheral Processor");
Research.removeResearch("Feather Wings");
Research.removeResearch("Thaumium Plate");

Research.setSpikey("Electric Magic Tools", true);

Research.setSecondary("Explosion Focus", true);
Research.setSecondary("Kris-tmas Focus", true);

Research.addPrereq("Kris-tmas Focus", "FOCUSFROST", false);
Research.addPrereq("Explosion Focus", "FOCUSHELLBAT", false);
Research.addPrereq("Energy Ball Focus", "Wand Focus: Charging", false);

Research.moveResearch("Kris-tmas Focus", "THAUMATURGY", -1, -6);
Research.moveResearch("Explosion Focus", "THAUMATURGY", 2, -8);
Research.moveResearch("Energy Ball Focus", "EMT", 10, -7);
Research.moveResearch("Potentia Generator", "EMT", -3, -10);
Research.moveResearch("Auram Generator", "EMT", -4, -8);
Research.moveResearch("Ignis Generator", "EMT", -5, -11);
Research.moveResearch("Arbor Generator", "EMT", -5, -9);
Research.moveResearch("Aer Generator", "EMT", -4, -12);
Research.moveResearch("Portable Node", "EMT", 3, -7);
Research.moveResearch("Iron Omnitool", "EMT", -9, 0);
Research.moveResearch("Diamond Omnitool", "EMT", -11, 0);
Research.moveResearch("Thaumium Drill", "EMT", -12, 1);
Research.moveResearch("Thaumium Chainsaw", "EMT", -12, -1);
Research.moveResearch("Thaumium Omnitool", "EMT", -13, 0);
Research.moveResearch("Chainsaw of the Stream", "EMT", -14, -2);
Research.moveResearch("Drill of the Rockbreaker", "EMT", -14, 2);
Research.moveResearch("Electric Hoe of Growth", "EMT", -7, -3);
Research.moveResearch("Thaumium Reinforced Wings", "EMT", 8, 1);
Research.moveResearch("Nanosuit Wings", "EMT", 10, 1);
Research.moveResearch("Quantum Wings", "EMT", 12, 1);
Research.moveResearch("Infused Quantum Armor", "EMT", 15, 0);
Research.moveResearch("Electric Goggles", "EMT", 8, -2);
Research.moveResearch("Nanosuit Goggles of Revealing", "EMT", 10, -2);
Research.moveResearch("Quantum Goggles of Revealing", "EMT", 12, -2);
Research.moveResearch("Electric Boots of the Traveller", "EMT", 8, 3);
Research.moveResearch("Nano Boots of the Traveller", "EMT", 10, 3);
Research.moveResearch("Quantum Boots of the Traveller", "EMT", 12, 3);
Research.moveResearch("Electric Scribing Tools", "EMT", -2, -3);
Research.moveResearch("Thaumium Plate", "EMT", 0, 2);
Research.moveResearch("Industrial Wand Charging Station", "EMT", 5, -8);
Research.moveResearch("Diamond Chainsaw", "EMT", -10, -1);
Research.moveResearch("Solar Helmet of Revealing", "EMT", 4, -4);
Research.moveResearch("Inventory Charging Ring", "EMT", -1, -13);
Research.moveResearch("Armor Charging Ring", "EMT", 1, -13);
Research.moveResearch("Tiny Uranium", "EMT", 3, -11);
Research.moveResearch("Mjolnir", "EMT", -17, -1);
Research.moveResearch("Supercharged Mjolnir", "EMT", 7, -7);
Research.moveResearch("Compressed Solars", "EMT", -6, -6);
Research.moveResearch("Water Infused Solar Panels", "EMT", -6, -4);
Research.moveResearch("Fire Infused Solar Panels", "EMT", -8, -5);
Research.moveResearch("Earth Infused Solar Panels", "EMT", -8, -7);
Research.moveResearch("Order Infused Solar Panels", "EMT", -4, -5);
Research.moveResearch("Entropy Infused Solar Panels", "EMT", -4, -7);
Research.moveResearch("Air Infused Solar Panels", "EMT", -6, -8);
Research.moveResearch("The Legend", "EMT", -16, -3);
Research.moveResearch("Supercharged Mjolnir", "EMT", -19, 0);
Research.moveResearch("UU-Matter Infusion", "EMT", -8, 13);
Research.moveResearch("Shield Block", "EMT", 6, 6);
Research.moveResearch("Wand Focus: Charging", "EMT", 8, -6);
Research.moveResearch("Wand Focus: Wand Charging", "EMT", 11, -5);
Research.moveResearch("The One Ring", "EMT", -15, 0);
Research.moveResearch("Lightning Summoner", "EMT", -18, -5);
Research.moveResearch("Electric Cloud", "EMT", 12, -9);

Research.setAutoUnlock("Diamond Chainsaw", false);
Research.setAutoUnlock("Thaumium Chainsaw", false);
Research.setAutoUnlock("Electric Magic Tools", false);
Research.setAutoUnlock("The Legend", false);

Research.setAspects("Diamond Chainsaw", "vitreus 10, instrumentnum 10, lucrum 10, telum 10");
Research.setAspects("The Legend", "tempestas 32, telum 32, ignis 32, potentia 32");
Research.setAspects("Electric Magic Tools", "potentia 32, machina 32");

Research.setComplexity("Diamond Chainsaw", 10);
Research.setComplexity("The Legend", 12);
Research.setComplexity("Electric Magic Tools", 10);

# Material and machines
# --------------

Research.addResearch("IC2ForgeHammer", "EMT", "metallum 10, instrumentum 10", -2, 1, 5, <IC2:itemToolForgeHammer>);
Arcane.addShaped("IC2ForgeHammer", <IC2:itemToolForgeHammer>, "ignis 3, terra 10", [[ingotIron, ingotThaumium, ingotIron], [ingotIron, <minecraft:stick>, ingotIron], [null, <minecraft:stick>, null]]);
Research.addPage("IC2ForgeHammer", "abcivIII.IC2ForgeHammer.text.1");
Research.addArcanePage("IC2ForgeHammer", <IC2:itemToolForgeHammer>);
Research.addPage("IC2ForgeHammer", "abcivIII.IC2ForgeHammer.text.2");
Research.addCraftingPage("IC2ForgeHammer", <EMT:EMTItems:5>);
Research.addPrereq("IC2ForgeHammer", "Electric Magic Tools", false);

Research.addResearch("IC2Cutter", "EMT", "metallum 10, instrumentum 10", 2, 1, 5, <IC2:itemToolCutter>);
Arcane.addShaped("IC2Cutter", <IC2:itemToolCutter>, "ignis 3, terra 10", [[plateIron, null, plateIron], [null, <EMT:EMTItems:5>, null], [ingotIron, null, ingotIron]]);
Research.addPage("IC2Cutter", "abcivIII.IC2Cutter.text.1");
Research.addArcanePage("IC2Cutter", <IC2:itemToolCutter>);
Research.addPrereq("IC2Cutter", "Electric Magic Tools", false);

Research.addResearch("IC2Wrench", "EMT", "metallum 5, instrumentum 5, motus 3", 0, 1, 5, <IC2:itemToolWrench>);
Arcane.addShaped("IC2Wrench", <IC2:itemToolWrench>, "ignis 3, terra 5", [[ingotBronze, null, ingotBronze], [ingotBronze, ingotThaumium, ingotBronze], [null, ingotThaumium, null]]);
Research.addPage("IC2Wrench", "abcivIII.IC2Wrench.text.1");
Research.addArcanePage("IC2Wrench", <IC2:itemToolWrench>);
Research.addPrereq("IC2Wrench", "Electric Magic Tools", false);

Research.addResearch("IC2MachineHull", "EMT", "metallum 10, machina 10, instrumentum 10", -1, 2, 9, machineHull);
Arcane.addShaped("IC2MachineHull", machineHull, "ordo 5 terra 5 ignis 3", [[plateIron, <ore:plateThaumium>, plateIron], [<ore:plateThaumium>, null, <ore:plateThaumium>], [plateIron, <ore:plateThaumium>, plateIron]]);
Research.addPage("IC2MachineHull", "abcivIII.IC2MachineHull.text.1");
Research.addArcanePage("IC2MachineHull", machineHull);
Research.addPrereq("IC2MachineHull", "IC2ForgeHammer", false);

Research.addResearch("IC2Circuit", "EMT", "metallum 3, machina 1, cognitio 3, potentia 2", 1, 2, 9, <IC2:itemPartCircuit>);
Arcane.addShaped("IC2Circuit", <IC2:itemPartCircuit>, "ordo 10", [[<IC2:itemCable:0>, <minecraft:blaze_powder>, <IC2:itemCable:0>], [<minecraft:redstone>, <Thaumcraft:ItemZombieBrain>, <minecraft:redstone>], [<IC2:itemCable:0>, <EMT:EMTItems:5>, <IC2:itemCable:0>]]);
Research.addPage("IC2Circuit", "abcivIII.IC2Circuit.text.1");
Research.addArcanePage("IC2Circuit", <IC2:itemPartCircuit>);
Research.addPrereq("IC2Circuit", "IC2Cutter", false);

Research.addResearch("IC2IndustrialRevolution", "EMT", "metallum 3, instrumentum 3, machina 15, cognitio 5, potentia 7, motus 8, ignis 2", 0, 3, 7, <IC2:blockMachine:2>);
Crucible.addRecipe("IC2IndustrialRevolution", <IC2:blockMachine:2>, <IC2:blockMachine:1>, "machina 8, potentia 5, ignis 8");
Research.addPage("IC2IndustrialRevolution", "abcivIII.IC2IndustrialRevolution.text.1");
Research.addCruciblePage("IC2IndustrialRevolution", <IC2:blockMachine:2>);
Research.addPrereq("IC2IndustrialRevolution", "IC2MachineHull", false);
Research.addPrereq("IC2IndustrialRevolution", "IC2Circuit", false);
Research.addPrereq("IC2IndustrialRevolution", "IC2Wrench", true);
Research.setSpikey("IC2IndustrialRevolution", true);
Research.setConcealed("IC2IndustrialRevolution", true);

Research.addResearch("IC2AerExtractor", "EMT", "machina 20, aer 10", -2, 5, 10, <IC2:blockMachine:4>);
Arcane.addShaped("IC2AerExtractor", <IC2:blockMachine:4>, "aer 20", [[treeTap, null, treeTap], [treeTap, machineHull, treeTap], [shardSmallAer, circuit, shardSmallAer]]);
Research.addArcanePage("IC2AerExtractor", <IC2:blockMachine:4>);
Research.addPage("IC2AerExtractor", "abcivIII.IC2AerExtractor.text.1");
Research.addPrereq("IC2AerExtractor", "IC2IndustrialRevolution", false);
Research.addResearch("IC2SlimeBallRefining", "EMT", "limus 10, ordo 10, permutatio 5, aer 5", -3, 5, 5, <minecraft:slime_ball>);
Crucible.addRecipe("IC2SlimeBallRefining", <IC2:itemHarz>, <minecraft:slime_ball>, "limus 2, ordo 2");
Research.addPage("IC2SlimeBallRefining", "abcivIII.IC2SlimeBallRefining.text.1");
Research.addCruciblePage("IC2SlimeBallRefining", <IC2:itemHarz>);
Research.addPrereq("IC2SlimeBallRefining", "IC2AerExtractor");
Research.setSecondary("IC2SlimeBallRefining", true);
Research.setConcealed("IC2SlimeBallRefining", true);

Research.addResearch("IC2TerraCompressor", "EMT", "machina 20, terra 10", 2, 5, 10, <IC2:blockMachine:5>);
Arcane.addShaped("IC2TerraCompressor", <IC2:blockMachine:5>, "terra 20", [[<minecraft:stone>, null, <minecraft:stone>], [<minecraft:stone>, machineHull, <minecraft:stone>], [shardSmallTerra, circuit, shardSmallTerra]]);
Research.addArcanePage("IC2TerraCompressor", <IC2:blockMachine:5>);
Research.addPage("IC2TerraCompressor", "abcivIII.IC2TerraCompressor.text.1");
Research.addPrereq("IC2TerraCompressor", "IC2IndustrialRevolution", false);
Research.addResearch("IC2ThaumiumCompression", "EMT", "terra 10, metallum 10", 3, 5, 5, <Thaumcraft:blockCosmeticSolid:4>);
Research.addPage("IC2ThaumiumCompression", "abcivIII.IC2ThaumiumCompression.text.1");
Research.setSecondary("IC2ThaumiumCompression", true);
Research.setConcealed("IC2ThaumiumCompression", true);
Research.addPrereq("IC2ThaumiumCompression", "IC2TerraCompressor", false);
Research.setStub("IC2ThaumiumCompression", true);

Research.addResearch("IC2IgnisRecycler", "EMT", "machina 20, ignis 10", -2, 7, 10, <IC2:blockMachine:11>);
Arcane.addShaped("IC2IgnisRecycler", <IC2:blockMachine:11>, "ignis 20", [[<minecraft:dirt>, null, <minecraft:dirt>], [<minecraft:dirt>, machineHull, <minecraft:dirt>], [shardSmallIgnis, circuit, shardSmallIgnis]]);
Research.addArcanePage("IC2IgnisRecycler", <IC2:blockMachine:11>);
Research.addPage("IC2IgnisRecycler", "abcivIII.IC2IgnisRecycler.text.1");
Research.addPrereq("IC2IgnisRecycler", "IC2IndustrialRevolution", false);
Research.addResearch("IC2GreedScrapBox", "EMT", "lucrum 36, permutatio 12, perditio 12", -3, 7, 10, <Thaumcraft:ItemLootBag>);
Research.addPage("IC2GreedScrapBox", "abcivIII.IC2GreedScrapBox.text.1");
Crucible.addRecipe("IC2GreedScrapBox", <Thaumcraft:ItemLootBag>, <IC2:itemScrapbox>, "lucrum 8, ordo 2");
Research.addCruciblePage("IC2GreedScrapBox", <Thaumcraft:ItemLootBag>);
Research.setSecondary("IC2GreedScrapBox", true);
Research.setConcealed("IC2GreedScrapBox", true);
Research.addPrereq("IC2GreedScrapBox", "IC2IgnisRecycler", false);

Research.addResearch("IC2AquaOreWashingPlant", "EMT", "machina 20, aqua 10", 2, 7, 10, <IC2:blockMachine2:5>);
Arcane.addShaped("IC2AquaOreWashingPlant", <IC2:blockMachine2:5>, "aqua 20", [[<minecraft:bucket>, null, <minecraft:bucket>], [rotorElectric, machineHull, rotorElectric], [shardSmallAqua, circuit, shardSmallAqua]]);
Research.addArcanePage("IC2AquaOreWashingPlant", <IC2:blockMachine2:5>);
Research.addPage("IC2AquaOreWashingPlant", "abcivIII.IC2AquaOreWashingPlant.text.1");
Research.addPrereq("IC2AquaOreWashingPlant", "IC2IndustrialRevolution", false);
Research.addResearch("IC2MagicConcrete", "EMT", "terra 10, vitreus 10, metallum 5, tutamen 3, ignis 5, ordo 3", 3, 7, 5, <IC2:blockWall:5>);
Research.addPrereq("IC2MagicConcrete", "IC2AquaOreWashingPlant", false);
Research.setSecondary("IC2MagicConcrete", true);
Research.setConcealed("IC2MagicConcrete", true);
Research.addPage("IC2MagicConcrete", "abcivIII.IC2MagicConcrete.text.1");
Arcane.addShapeless("IC2MagicConcrete", <IC2:itemPartCFPowder>*2, "terra 5, aqua 5", [<ore:dustStone>, <ore:dustStone>, <ore:dustStone>, <ore:dustStone>, <ore:dustStone>, <ore:dustStone>, <minecraft:clay>, <ore:sand>, <ore:sand>]);
Arcane.addShaped("IC2MagicConcrete", <IC2:blockScaffold>*16, "terra 20, ordo 20", [[<ore:stickWood>, <ore:plankWood>, <ore:stickWood>], [<ore:plankWood>, <ore:stickWood>, <ore:plankWood>], [<ore:stickWood>, <ore:plankWood>, <ore:stickWood>]]);
Arcane.addShaped("IC2MagicConcrete", <IC2:blockIronScaffold>*6, "terra 15, ordo 15", [[ingotIron, plateIron, ingotIron], [plateIron, ingotIron, plateIron], [ingotIron, plateIron, ingotIron]]);
Research.addArcanePage("IC2MagicConcrete", <IC2:itemPartCFPowder>);
Research.addPage("IC2MagicConcrete", "abcivIII.IC2MagicConcrete.text.2");
Research.addArcanePage("IC2MagicConcrete", <IC2:blockScaffold>);
Research.addPage("IC2MagicConcrete", "abcivIII.IC2MagicConcrete.text.3");
Research.addArcanePage("IC2MagicConcrete", <IC2:blockIronScaffold>);

Research.addResearch("IC2OrdoMetalFormer", "EMT", "machina 20, ordo 10", -2, 9, 10, <IC2:blockMachine2:4>);
Arcane.addShaped("IC2OrdoMetalFormer", <IC2:blockMachine2:4>, "ordo 20", [[coil, <IC2:itemToolbox>, coil], [null, machineHull, null], [shardSmallOrdo, circuit, shardSmallOrdo]]);
Research.addArcanePage("IC2OrdoMetalFormer", <IC2:blockMachine2:4>);
Research.addPage("IC2OrdoMetalFormer", "abcivIII.IC2OrdoMetalFormer.text.1");
Research.addPrereq("IC2OrdoMetalFormer", "IC2IndustrialRevolution", false);
Research.addResearch("IC2ThaumiumForming", "EMT", "metallum 5, ordo 10", -3, 9, 5, <EMT:EMTItems:5>);
Research.addPage("IC2ThaumiumForming", "abcivIII.IC2ThaumiumForming.text.1");
Research.addPrereq("IC2ThaumiumForming", "IC2OrdoMetalFormer");
Research.setStub("IC2ThaumiumForming", true);
Research.setSecondary("IC2ThaumiumForming", true);
Research.setConcealed("IC2ThaumiumForming", true);

Research.addResearch("IC2PerditioMacerator", "EMT", "machina 20, perditio 10", 2, 9, 10, <IC2:blockMachine:3>);
Arcane.addShaped("IC2PerditioMacerator", <IC2:blockMachine:3>, "perditio 20", [[<minecraft:flint>, <minecraft:flint>, <minecraft:flint>], [null, machineHull, null], [shardSmallPerditio, circuit, shardSmallPerditio]]);
Research.addArcanePage("IC2PerditioMacerator", <IC2:blockMachine:3>);
Research.addPage("IC2PerditioMacerator", "abcivIII.IC2PerditioMacerator.text.1");
Research.addPrereq("IC2PerditioMacerator", "IC2IndustrialRevolution", false);
Research.addResearch("IC2MagicOreRefining", "EMT", "metallum 5, ordo 10", 3, 9, 5, <EMT:EMTItems:3>);
Research.addPage("IC2MagicOreRefining", "abcivIII.IC2MagicOreRefining.text.1");
Research.addPrereq("IC2MagicOreRefining", "IC2PerditioMacerator");
Research.setStub("IC2MagicOreRefining", true);
Research.setSecondary("IC2MagicOreRefining", true);
Research.setConcealed("IC2MagicOreRefining", true);

Research.addResearch("IC2BottlingPlant", "EMT", "motus 15, aqua 15, vacuos 7", -6, 5, 7, <IC2:blockMachine2:10>);
Research.setSecondary("IC2BottlingPlant", true);
Research.addPrereq("IC2BottlingPlant", "IC2IndustrialRevolution", false);
Research.addPage("IC2BottlingPlant", "abcivIIII.IC2BottlingPlant.text.1");
Arcane.addShaped("IC2BottlingPlant", <IC2:blockMachine2:10>, "aqua 20, aer 20", [[null, <IC2:itemCellEmpty:0>, null], [shardSmallAer, <IC2:itemCellEmpty:0>, shardSmallAqua], [circuit, machineHull, circuit]]);
Research.addArcanePage("IC2BottlingPlant", <IC2:blockMachine2:10>);

Research.addResearch("IC2CanningMachine", "EMT", "motus 15, corpus 30, messis 20, vacuos 7, venenum 10, mortuus 10", -4, 3, 14, <IC2:blockMachine2:9>);
Research.setSecondary("IC2CanningMachine", true);
Research.addPrereq("IC2CanningMachine", "IC2IndustrialRevolution", false);
Research.addPage("IC2CanningMachine", "abcivIIII.IC2CanningMachine.text.1");
Arcane.addShaped("IC2CanningMachine", <IC2:blockMachine2:9>, "ignis 20, terra 20, perditio 20, ordo 5", [[null, <IC2:itemTinCan>, null], [shardSmallAer, <IC2:itemTinCan>, shardSmallTerra], [circuit, machineHull, circuit]]);
Research.addArcanePage("IC2CanningMachine", <IC2:blockMachine2:9>);

Research.addResearch("IC2SteelSmelting", "EMT", "metallum 15, ignis 15, ordo 15, potentia 15, praecantatio 3, aer 10, gelum 5", 0, 5, 20, <IC2:itemIngot:3>);
Research.setSecondary("IC2SteelSmelting", true);
Research.setSpikey("IC2SteelSmelting", true);
Research.addPage("IC2SteelSmelting", "abcivIII.IC2SteelSmelting.text.1");
Research.addPrereq("IC2SteelSmelting", "IC2IndustrialRevolution", false);
Research.setConcealed("IC2SteelSmelting", true);

Research.addResearch("IC2AdvMachineHull", "EMT", "metallum 20, cognitio 10, ordo 10, potentia 15, ignis 30", -1, 6, 20, <IC2:blockMachine:12>);
Research.addPrereq("IC2AdvMachineHull", "IC2SteelSmelting");
Research.addPage("IC2AdvMachineHull", "abcivIII.IC2AdvMachineHull.text.1");
Arcane.addShaped("IC2AdvMachineHull", <IC2:blockMachine:12>, "ordo 3, perditio 3", [[plateSteel, plateCarbon, plateSteel], [plateAdvAlloy, machineHull, plateAdvAlloy], [plateSteel, plateCarbon, plateSteel]]);
Research.addArcanePage("IC2AdvMachineHull", <IC2:blockMachine:12>);
Research.setConcealed("IC2AdvMachineHull", true);

Research.addResearch("IC2AdvCircuit", "EMT", "cognitio 20, ordo 20, potentia 20, alienis 20, motus 20, fabrico 20, permutatio 20", 1, 6, 20, circuitAdv);
Research.addPrereq("IC2AdvCircuit", "IC2SteelSmelting");
Research.addPage("IC2AdvCircuit", "abcivIII.IC2AdvCircuit.text.1");
Arcane.addShaped("IC2AdvCircuit", circuitAdv, "ordo 5, perditio 5", [[<ore:dustRedstone>, <Automagy:crystalBrain:4>, <ore:dustGlowstone>], [<ore:dustLapis>, circuit, <ore:dustLapis>], [<ore:dustGlowstone>, plateSteel, <ore:dustRedstone>]]);
Research.addArcanePage("IC2AdvCircuit", circuitAdv);
Research.addPage("IC2AdvCircuit", "abcivIII.IC2AdvCircuit.text.2");
Research.setConcealed("IC2AdvCircuit", true);

Research.addResearch("IC2MachineryEvolution", "EMT", "ignis 50, ordo 42, fabrico 50, permutatio 24, humanus 20, lucrum 16, machina 50, potentia 13, praecantatio 20, venenum 10, vitium 24", 0, 8, 36, <IC2:blockMachine:13>);
Research.setRound("IC2MachineryEvolution", true);
Research.setSpikey("IC2MachineryEvolution", true);
Research.setConcealed("IC2MachineryEvolution", true);
Research.addPage("IC2MachineryEvolution", "abcivIII.IC2MachineryEvolution.text.1");
Infusion.addRecipe("IC2MachineryEvolution", <IC2:blockMachine:2>, [<Thaumcraft:FocusFire>, <Thaumcraft:ItemResource:1>, <IC2:itemRecipePart:0>, circuitAdv, <Thaumcraft:ItemResource:0>, <IC2:itemRecipePart:0>, <IC2:blockMachine:12>, <Thaumcraft:ItemResource:1>, <IC2:itemRecipePart:0>, circuitAdv, <Thaumcraft:ItemResource:0>, <IC2:itemRecipePart:0>],"fabrico 16, machina 16, motus 16, potentia 16, ira 16, ignis 16, ordo 16", <IC2:blockMachine:13>, 10);
Infusion.addRecipe("IC2MachineryEvolution", <IC2:blockMachine:12>, [<Thaumcraft:FocusTrade>, <IC2:itemRecipePart:1>, <Automagy:blockRemoteComparator>, machineHull, <IC2:itemRecipePart:5>, <Thaumcraft:ItemResource:1>, circuitAdv, <Thaumcraft:ItemResource:1>, <IC2:itemRecipePart:5>, machineHull, <Automagy:blockRemoteComparator>, <IC2:itemRecipePart:1>], "fabrico 16, machina 16, permutatio 16, potentia 16, motus 16, ignis 16, ordo 16", <IC2:blockMachine2:3>, 10);
Research.addInfusionPage("IC2MachineryEvolution", <IC2:blockMachine:13>);
Research.addInfusionPage("IC2MachineryEvolution", <IC2:blockMachine2:3>);
Research.addPage("IC2MachineryEvolution", "abcivIII.IC2MachineryEvolution.text.2");
Research.addPrereq("IC2MachineryEvolution", "IC2AdvMachineHull");
Research.addPrereq("IC2MachineryEvolution", "IC2AdvCircuit");

Research.addResearch("IC2Teleportor", "EMT", "iter 50, motus 25, terra 50, ordo 36, permutatio 32, machina 32", -1, 10, 24, <IC2:blockMachine2:0>);
Infusion.addRecipe("IC2Releportor", <IC2:blockMachine:12>, [<Thaumcraft:FocusPortableHole>, circuitAdv, <IC2:itemBatChargeCrystal>, <Thaumcraft:blockMirror>, <IC2:itemFreq>, <IC2:itemCable:9>, <Automagy:blockRemoteComparator>, <IC2:itemCable:9>, <IC2:itemFreq>, <Thaumcraft:blockMirror>, <IC2:itemBatChargeCrystal>, circuitAdv], "potentia 64, machina 64, alienis 32, iter 64, spiritus 64", <IC2:blockMachine2:0>, 15);
Research.addPage("IC2Teleportor", "abcivIII.IC2Teleportor.text.1");
Research.addInfusionPage("IC2Teleportor", <IC2:blockMachine2:0>);
Research.addPrereq("IC2Teleportor", "IC2MachineryEvolution", false);
Research.setConcealed("IC2Teleportor", true);

Research.addResearch("IC2TerraTransformer", "EMT", "tempus 50, perfodio 25, terra 50, perditio 36, permutatio 32, machina 32", 1, 10, 24, <IC2:blockMachine:15>);
Infusion.addRecipe("IC2TerraTransformer", <IC2:blockMachine:12>, [<Thaumcraft:FocusExcavation>, circuitAdv, <Thaumcraft:blockMetalDevice:8>, <IC2:itemTFBP>, <Thaumcraft:blockCustomPlant:4>, <IC2:itemCable:9>, <Thaumcraft:FocusPrimal>, <IC2:itemCable:9>, <Thaumcraft:blockMetalDevice:8>, <IC2:itemTFBP>, <Thaumcraft:blockCustomPlant:4>, circuitAdv], "mortuus 64, machina 64, permutatio 32, meto 64, perfodio 64", <IC2:blockMachine:15>, 15);
Research.addPage("IC2TerraTransformer", "abcivIII.IC2TerraTransformer.text.1");
Research.addInfusionPage("IC2TerraTransformer", <IC2:blockMachine:15>);
Research.addPrereq("IC2TerraTransformer", "IC2MachineryEvolution", false);
Research.setConcealed("IC2TerraTransformer", true);
Arcane.addShaped("IC2TerraTransformer", <IC2:itemTFBP>, "perditio 10, terra 10", [[null, circuit, null], [null, circuitAdv, null], [<Automagy:blockRedcrystalDense>, null, <Automagy:blockRedcrystalDense>]]);

# Electricity
# --------------

Research.addResearch("IC2EnergyOrigin", "EMT", "potentia 50, machina 25", 0, -2, 13, <minecraft:redstone>);
Research.setSpikey("IC2EnergyOrigin", true);
Research.setConcealed("IC2EnergyOrigin", true);
Research.addPrereq("IC2EnergyOrigin", "Electric Magic Tools", false);
Research.addPage("IC2EnergyOrigin", "abcivIII.IC2EnergyOrigin.text.1");
Research.addPrereq("IC2IndustrialRevolution", "IC2EnergyOrigin", true);
Warp.addToResearch("IC2EnergyOrigin", 13);

Research.addResearch("IC2KineticAndThermalEnergy", "EMT", "ignis 15, motus 15, potentia 15, machina 15, permutatio 15", 2, -3, 10, <IC2:blockKineticGenerator:1>);
Research.setConcealed("IC2KineticAndThermalEnergy", true);
Research.addPage("IC2KineticAndThermalEnergy", "abcivIII.IC2KineticAndThermalEnergy.text.1");
Research.addPrereq("IC2KineticAndThermalEnergy", "IC2EnergyOrigin", false);
Warp.addToResearch("IC2KineticAndThermalEnergy", 3);

Research.addResearch("IC2FundamentalElectricityTheorem", "EMT", "potentia 42, machina 28, instrumentum 13, ignis 10, motus 24, fabrico 13", 0, -4, 13, <IC2:itemBatREDischarged>);
Research.setSpikey("IC2FundamentalElectricityTheorem", true);
Research.setConcealed("IC2FundamentalElectricityTheorem", true);
Research.addPrereq("IC2FundamentalElectricityTheorem", "IC2EnergyOrigin", false);
Research.addPage("IC2FundamentalElectricityTheorem", "abcivIII.IC2FundamentalElectricityTheorem.text.1");
Arcane.addShaped("IC2FundamentalElectricityTheorem", <IC2:itemBatREDischarged>, "ignis 5, ordo 5", [[null, <IC2:itemCable:13>, null], [casingTin, <minecraft:redstone>, casingTin], [null, <Thaumcraft:ItemEssence:1>.withTag({Aspects: [{amount: 8, key: "potentia"}]}), null]]);
Research.addArcanePage("IC2FundamentalElectricityTheorem", <IC2:itemBatREDischarged>);
recipes.remove(<IC2:blockGenerator>);
Arcane.addShaped("IC2FundamentalElectricityTheorem", <IC2:blockGenerator:0>, "ignis 5, ordo 5, aer 5, aqua 5, terra 5, perditio 5", [[<IC2:itemBatREDischarged>], [<Thaumcraft:ItemEssence:1>.withTag({Aspects: [{amount: 8, key: "machina"}]})], [<IC2:blockMachine:1>]]);
Research.addArcanePage("IC2FundamentalElectricityTheorem", <IC2:blockGenerator:0>);
Research.addPage("IC2FundamentalElectricityTheorem", "abcivIII.IC2FundamentalElectricityTheorem.text.2");
Research.addPage("IC2FundamentalElectricityTheorem", "abcivIII.IC2FundamentalElectricityTheorem.text.3");
Arcane.addShaped("IC2FundamentalElectricityTheorem", <IC2:blockElectric:0>, "perditio 10, ignis 10, ordo 10", [[<ore:plankWood>, <Thaumcraft:ItemEssence:1>.withTag({Aspects: [{amount: 8, key: "permutatio"}]}), <ore:plankWood>], [<IC2:itemBatREDischarged>, <IC2:itemBatREDischarged>, <IC2:itemBatREDischarged>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);
Research.addArcanePage("IC2FundamentalElectricityTheorem", <IC2:blockElectric:0>);
Research.addPrereq("Electric Scribing Tools", "IC2FundamentalElectricityTheorem", false);

Research.addResearch("IC2DivergenceGeneration", "EMT", "magnes 8, machina 8, permutatio 4, potentia 16, lux 4, aqua 4, ignis 4, aer 4, perfodio 8, vitreus 4", 0, -6, 5, <IC2:blockGenerator:0>);
Research.setRound("IC2DivergenceGeneration", true);
Research.setSpikey("IC2DivergenceGeneration", true);
Research.addPrereq("IC2DivergenceGeneration", "IC2FundamentalElectricityTheorem", false);
Research.addPage("IC2DivergenceGeneration", "abcivIII.IC2DivergenceGeneration.text.1");
Research.addPrereq("Compressed Solars", "IC2DivergenceGeneration");
Arcane.addShaped("IC2DivergenceGeneration", <IC2:blockGenerator:1>, "terra 15", [[<ore:blockGlass>, <Thaumcraft:ItemEssence:1>.withTag({Aspects: [{amount: 8, key: "gelum"}]}), <ore:blockGlass>], [<IC2:itemCellEmpty>, <IC2:itemRecipePart:5>, <IC2:itemCellEmpty>], [casingTin, <IC2:blockGenerator:0>, casingTin]]);
Research.addArcanePage("IC2DivergenceGeneration", <IC2:blockGenerator:1>);
Arcane.addShaped("IC2DivergenceGeneration", <IC2:blockGenerator:3>, "aer 15", [[<ore:blockGlass>, <Thaumcraft:ItemEssence:1>.withTag({Aspects: [{amount: 8, key: "lux"}]}), <ore:blockGlass>], [<Automagy:blockRedcrystalRes>, <Thaumcraft:ItemResource:1>, <Automagy:blockRedcrystalRes>], [<IC2:itemCasing:3>, <IC2:blockGenerator:0>, <IC2:itemCasing:3>]]);
Research.addArcanePage("IC2DivergenceGeneration", <IC2:blockGenerator:3>);
Research.addPage("IC2DivergenceGeneration", "abcivIII.IC2DivergenceGeneration.text.2");
Research.addPage("IC2DivergenceGeneration", "abcivIII.IC2DivergenceGeneration.text.3");
Arcane.addShaped("IC2DivergenceGeneration", <IC2:blockGenerator:8>, "ignis 15", [[<IC2:itemCasing:0>, <IC2:itemRecipePart:5>, <IC2:itemCasing:0>], [<ore:plateThaumium>, <IC2:itemRecipePart:5>, <ore:plateThaumium>], [<IC2:itemCasing:0>, <IC2:blockGenerator:0>, <IC2:itemCasing:0>]]);
Research.addArcanePage("IC2DivergenceGeneration", <IC2:blockGenerator:8>);
Arcane.addShaped("IC2DivergenceGeneration", <IC2:blockGenerator:9>, "aqua 15", [[<IC2:itemCasing:4>, <IC2:itemRecipePart:11>, <IC2:itemCasing:4>], [<ore:plateThaumium>, <IC2:itemRecipePart:1>, <ore:plateThaumium>], [<IC2:itemCasing:4>, <IC2:blockGenerator:0>, <IC2:itemCasing:4>]]);
Research.addArcanePage("IC2DivergenceGeneration", <IC2:blockGenerator:9>);
Research.addPage("IC2DivergenceGeneration", "abcivIII.IC2DivergenceGeneration.text.4");

Research.addResearch("IC2LawOfSemiFluid", "EMT", "motus 16, aqua 16, potentia 16, permutatio 16, ignis 16", 0, -10, 24, <IC2:blockGenerator:7>);
Research.addPrereq("IC2LawOfSemiFluid", "IC2DivergenceGeneration", false);
Research.setSecondary("IC2LawOfSemiFluid", true);
Research.setSpikey("IC2LawOfSemiFluid", true);
Research.addPage("IC2LawOfSemiFluid", "abcivIII.IC2LawOfSemiFluid.text.1");
Arcane.addShaped("IC2LawOfSemiFluid", <IC2:blockGenerator:7>, "perditio 20, aqua 20, ignis 20, ordo 20", [[<IC2:itemCasing:4>, <Thaumcraft:blockJar:3>, <IC2:itemCasing:4>], [<IC2:itemFluidCell>, <IC2:blockGenerator:1>, <IC2:itemFluidCell>], [<IC2:itemCasing:4>, <Thaumcraft:blockJar>, <IC2:itemCasing:4>]]);
Research.addArcanePage("IC2LawOfSemiFluid", <IC2:blockGenerator:7>);
Research.clearPrereqs("Potentia Generator");
Research.addPrereq("Potentia Generator", "IC2LawOfSemiFluid", false);

# SEAFM = Standard Electronical Aura Field Model
Research.addResearch("IC2SEAFM", "EMT", "potentia 36, auram 36, ordo 24, perditio 36, iter 36, tempus 12, magnes 16", 2, -5, 12, <gadomancy:ItemFamiliar>.withTag({aspect: "potentia"}));
Research.addPrereq("IC2SEAFM", "IC2FundamentalElectricityTheorem");
Research.setRound("IC2SEAFM", true);
Research.setSpikey("IC2SEAFM", true);
Research.setConcealed("IC2SEAFM", true);
Research.addPage("IC2SEAFM", "abciv.IC2SEAFM.text.1");
Crucible.addRecipe("IC2SEAFM", <IC2:itemBatSU>*4, <Thaumcraft:ItemEssence:1>.withTag({Aspects: [{amount: 8, key: "potentia"}]}), "auram 4");
Research.addCruciblePage("IC2SEAFM", <IC2:itemBatSU>);
Crucible.addRecipe("IC2SEAFM", <IC2:itemBatCrystal>, <minecraft:diamond>, "potentia 16, machina 8, auram 4, vitreus 16, lucrum 32");
Research.addCruciblePage("IC2SEAFM", <IC2:itemBatCrystal>);
Research.addPage("IC2SEAFM", "abciv.IC2SEAFM.text.2");
Research.addPrereq("Portable Node", "IC2SEAFM");
Research.clearPrereqs("Industrial Wand Charging Station");
Research.addPrereq("Industrial Wand Charging Station", "IC2SEAFM", false);
Research.clearPrereqs("Solar Helmet of Revealing");
Research.addPrereq("Solar Helmet of Revealing", "IC2SEAFM", false);
Research.addPrereq("Solar Helmet of Revealing", "Compressed Solars", true);
Research.addPrereq("Wand Focus: Charging", "Industrial Wand Charging Station", false);

# Nuclear energy
# --------------

Research.setSecondary("Inventory Charging Ring", true);
Research.clearPrereqs("Inventory Charging Ring");
Research.clearPrereqs("Armor Charging Ring");
Research.addResearch("IC2NuclearReactionTheory", "EMT", "perditio 20, tenebrae 20, venenum 20, lux 20, potentia 20, motus 20, metallum 20, machina 20, perfodio 20", 0, -13, 28, <IC2:blockGenerator:5>);
Research.addPrereq("IC2NuclearReactionTheory", "IC2LawOfSemiFluid");
Research.addPrereq("Inventory Charging Ring", "IC2NuclearReactionTheory");
Research.addPrereq("Armor Charging Ring", "IC2NuclearReactionTheory");
Research.addPage("IC2NuclearReactionTheory", "abcivIII.IC2NuclearReactionTheory.text.1");
Research.setConcealed("IC2NuclearReactionTheory", true);
Research.clearPrereqs("Tiny Uranium");
Research.addPrereq("Tiny Uranium", "IC2NuclearReactionTheory", false);
Research.setStub("Tiny Uranium", true);
Arcane.addShaped("IC2NuclearReactionTheory", <IC2:blockReactorChamber>, "ordo 42", [[<ore:plateThaumium>, <ore:plateLead>, <ore:plateThaumium>], [<ore:plateLead>, <IC2:blockMachine:12>, <ore:plateLead>], [<ore:plateThaumium>, <ore:plateLead>, <ore:plateThaumium>]]);
Research.addArcanePage("IC2NuclearReactionTheory", <IC2:blockReactorChamber>);
Infusion.addRecipe("IC2NuclearReactionTheory", <IC2:blockGenerator>, [<IC2:itemDensePlates:6>, <Thaumcraft:BlockJarFilledItem>.withTag({Aspects: [{amount: 64, key: "tutamen"}]}), <IC2:blockReactorChamber>, <IC2:itemDensePlates:6>, <IC2:blockReactorChamber>, circuitAdv, <IC2:itemDensePlates:6>, circuitAdv, <IC2:blockReactorChamber>, <IC2:itemDensePlates:6>, <IC2:blockReactorChamber>, <Thaumcraft:BlockJarFilledItem>.withTag({Aspects: [{amount: 64, key: "tutamen"}]})], "lux 32, potentia 32, permutatio 32, praecantatio 32, venenum 32, machina 32", <IC2:blockGenerator:5>, 10);
Research.addInfusionPage("IC2NuclearReactionTheory", <IC2:blockGenerator:5>);

Research.addResearch("IC2ReactorDefense", "EMT", "tutamen 24, ignis 24, perditio 24, metallum 32", 2, -14, 17, <IC2:reactorPlating>);
Research.addPage("IC2ReactorDefense", "abcivIII.IC2ReactorDefense.text.1");
Arcane.addShapeless("IC2ReactorDefense", <IC2:reactorPlating>*4, "ordo 15", [<ore:plateDenseLead>, <IC2:itemPartAlloy>, <IC2:itemPartAlloy>]);
Research.addArcanePage("IC2ReactorDefense", <IC2:reactorPlating>);
Arcane.addShapeless("IC2ReactorDefense", <IC2:reactorPlatingExplosive>, "aqua 15", [<IC2:reactorPlating>, <IC2:itemPartAlloy>, <IC2:itemPartAlloy>]);
Research.addArcanePage("IC2ReactorDefense", <IC2:reactorPlatingExplosive>);
Research.addPage("IC2ReactorDefense", "abcivIII.IC2ReactorDefense.text.2");
Research.addPage("IC2ReactorDefense", "abcivIII.IC2ReactorDefense.text.3");
Arcane.addShapeless("IC2ReactorDefense", <IC2:reactorPlatingHeat>, "terra 15", [<IC2:reactorPlating>, <ore:plateDenseCopper>]);
Research.addArcanePage("IC2ReactorDefense", <IC2:reactorPlatingHeat>);
Research.setConcealed("IC2ReactorDefense", true);
Research.addPrereq("IC2ReactorDefense", "IC2NuclearReactionTheory", false);
Research.setSecondary("IC2ReactorDefense", true);

Research.addResearch("IC2ReactorHeatExchangeTheory", "EMT", "gelum 15, ignis 15, potentia 15, permutatio 15, motus 15, machina 15, metallum 20", 4, -14, 12, <IC2:reactorVent>);
Research.addPage("IC2ReactorHeatExchangeTheory", "abcivIII.IC2ReactorHeatExchangeTheory.text.1");
Arcane.addShaped("IC2ReactorHeatExchangeTheory", <IC2:reactorVent:1>, "aqua 10, ordo 10, terra 10", [[<minecraft:iron_bars>, null, <minecraft:iron_bars>], [null, <IC2:itemRecipePart:1>, null], [<minecraft:iron_bars>, null, <minecraft:iron_bars>]]);
Research.addArcanePage("IC2ReactorHeatExchangeTheory", <IC2:reactorVent:1>);
Crucible.addRecipe("IC2ReactorHeatExchangeTheory", <IC2:reactorHeatSwitch:1>, <IC2:reactorVent:1>, "gelum 5, permutatio 5, potentia 3");
Research.addCruciblePage("IC2ReactorHeatExchangeTheory", <IC2:reactorHeatSwitch:1>);
Research.addPage("IC2ReactorHeatExchangeTheory", "abcivIII.IC2ReactorHeatExchangeTheory.text.2");
Research.addPrereq("IC2ReactorHeatExchangeTheory", "IC2ReactorDefense", false);

Research.addResearch("IC2ReactorCooling", "EMT", "gelum 30, perditio 5, potentia 15, vacuos 18, iter 20", 7, -15, 12, <IC2:reactorVentCore:1>);
Research.addPage("IC2ReactorCooling", "abcivIII.IC2ReactorCooling.text.1");
Arcane.addShaped("IC2ReactorCooling", <IC2:reactorVentCore:1>, "aqua 10, perditio 10", [[null, <ore:plateDenseCopper>, null], [<ore:plateThaumium>, <IC2:reactorVent:1>, <ore:plateThaumium>]]);
Research.addArcanePage("IC2ReactorCooling", <IC2:reactorVentCore:1>);
Crucible.addRecipe("IC2ReactorCooling", <IC2:reactorHeatSwitchCore:1>, <IC2:reactorVentCore:1>, "gelum 5, permutatio 5, potentia 3");
Research.addCruciblePage("IC2ReactorCooling", <IC2:reactorHeatSwitchCore:1>);
Research.addPage("IC2ReactorCooling", "abcivIII.IC2ReactorCooling.text.2");
Research.addPrereq("IC2ReactorCooling", "IC2ReactorHeatExchangeTheory", false);

Research.addResearch("IC2ReactorVentAdv", "EMT", "gelum 15, ignis 15, potentia 15, permutatio 15, motus 15, machina 15, metallum 20", 5, -16, 12, <IC2:reactorVentDiamond:1>);
Research.addPage("IC2ReactorVentAdv", "abcivIII.IC2ReactorVentAdv.text.1");
Arcane.addShaped("IC2ReactorVentAdv", <IC2:reactorVentDiamond:1>, "aqua 10, aer 10", [[<minecraft:iron_bars>, <ore:gemDiamond>, <minecraft:iron_bars>], [null, <IC2:reactorVent:1>, null], [<ore:plateThaumium>, <ore:gemDiamond>, <ore:plateThaumium>]]);
Research.addArcanePage("IC2ReactorVentAdv", <IC2:reactorVentDiamond:1>);
Crucible.addRecipe("IC2ReactorVentAdv", <IC2:reactorHeatSwitchDiamond:1>, <IC2:reactorVentDiamond:1>, "gelum 5, iter 7, vitreus 7");
Research.addCruciblePage("IC2ReactorVentAdv", <IC2:reactorHeatSwitchDiamond:1>);
Research.addPage("IC2ReactorVentAdv", "abcivIII.IC2ReactorVentAdv.text.2");
Research.addPrereq("IC2ReactorVentAdv", "IC2ReactorHeatExchangeTheory", false);

Research.addResearch("IC2ReactorVentOverclocked", "EMT", "gelum 15, ignis 15, potentia 15, permutatio 15, motus 15, machina 15, metallum 20", 3, -17, 12, <IC2:reactorVentGold>);
Research.addPage("IC2ReactorVentOverclocked", "abcivIII.IC2ReactorVentOverclocked.text.1");
Arcane.addShaped("IC2ReactorVentOverclocked", <IC2:reactorVentGold:1>, "aqua 10, ordo 10, terra 10", [[<ore:plateGold>, null, <ore:plateGold>], [null, <IC2:reactorVent:1>, null], [<ore:plateGold>, null, <ore:plateGold>]]);
Research.addArcanePage("IC2ReactorVentOverclocked", <IC2:reactorVentGold:1>);
Crucible.addRecipe("IC2ReactorVentOverclocked", <IC2:reactorHeatSwitchSpread:1>, <IC2:reactorVentGold:1>, "gelum 5, lucrum 5, metallum 3, vitreus 1");
Research.addCruciblePage("IC2ReactorVentOverclocked", <IC2:reactorHeatSwitchSpread:1>);
Research.addPage("IC2ReactorVentOverclocked", "abcivIII.IC2ReactorVentOverclocked.text.2");
Research.addPrereq("IC2ReactorVentOverclocked", "IC2ReactorHeatExchangeTheory", false);

Research.addResearch("IC2ReactorComponentHeatVent", "EMT", "gelum 20, permutatio 15, iter 20", 9, -14, 6, <IC2:reactorVentSpread>);
Research.setSecondary("IC2ReactorComponentHeatVent", true);
Research.addPrereq("IC2ReactorComponentHeatVent", "IC2ReactorCooling", false);
Research.addPage("IC2ReactorComponentHeatVent", "abcivIII.IC2ReactorComponentHeatVent.text.1");
Arcane.addShaped("IC2ReactorComponentHeatVent", <IC2:reactorVentSpread>, "aer 15", [[null, <ore:plateThaumium>, null], [<ore:plateThaumium>, <IC2:reactorVent:1>, <ore:plateThaumium>], [null, <ore:plateThaumium>, null]]);
Research.addArcanePage("IC2ReactorComponentHeatVent", <IC2:reactorVentSpread>);

Research.addResearch("IC2ReactorCoolant", "EMT", "gelum 20, aqua 20, ignis 20, permutatio 10, motus 10", 9, -12, 17, <IC2:itemCellEmpty:9>);
Research.addPage("IC2ReactorCoolant", "abcivIII.IC2ReactorCoolant.text.1");
Crucible.addRecipe("IC2ReactorCoolant", <IC2:itemCellEmpty:12>, <IC2:itemCellEmpty:1>, "vacuos 3, gelum 3, sano 2, aer 5, aqua 4");
Research.addCruciblePage("IC2ReactorCoolant", <IC2:itemCellEmpty:12>);
Research.addPage("IC2ReactorCoolant", "abcivIII.IC2ReactorCoolant.text.2");
Research.addPage("IC2ReactorCoolant", "abcivIII.IC2ReactorCoolant.text.3");
Arcane.addShaped("IC2ReactorCoolant", <IC2:reactorCoolantSimple:1>, "aqua 8", [[<ore:plateTin>, null, <ore:plateTin>], [null, <IC2:itemCellEmpty:9>, null], [<ore:plateTin>, null, <ore:plateTin>]]);
Arcane.addShaped("IC2ReactorCoolant", <IC2:reactorCoolantTriple:1>, "aqua 24", [[<ore:plateTin>, <ore:plateTin>, <ore:plateTin>], [<IC2:reactorCoolantSimple:1>, <IC2:reactorCoolantSimple:1>, <IC2:reactorCoolantSimple:1>], [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>]]);
Arcane.addShaped("IC2ReactorCoolant", <IC2:reactorCoolantSix:1>, "aqua 48", [[<ore:plateTin>, <IC2:reactorCoolantTriple:1>, <ore:plateTin>], [<ore:plateTin>, <ore:plateThaumium>, <ore:plateTin>], [<ore:plateTin>, <IC2:reactorCoolantTriple:1>, <ore:plateTin>]]);
Research.addArcanePage("IC2ReactorCoolant", <IC2:reactorCoolantSimple:1>);
Research.addArcanePage("IC2ReactorCoolant", <IC2:reactorCoolantTriple:1>);
Research.addArcanePage("IC2ReactorCoolant", <IC2:reactorCoolantSix:1>);
Research.setConcealed("IC2ReactorCoolant", true);
Research.setRound("IC2ReactorCoolant", true);
Research.setSpikey("IC2ReactorCoolant", true);
Research.addPrereq("IC2ReactorCoolant", "IC2ReactorHeatExchangeTheory", false);

# Electric tools
# --------------

Research.addResearch("IC2Drill", "EMT", "metallum 5, instrumentum 10, machina 5", -8, 2, 5, <IC2:itemToolDrill>);
Research.addPage("IC2Drill", "abcivIII.IC2Drill.text.1");
recipes.addShaped(<IC2:itemToolDrill>, [[null, plateIron, null], [plateIron, plateIron, plateIron], [plateIron, <IC2:itemRecipePart:2>, plateIron]]);
Research.addCraftingPage("IC2Drill", <IC2:itemToolDrill>);
Research.setSecondary("IC2Drill", true);

Research.addResearch("IC2Chainsaw", "EMT", "metallum 5, instrumentum 10, machina 5", -8, -2, 5, <IC2:itemToolChainsaw>);
Research.addPage("IC2Chainsaw", "abcivIII.IC2Chainsaw.text.1");
recipes.addShaped(<IC2:itemToolChainsaw>, [[null, plateIron, plateIron], [plateIron, plateIron, plateIron], [<IC2:itemRecipePart:2>, plateIron, null]]);
Research.addCraftingPage("IC2Chainsaw", <IC2:itemToolChainsaw>);
Research.setSecondary("IC2Chainsaw", true);

Research.addResearch("IC2DiamondDrill", "EMT", "metallum 5, vitreus 5, instrumentum 10, machina 5", -10, 1, 5, <IC2:itemToolDDrill>);
Research.addPage("IC2DiamondDrill", "abcivIII.IC2DiamondDrill.text.1");
recipes.remove(<IC2:itemToolDDrill>);
recipes.addShaped(<IC2:itemToolDDrill>, [[null, <ore:gemDiamond>, null], [<ore:gemDiamond>, <IC2:itemTurningBlanks:344865>.withTag({state: {l0: 5, l1: 4, l2: 3, l3: 2, l4: 1}}), <ore:gemDiamond>], [ingotThaumium, <IC2:itemToolDrill:*>, ingotThaumium]]);
Research.addCraftingPage("IC2DiamondDrill", <IC2:itemToolDDrill>);
Research.setSecondary("IC2DiamondDrill", true);

Research.addResearch("IC2ElectricHoe", "EMT", "metallum 3, instrumentum 3, messis 5, meto 5", -4, -2, 5, <IC2:itemToolHoe>);
Research.addPage("IC2ElectricHoe", "abcivIII.IC2ElectricHoe.text.1");
Research.clearPrereqs("Electric Hoe of Growth");
Research.addPrereq("Electric Hoe of Growth", "IC2ElectricHoe", false);

# Crop
# --------------

Research.addResearch("IC2Crop", "EMT", "meto 20, messis 20, arbor 20, herba 20, humanus 20, aer 20, aqua 20, victus 20", -11, -5, 24, <IC2:itemCropSeed>.withTag({owner: "IC2", name: "wheat", scan: 4 as byte, growth: 10 as byte, resistance: 10 as byte, gain: 10 as byte}));
Research.setSecondary("IC2Crop", true);
Research.addPrereq("IC2Crop", "Earth Infused Solar Panels", true);
Research.addPrereq("IC2Crop", "Water Infused Solar Panels", true);
Research.addPrereq("IC2Crop", "Fire Infused Solar Panels", true);
Research.addPrereq("IC2Crop", "Air Infused Solar Panels", true);
Research.addPrereq("IC2Crop", "Electric Hoe of Growth", false);
Research.addPrereq("IC2Crop", "Chainsaw of the Stream", false);
Research.addPage("IC2Crop", "abcivIII.IC2Crop.text.1");
Arcane.addShaped("IC2Crop", <IC2:blockCrop>*4, "aer 3, aqua 3, terra 3", [[<ore:stickWood>, null, <ore:stickWood>], [<ore:stickWood>, null, <ore:stickWood>]]);
Research.addArcanePage("IC2Crop", <IC2:blockCrop>);
Arcane.addShaped("IC2Crop", <IC2:itemCropnalyzer>, "ordo 10", [[<IC2:itemCable>, <Thaumcraft:ItemEssence:1>.withTag({Aspects: [{amount: 8, key: "herba"}]}), <IC2:itemCable>], [<Automagy:crystalEntityEye>, <Thaumcraft:ItemResource:10>, plateAdvAlloy], [circuit, <Thaumcraft:ItemEssence:1>.withTag({Aspects: [{amount: 8, key: "messis"}]}), <ore:plateThaumium>]]);
Research.addArcanePage("IC2Crop", <IC2:itemCropnalyzer>);
Research.addPage("IC2Crop", "abcivIII.IC2Crop.text.2");
Research.addPage("IC2Crop", "abcivIII.IC2Crop.text.3");
Crucible.addRecipe("IC2Crop", <IC2:itemCellHydrant:1>, <IC2:itemCellEmpty:1>, "sano 2, aqua 3");
Research.addCruciblePage("IC2Crop", <IC2:itemCellHydrant:1>);

Research.addResearch("IC2WeedKiller", "EMT", "venenum 10, messis 10, perditio 10, instrumentum 10", -13, -6, 5, <IC2:itemGrinPowder>);
Research.addPage("IC2WeedKiller", "abcivIII.IC2WeedKiller.text.1");
Arcane.addShapeless("IC2WeedKiller", <IC2:itemGrinPowder>*8, "perditio 7", [<Thaumcraft:ItemEssence:1>.withTag({Aspects: [{amount: 8, key: "venenum"}]}), <minecraft:rotten_flesh>]);
Research.addArcanePage("IC2WeedKiller", <IC2:itemGrinPowder>);
Research.addPrereq("IC2WeedKiller", "IC2Crop", false);
Arcane.addShaped("IC2WeedKiller", <IC2:itemWeedingTrowel>, "ordo 5, aer 5", [[plateIron, null, plateIron], [null, ingotIron, null], [<ore:itemRubber>, <ore:plateThaumium>, <ore:itemRubber>]]);
Research.addArcanePage("IC2WeedKiller", <IC2:itemWeedingTrowel>);
Research.addPage("IC2WeedKiller", "abcivIII.IC2WeedKiller.text.2");
Research.setConcealed("IC2WeedKiller", true);

Research.addResearch("IC2Fertilizer", "EMT", "sano 10, messis 10, ordo 10, lux 10", -10, -7, 5, <IC2:itemFertilizer>);
Aspects.set(<IC2:itemFertilizer>, "messis 2, herba 2");
Research.addPage("IC2Fertilizer", "abcivIII.IC2WeedKiller.text.1");
recipes.addShapeless(<IC2:itemFertilizer>, [<minecraft:dye:15>, <minecraft:dye:15>, <IC2:itemScrap>]);
Research.addCraftingPage("IC2Fertilizer", <IC2:itemFertilizer>);
Crucible.addRecipe("IC2Fertilizer", <IC2:itemFertilizer>*3, <IC2:itemFertilizer>, "lucrum 5, ordo 2, herba 1");
Research.addCruciblePage("IC2Fertilizer", <IC2:itemFertilizer>);
Research.addPrereq("IC2Fertilizer", "IC2Crop", false);

Research.addResearch("IC2CropMoniting", "EMT", "messis 15, iter 15, ordo 15, venenum 15, instrumentum 20, machina 20, potentia 20", -12, -8, 12, <IC2:blockMachine2:2>);
Research.addPage("IC2CropMoniting", "abcivIII.IC2CropMoniting.text.1");
Research.addPrereq("IC2CropMoniting", "IC2Crop", true);
Research.addPrereq("IC2CropMoniting", "IC2WeedKiller", false);
Research.addPrereq("IC2CropMoniting", "IC2Fertilizer", false);
Research.setSecondary("IC2CropMoniting", true);
Research.setConcealed("IC2CropMoniting", true);
Arcane.addShaped("IC2CropMoniting", <IC2:blockMachine2:2>, "ordo 20", [[circuit, <Thaumcraft:ItemGolemPlacer:0>, circuit], [<IC2:itemCellEmpty>, machineHull, <minecraft:iron_hoe>], [<IC2:blockCrop>, <Thaumcraft:ItemEssence:1>.withTag({Aspects: [{amount: 8, key: "messis"}]}), <IC2:blockCrop>]]);
Research.addArcanePage("IC2CropMoniting", <IC2:blockMachine2:2>);

Research.addResearch("IC2CropHarvest", "EMT", "messis 15, arbor 15, herba 15, meto 15, instrumentum 20, machina 20, potentia 20", -10, -3, 12, <IC2:blockMachine3:7>);
Research.addPage("IC2CropHarvest", "abcivIII.IC2CropHarvest.text.1");
Research.addPrereq("IC2CropHarvest", "IC2Crop", false);
Research.addPrereq("IC2CropHarvest", "Electric Hoe of Growth", true);
Research.addPrereq("IC2CropHarvest", "Thaumium Chainsaw", true);
Research.setSecondary("IC2CropHarvest", true);
Research.setConcealed("IC2CropHarvest", true);
Arcane.addShaped("IC2CropHarvest", <IC2:blockMachine3:7>, "perditio 20", [[circuit, <Thaumcraft:ItemGolemPlacer:0>, circuit], [<minecraft:iron_shovel>, machineHull, <minecraft:shears>], [<IC2:blockCrop>, <Thaumcraft:ItemEssence:1>.withTag({Aspects: [{amount: 8, key: "meto"}]}), <IC2:blockCrop>]]);
Research.addArcanePage("IC2CropHarvest", <IC2:blockMachine3:7>);

# Basic tools
# --------------

Research.addResearch("IC2BronzeTools", "EMT", "metallum 5, instrumentum 5", -3, 0, 10, <IC2:itemIngot:2>);
Research.addPage("IC2BronzeTools", "abcivIII.IC2BronzeTools.text.1");
Research.addPrereq("IC2BronzeTools", "Electric Magic Tools", false);
Research.addPrereq("IC2ElectricHoe", "IC2BronzeTools", false);
recipes.addShapeless(<IC2:itemDust:0>, [<ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustTin>]);
recipes.addShaped(<IC2:itemArmorBronzeHelmet>, [[ingotBronze, ingotBronze, ingotBronze], [ingotBronze, null, ingotBronze]]);
recipes.addShaped(<IC2:itemArmorBronzeChestplate>, [[ingotBronze, null, ingotBronze], [ingotBronze, ingotBronze, ingotBronze], [ingotBronze, ingotBronze, ingotBronze]]);
recipes.addShaped(<IC2:itemArmorBronzeLegs>, [[ingotBronze, ingotBronze, ingotBronze], [ingotBronze, null, ingotBronze], [ingotBronze, null, ingotBronze]]);
recipes.addShaped(<IC2:itemArmorBronzeBoots>, [[ingotBronze, null, ingotBronze], [ingotBronze, null, ingotBronze]]);
recipes.addShaped(<IC2:itemToolBronzePickaxe>, [[ingotBronze, ingotBronze, ingotBronze], [null, <ore:stickWood>, null], [null, <ore:stickWood>, null]]);
recipes.addShaped(<IC2:itemToolBronzeAxe>, [[ingotBronze, ingotBronze, null], [ingotBronze, <ore:stickWood>, null], [null, <ore:stickWood>, null]]);
recipes.addShaped(<IC2:itemToolBronzeSpade>, [[ingotBronze], [<ore:stickWood>], [<ore:stickWood>]]);
recipes.addShaped(<IC2:itemToolBronzeHoe>, [[ingotBronze, ingotBronze], [null, <ore:stickWood>], [null, <ore:stickWood>]]);
recipes.addShaped(<IC2:itemToolBronzeSword>, [[ingotBronze], [ingotBronze], [<ore:stickWood>]]);
Research.addCraftingPage("IC2BronzeTools", <IC2:itemToolBronzeAxe>);
Research.addCraftingPage("IC2BronzeTools", <IC2:itemToolBronzeSword>);
Research.addCraftingPage("IC2BronzeTools", <IC2:itemToolBronzePickaxe>);
Research.addCraftingPage("IC2BronzeTools", <IC2:itemToolBronzeSpade>);
Research.addCraftingPage("IC2BronzeTools", <IC2:itemToolBronzeHoe>);
Research.addCraftingPage("IC2BronzeTools", <IC2:itemArmorBronzeHelmet>);
Research.addCraftingPage("IC2BronzeTools", <IC2:itemArmorBronzeChestplate>);
Research.addCraftingPage("IC2BronzeTools", <IC2:itemArmorBronzeLegs>);
Research.addCraftingPage("IC2BronzeTools", <IC2:itemArmorBronzeBoots>);

Research.setRound("Iron Omnitool", false);
Research.setSecondary("Iron Omnitool", true);
Research.setConcealed("Iron Omnitool", true);
Research.setRound("Diamond Chainsaw", false);
Research.setSecondary("Diamond Chainsaw", true);
Research.addPrereq("IC2Drill", "IC2BronzeTools", false);
Research.addPrereq("IC2Chainsaw", "IC2BronzeTools", false);
Research.addPrereq("IC2DiamondDrill", "IC2Drill", false);
Research.addPrereq("Diamond Chainsaw", "IC2Chainsaw", false);
Research.addPrereq("Thaumium Drill", "IC2DiamondDrill", false);
Research.addPrereq("Thaumium Chainsaw", "Diamond Chainsaw", false);
Research.addPrereq("Iron Omnitool", "IC2Drill", false);
Research.addPrereq("Iron Omnitool", "IC2Chainsaw", false);
Research.addPrereq("Diamond Omnitool", "IC2DiamondDrill", false);
Research.addPrereq("Diamond Omnitool", "Diamond Chainsaw", false);
Research.addPrereq("Diamond Omnitool", "Iron Omnitool", false);
Research.addPrereq("Thaumium Omnitool", "Thaumium Drill", false);
Research.addPrereq("Thaumium Omnitool", "Thaumium Chainsaw", false);
Research.addPrereq("Thaumium Omnitool", "Diamond Omnitool", false);

Research.addResearch("IC2CuttingEdge", "EMT", "instrumentum 10, aer 5, aqua 5, ordo 5", -6, 0, 10, <cuttingedge:evap>);
Research.addPage("IC2CuttingEdge", "abcivIII.IC2CuttingEdge.text.1");
Research.addPrereq("IC2CuttingEdge", "IC2BronzeTools", false);
Arcane.addShaped("IC2CuttingEdge", <cuttingedge:tap>, "ordo 10", [[<minecraft:leather>, <IC2:itemIronBlockCuttingBlade>, <minecraft:leather>], [<minecraft:leather>, treeTap, <minecraft:leather>], [null, <minecraft:hopper>, null]]);
Research.addArcanePage("IC2CuttingEdge", <cuttingedge:tap>);
Arcane.addShaped("IC2CuttingEdge", <cuttingedge:evap>, "ignis 10", [[<ore:plateBronze>, <IC2:itemFluidCell>, <ore:plateBronze>], [<ore:plateBronze>, <IC2:itemRecipePart:0>, <ore:plateBronze>], [<ore:plateObsidian>, <IC2:blockMachine:1>, <ore:plateObsidian>]]);
Research.addArcanePage("IC2CuttingEdge", <cuttingedge:evap>);

# Armor
# --------------

Research.addResearch("IC2Hazamet", "EMT", "tutamen 10, terra 8, aer 5, aqua 5", 3, 0, 5, <IC2:itemArmorHazmatChestplate>);
Research.addPage("IC2Hazamet", "abcivIII.IC2BronzeTools.text.1");
Research.addPrereq("IC2Hazamet", "Electric Magic Tools", false);
Research.addPrereq("IC2Hazamet", "IC2AerExtractor", true);
Arcane.addShaped("IC2Hazamet", <IC2:itemArmorHazmatHelmet>, "aer 5, aqua 5, terra 5, ordo 5", [[<ore:itemRubber>, <EMT:EMTItems:10>, <ore:itemRubber>], [<ore:itemRubber>, null, <ore:itemRubber>]]);
Arcane.addShaped("IC2Hazamet", <IC2:itemArmorHazmatChestplate>, "aer 8, aqua 8, terra 8, ordo 8", [[<ore:itemRubber>, null, <ore:itemRubber>], [<EMT:EMTItems:10>, <ore:dyeOrange>, <EMT:EMTItems:10>], [<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>]]);
Arcane.addShaped("IC2Hazamet", <IC2:itemArmorHazmatLeggings>, "aer 7, aqua 7, terra 7, ordo 7", [[<EMT:EMTItems:10>, <ore:dyeOrange>, <EMT:EMTItems:10>], [<ore:itemRubber>, null, <ore:itemRubber>], [<ore:itemRubber>, null, <ore:itemRubber>]]);
Arcane.addShaped("IC2Hazamet", <IC2:itemArmorRubBoots>, "aer 4, aqua 4, terra 4, ordo 4", [[<ore:itemRubber>, null, <ore:itemRubber>], [<ore:itemRubber>, <minecraft:wool:*>, <ore:itemRubber>]]);
Research.addCraftingPage("IC2Hazamet", <EMT:EMTItems:10>);
Research.addArcanePage("IC2Hazamet", <IC2:itemArmorHazmatHelmet>);
Research.addArcanePage("IC2Hazamet", <IC2:itemArmorHazmatChestplate>);
Research.addArcanePage("IC2Hazamet", <IC2:itemArmorHazmatLeggings>);
Research.addArcanePage("IC2Hazamet", <IC2:itemArmorRubBoots>);

Research.addResearch("IC2ReinforcedArmor", "EMT", "tutanmen 15, terra 20, metallum 20", 5, 0, 10, <IC2:itemArmorAlloyChestplate>);
Research.addPage("IC2ReinforcedArmor", "abcivIII.IC2ReinforcedArmor.text.1");
recipes.addShaped(<IC2:itemArmorAlloyChestplate>, [[plateAdvAlloy, null, plateAdvAlloy], [<ore:plateThaumium>, <minecraft:leather_chestplate>, <ore:plateThaumium>], [plateAdvAlloy, <IC2:itemArmorBronzeChestplate>, plateAdvAlloy]]);
Research.addCraftingPage("IC2ReinforcedArmor", <IC2:itemArmorAlloyChestplate>);
Research.addPrereq("IC2ReinforcedArmor", "IC2Hazamet", false);
Research.addPrereq("Shield Focus", "IC2ReinforcedArmor", false);
Research.addPrereq("Shield Focus", "IC2Hazamet", false);
Research.addPrereq("Shield Focus", "IC2MagicConcrete", false);

Research.addResearch("IC2SelfPowerGenerationSuit", "EMT", "tutamen 5, potentia 15, machina 15, permutatio 10", 7, 0, 24, <IC2:itemSolarHelmet>);
Research.addPrereq("IC2SelfPowerGenerationSuit", "IC2ReinforcedArmor", false);
Research.addPage("IC2SelfPowerGenerationSuit", "abcivIII.IC2SelfPowerGenerationSuit.text.1");

Research.addResearch("IC2Nanosuit", "EMT", "tutamen 30, potentia 30, machina 30, exubitor 30, aruam 30", 9, 0, 36, <IC2:itemArmorNanoChestplate>);
Research.addPage("IC2Nanosuit", "abcivIII.IC2Nanosuit.text.1");
Research.setConcealed("IC2Nanosuit", true);
Research.addPrereq("IC2Nanosuit", "IC2SelfPowerGenerationSuit", false);

# Special Weapon
# --------------

Research.addResearch("IC2Nanosaber", "EMT", "telum 20, ignis 20, potentia 20, viterus 20, lux 20, metallum 20, volatus 20", -14, -4, 24, <IC2:itemNanoSaber>);
Research.addPrereq("IC2Nanosaber", "Chainsaw of the Stream", false);
Research.addPrereq("The Legend", "IC2Nanosaber", false);
Research.addPrereq("Mjolnir", "The Legend", false);
Research.addPrereq("The Legend", "IC2SEAFM", true);
Research.setSpikey("The Legend", true);
Research.setSpikey("IC2Nanosaber", true);
Research.setConcealed("The Legend", true);
Research.setConcealed("IC2Nanosaber", true);
Research.addPage("IC2Nanosaber", "abcivIII.IC2Nanosaber.text.1");
Infusion.addRecipe("IC2Nanosaber", <IC2:itemBatCrystal:1>.withTag({charge: 1000000.0}), [<Thaumcraft:FocusShock>, <Thaumcraft:ItemResource:10>, plateCarbon, <Automagy:blockRedcrystalAmp>, <Automagy:blockTranslucent>, plateCarbon, <Thaumcraft:ItemResource:15>, <Thaumcraft:ItemResource:10>, plateCarbon, <Automagy:blockRedcrystalAmp>, <Automagy:blockTranslucent>, plateCarbon],"telum 16, machina 16, motus 16, potentia 16, tempestas 16, auram 16, ordo 16", <IC2:itemNanoSaber>, 10);
Research.addInfusionPage("IC2Nanosaber", <IC2:itemNanoSaber>);

# UU-Matter
# --------------

Research.addResearch("IC2RedElixirInLegend", "EMT", "aer 10, aqua 10, ignis 10, ordo 10, perditio 10, terra 10, praecantatio 20, permutatio 10, sano 10, alienis 10, mortuus 10, lux 10, spiritus 10, humanus 10, cognitio 20", -7, 7, 42, <IC2:fluidUuMatter>);
Research.setRound("IC2RedElixirInLegend", true);
Research.addPage("IC2RedElixirInLegend", "abcivIII.IC2RedElixirInLegend.text.1");
Research.addPage("IC2RedElixirInLegend", "abcivIII.IC2RedElixirInLegend.text.2");
Research.addPage("IC2RedElixirInLegend", "abcivIII.IC2RedElixirInLegend.text.3");
Research.addPage("IC2RedElixirInLegend", "abcivIII.IC2RedElixirInLegend.text.4");
Research.setSpikey("IC2RedElixirInLegend", true);
Research.setConcealed("IC2RedElixirInLegend", true);
Warp.addToResearch("IC2RedElixirInLegend", 6);

Research.addResearch("IC2OriginOfMatter", "EMT", "metallum 10, vitium 10, alienis 10, humanus 10, auram 10, fabrico 10, messis 10, machina 10, praecantatio 10, tempus 10, infernus 10, revelatio 10", -9, 9, 24, <IC2:itemCellEmpty:3>);
Research.setConcealed("IC2OriginOfMatter", true);
Research.setRound("IC2OriginOfMatter", true);
Research.setSpikey("IC2OriginOfMatter", true);
Research.addPage("IC2OriginOfMatter", "abcivIII.IC2OriginOfMatter.text.1");
Research.addPage("IC2OriginOfMatter", "abcivIII.IC2OriginOfMatter.text.2");
Research.addPrereq("IC2OriginOfMatter", "IC2RedElixirInLegend", false);
Infusion.addRecipe("IC2OriginOfMatter", <IC2:itemBatLamaCrystal:1>.withTag({charge: 1.0E7}), [<Thaumcraft:blockStoneDevice:11>, <Thaumcraft:blockMetalDevice:3>, <Railcraft:machine.epsilon:3>, <IC2:blockMachine:12>, circuitAdv, <Thaumcraft:blockMetalDevice:3>, <Thaumcraft:FocusPrimal>, <Thaumcraft:blockMetalDevice:3>, circuitAdv, <IC2:blockMachine:12>, <Railcraft:machine.epsilon:3>, <Thaumcraft:blockMetalDevice:3>], "aer 120000, aqua 120000, ignis 120000, ordo 120000, perditio 120000, terra 120000, spiritus 64000, humanus 32000, lux 32000, fabrico 200000000", <IC2:blockMachine:14>, 20);
Research.addInfusionPage("IC2OriginOfMatter", <IC2:blockMachine:14>);
Research.addPrereq("UU-Matter Infusion", "IC2OriginOfMatter", false);
Warp.addToResearch("IC2OriginOfMatter", 10);

Research.addResearch("IC2MysticalIngredient", "EMT", "cognitio 10, instrumentnum 10, humanus 10, machina 10, lux 10, sensus 10, fabrico 10, metallum 10", -11, 11, 24, <IC2:itemcrystalmemory>);
Research.addPrereq("IC2MysticalIngredient", "IC2OriginOfMatter", false);
Research.setRound("IC2MysticalIngredient", true);
Research.setSpikey("IC2MysticalIngredient", true);
Research.addPage("IC2MysticalIngredient", "abcivIII.IC2MysticalIngredient.text.1");
Research.setConcealed("IC2MysticalIngredient", true);
Infusion.addRecipe("IC2MysticalIngredient", <IC2:blockMachine:12>, [<IC2:blockAlloyGlass>, <IC2:blockLuminatorDark>, circuitAdv, <IC2:blockLuminatorDark>, <Thaumcraft:ItemResource:10>, <IC2:blockLuminatorDark>, circuitAdv, <IC2:blockLuminatorDark>], "sensus 32, fabrico 32, machina 32, cognitio 32", <IC2:blockMachine2:7>, 5);
Research.addInfusionPage("IC2MysticalIngredient", <IC2:blockMachine2:7>);
Research.addPage("IC2MysticalIngredient", "abcivIII.IC2MysticalIngredient.text.2");
recipes.remove(<IC2:blockMachine2:6>);
Arcane.addShaped("IC2MysticalIngredient", <IC2:blockMachine2:6>, "aer 50, aqua 50, ignis 50, ordo 50, perditio 50, terra 50", [[<Automagy:blockAmnesiac>, <Automagy:blockXPStone>, <Automagy:blockAmnesiac>], [<IC2:itemcrystalmemory>, <IC2:blockMachine:12>, <IC2:itemcrystalmemory>], [<Automagy:crystalBrain:4>, circuitAdv, <Automagy:crystalBrain:5>]]);
Research.addArcanePage("IC2MysticalIngredient",<IC2:blockMachine2:6>);

Research.addResearch("IC2TheFinalAnswer", "EMT", "aer 32, aqua 32, ignis 32, ordo 32, perditio 32, terra 32, humanus 32, lux 32, spiritus 32, permutatio 32", -13, 13, 32, <IC2:blockMachine2:8>);
Research.addPrereq("IC2TheFinalAnswer", "IC2MysticalIngredient", false);
Research.setRound("IC2TheFinalAnswer", true);
Research.setSpikey("IC2TheFinalAnswer", true);
Research.addPage("IC2TheFinalAnswer", "abcivIII.IC2TheFinalAnswer.text.1");
Research.setConcealed("IC2TheFinalAnswer", true);
Infusion.addRecipe("IC2TheFinalAnswer", <IC2:blockElectric:1>, [<Thaumcraft:ItemEldritchObject:3>, <Thaumcraft:ItemEldritchObject:0>, <Automagy:blockNethermind>, <IC2:blockMachine2:0>, <Thaumcraft:blockStoneDevice:11>, <IC2:blockElectric:5>, <Thaumcraft:ItemEldritchObject:0>, <IC2:blockElectric:5>, <Thaumcraft:blockStoneDevice:11>, <IC2:blockMachine2:0>, <Automagy:blockNethermind>, <Thaumcraft:ItemEldritchObject:0>], "fabrico 100, machina 100, cognitio 100", <IC2:blockMachine2:8>, 15);
Research.addInfusionPage("IC2TheFinalAnswer", <IC2:blockMachine2:8>);
Warp.addToResearch("IC2TheFinalAnswer", 42);

# Avaritia
#--------------

ExtremeCrafting.addShaped(<IC2:blockNuke>, [[containPlate, containPlate, containPlate, containPlate, containPlate, containPlate, containPlate, containPlate, containPlate], [containPlate, heatPlate, heatPlate, heatPlate, heatPlate, heatPlate, heatPlate, heatPlate, containPlate], [containPlate, heatPlate, <ore:circuitAdvanced>, ichor, <IC2:reactorReflectorThick>, ichor, <ore:circuitAdvanced>, heatPlate, containPlate], [containPlate, heatPlate, ichor, <IC2:reactorReflectorThick>, <IC2:reactorMOXQuaddepleted>, <IC2:reactorReflectorThick>, ichor, heatPlate, containPlate], [containPlate, heatPlate, <IC2:reactorReflectorThick>, <IC2:reactorMOXQuaddepleted>, <IC2:reactorLithiumCell>, <IC2:reactorMOXQuaddepleted>, <IC2:reactorReflectorThick:1>, heatPlate, containPlate], [containPlate, heatPlate, ichor, <IC2:reactorReflectorThick>, <IC2:reactorMOXQuaddepleted>, <IC2:reactorReflectorThick>, ichor, heatPlate, containPlate], [containPlate, heatPlate, <ore:circuitAdvanced>, ichor, <IC2:reactorReflectorThick>, ichor, <ore:circuitAdvanced>, heatPlate, containPlate], [containPlate, heatPlate, heatPlate, heatPlate, heatPlate, heatPlate, heatPlate, heatPlate, containPlate], [containPlate, containPlate, containPlate, containPlate, containPlate, containPlate, containPlate, containPlate, containPlate]]);

ExtremeCrafting.addShaped(<IC2:plasmaLauncher>, [[plateIridiumAdv, ingotNeutron, plateIridiumAdv, null, null, null, null, null, null], [ingotNeutron, singluarityRedstone, ingotNeutron, plateIridiumAdv, null, null, null, null, null], [plateIridiumAdv ,ingotNeutron, singluarityRedstone, ingotNeutron, plateIridiumAdv, null, null, null, null], [null, plateIridiumAdv ,ingotNeutron, singluarityRedstone, ingotNeutron, plateIridiumAdv, null, null, null], [null, null, plateIridiumAdv ,ingotNeutron, singluarityRedstone, ingotNeutron, plateIridiumAdv, null, null], [null, null, null, plateIridiumAdv ,ingotNeutron, <IC2:itemBatLamaCrystal:*>, <IC2:itemToolMiningLaser:*>, plateIridiumAdv, null], [null, null, null, <EMT:EMTItems:10>, <EMT:EMTItems:10>, <IC2:itemToolMiningLaser:*>, <IC2:blockMachine2:1>, circuitAdv, plateIridiumAdv], [null, null, null, plateIridiumAdv, <EMT:EMTItems:10>, <EMT:EMTItems:10>, circuitAdv, circuitAdv, plateIridiumAdv], 
[null, null, null, null, plateIridiumAdv, plateIridiumAdv, plateIridiumAdv, plateIridiumAdv, null]]);
