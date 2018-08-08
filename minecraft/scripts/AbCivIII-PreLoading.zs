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

import mods.logistics.hammer;

print("Loading started, please stand by...");

hammer.removeRecipe(<ore:stone>);
hammer.addRecipe(<Thaumcraft:blockCosmeticSolid:6>, <PracticalLogistics:StonePlate>);

<ore:plateIron>.add(<Railcraft:part.plate:0>);
<ore:plateSteel>.add(<Railcraft:part.plate:1>);
<ore:plateCopper>.add(<Railcraft:part.plate:3>);

<Thaumcraft:ItemThaumonomicon>.addTooltip(format.lightPurple("This is your best in-game helper ever"));

<IC2:blockMachine:14>.addTooltip(format.blue("MACHINA INTRA LACRIMA VAZKIIS"));
