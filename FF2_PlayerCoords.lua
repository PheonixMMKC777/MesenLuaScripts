--This is an example script to give a general idea of how to build scripts
--Press F5 or click the Run button to execute it
--Scripts must be written in Lua (https://www.lua.org)
--This text editor contains an auto-complete feature for all Mesen-specific functions
--Typing "emu." will display a list containing every available API function to interact with Mesen

local RNG1, RNG2, RNG3, RNG4, RNG5, RNG6, RNG7, RNG8, RNG9, RNGA, RNGB, RNGVAL,STEPR
RNG1 = 0x0F
RNG2 = 0x22
RNG3 = 0x3D
RNG4 = 0x48
RNG5 = 0x53
RNG6 = 0x70
RNG7 = 0x8B
RNG8 = 0x9C
RNG9 = 0xB9
RNGA = 0xD9
RNGB = 0xF1
RNGVAL = emu.read(0xF5, 256)
STEPR = NO




function printInfo()
  --Get the emulation state
  state = emu.getState()

    bgColor = 0x30FCBA30
    fgColor = 0x30F74000
    
    if (RNGVAL == 0x0F) 
    then STEPR = YES
    end
    


  --Draw some rectangles and print some text
  emu.drawRectangle(8, 8, 64, 70, bgColor, true, 1)
  emu.drawRectangle(8, 8, 64, 70, fgColor, false, 1)
  emu.drawString(12, 12, "WorldX:" .. emu.read(0x27, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(12, 21, "WorldY:" .. emu.read(0x28, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(12, 30, "TownX:" .. emu.read(0x68, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(12, 39, "TownY:" .. emu.read(0x69, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(12, 48, "MapID:" .. emu.read(0x48, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(12, 57, "RNG:" .. emu.read(0xF5, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(12, 66, RNG1 .. emu.read(0xF5, 256), 0xFFFFFF, 0xFF000000, 1)
    

end

--Register some code (printInfo function) that will be run at the end of each frame
emu.addEventCallback(printInfo, emu.eventType.endFrame)

--Display a startup message
emu.displayMessage("MMKC", "Lua script loaded.")
