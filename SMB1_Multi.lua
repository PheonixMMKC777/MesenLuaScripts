
function printInfo()
  state = emu.getState()
  -- AABBCCDD     AA = transparency, BBCCDD = RGB
    bgColor = 0x30ff0022
    fgColor = 0x30ff00aa 

    bgColor2 = 0x301AFF00
    fgColor2 = 0x3012B000
    
 


  --Draw some rectangles and print some text
  emu.drawRectangle(8, 8, 86, 24, bgColor, true, 1)
  emu.drawRectangle(8, 8, 86, 24, fgColor, false, 1)
  emu.drawString(12, 12, "P1_X:" .. emu.read(0x8B, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(12, 21, "P1_Y:" .. emu.read(0xC3, 256), 0xFFFFFF, 0xFF000000, 1)  

  
  emu.drawRectangle(160, 8, 86, 24, bgColor2, true, 1)
  emu.drawRectangle(160, 8, 86, 24, fgColor2, false, 1)
  emu.drawString(164, 12, "P2_X:" .. emu.read(0x8C, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(164, 21, "P2_Y:" .. emu.read(0xC4, 256), 0xFFFFFF, 0xFF000000, 1)  

  
  
end

--Register some code (printInfo function) that will be run at the end of each frame
emu.addEventCallback(printInfo, emu.eventType.endFrame)

--Display a startup message
emu.displayMessage("Script", "Lua script loaded.")
