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

# Global variabls
#-------------------------


# Researches
#-------------------------

Research.moveResearch("RC_Crowbar", "RAILCRAFT", -3, -3);
Research.moveResearch("RC_Crowbar_Void", "RAILCRAFT", -5, -5);

Research.addResearch("RCTraheremagy", "RAILCRAFT", "metallum 5, motus 20, iter 20, machina 10, potentia 10, volatus 10", 0, 0, 1, <Railcraft:tool.crowbar.reinforced>);
Research.addPage("RCTraheremagy", "abcivIII.RCTraheremagy.text.1");
Research.setSpikey("RCTraheremagy", true);

Research.addResearch("RCBasicRails", "RAILCRAFT", "arbor 5, iter 10, machina 3", 2, 0, 2, <Railcraft:part.rail:2>);
Research.addPage("RCBasicRails", "abcivIII.RCBasicRails.text.1");
Research.addPrereq("RCBasicRails", "RCTraheremagy", false);

Research.addResearch("RCStandardRails", "RAILCRAFT", "metallum 5, iter 10, machina 3", 4, 0, 4, <Railcraft:part.rail>);
Research.addPage("RCStandardRails", "abcivIII.RCStandardRails.text.1");
Research.addPrereq("RCStandardRails", "RCBasicRails", false);

Research.addResearch("RCAdvRails", "RAILCRAFT", "tutamen 5, iter 10, machina 3", 6, 0, 6, <Railcraft:part.rail:1>);
Research.addPage("RCAdvRails", "abcivIII.RCAdvRails.text.1");
Research.addPrereq("RCAdvRails", "RCStandardRails", false);

Research.addResearch("RCReinforcedRails", "RAILCRAFT", "terra 20, iter 10, machina 3", 8, 0, 8, <Railcraft:part.rail:4>);
Research.addPage("RCReinforcedRails", "abcivIII.RCReinforcedRails.text.1");
Research.addPrereq("RCReinforcedRails", "RCAdvRails", false);

Research.addResearch("RCHighSpeedRails", "RAILCRAFT", "motus 5, iter 10, machina 3", 10, 0, 10, <Railcraft:part.rail:3>);
Research.addPage("RCHighSpeedRails", "abcivIII.RCHighSpeedRails.text.1");
Research.addPrereq("RCHighSpeedRails", "RCReinforcedRails", false);

Research.addResearch("RCElectricRails", "RAILCRAFT", "potentia 5, iter 10, machina 3", 12, 0, 10, <Railcraft:part.rail:5>);
Research.addPage("RCElectricRails", "abcivIII.RCElectricRails.text.1");
Research.addPrereq("RCElectricRails", "RCHighSpeedRails", false);
