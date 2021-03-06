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
import mods.thaumcraft.Infusion;

# Global variabls
#-------------------------


# Researches
#-------------------------
Research.addResearch("FMOriginOfSins", "FORBIDDEN", "alienis 10, gula 20, desidia 20, ira 20, lucrum 20, luxuria 20, superbia 20, invidia 20", -4, 0, 12, <Thaumcraft:WandCasting:84>.withTag({cap: "void", rod: "equivalent"}));
Research.addPage("FMOriginOfSins", "abcivIII.FMTheOriginOfSins.text.1");
Research.setSpikey("FMOriginOfSins", true);
Research.addPrereq("FMOriginOfSins", "SINSTONE", true);
Infusion.addRecipe("FMOriginOfSins", <Thaumcraft:ArcaneDoorKey:1>, [<Thaumcraft:blockWoodenDevice:8>, <Thaumcraft:blockCustomPlant:3>, <Thaumcraft:blockCrystal:1>, <minecraft:obsidian>, <Thaumcraft:ItemResource:15>, <Thaumcraft:ItemResource:12>, <Thaumcraft:FocusFire>, <Thaumcraft:ItemResource:12>, <Thaumcraft:ItemResource:15>, <minecraft:obsidian>, <Thaumcraft:blockCrystal:1>, <Thaumcraft:blockCustomPlant:3>], "infernus 32, alienis 32, gula 32, desidia 32, ira 32, lucrum 32, luxuria 32, superbia 32, invidia 32", <LockedDimensions:item.netherKey>, 15);
Research.addInfusionPage("FMOriginOfSins", <LockedDimensions:item.netherKey>);
