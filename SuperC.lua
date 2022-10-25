
function printInfo()
  state = emu.getState()
    -- AABBCCDD     AA = transparency, BBCCDD = RGB
    bgColor = 0x300026ff
    fgColor = 0x3000ccff
    
    bgColor2 = 0x30ff0022
    fgColor2 = 0x30ff00aa  


  --Draw some rectangles and print some text
  emu.drawRectangle(8, 8, 86, 40, bgColor, true, 1)
  emu.drawRectangle(8, 8, 86, 40, fgColor, false, 1)
  emu.drawString(12, 12, "P1_X:" .. emu.read(0xCC, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(12, 21, "P1_Y:" .. emu.read(0xCE, 256), 0xFFFFFF, 0xFF000000, 1)  
  emu.drawString(12, 30, "P1_Gun:" .. emu.read(0xb8, 256), 0xFFFFFF, 0xFF000000, 1)  
  emu.drawString(12, 39, "P1_Lives:" .. emu.read(0x53, 256), 0xFFFFFF, 0xFF000000, 1)  
  
  
  emu.drawRectangle(160, 8, 86, 40, bgColor2, true, 1)
  emu.drawRectangle(160, 8, 86, 40, fgColor2, false, 1)
  emu.drawString(164, 12, "P2_X:" .. emu.read(0xCD, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(164, 21, "P2_Y:" .. emu.read(0xCF, 256), 0xFFFFFF, 0xFF000000, 1)  
  emu.drawString(164, 30, "P2_Gun:" .. emu.read(0xB9, 256), 0xFFFFFF, 0xFF000000, 1)   
  emu.drawString(164, 39, "P2_Lives:" .. emu.read(0x53, 256), 0xFFFFFF, 0xFF000000, 1)  
  
end

--Register some code (printInfo function) that will be run at the end of each frame
emu.addEventCallback(printInfo, emu.eventType.endFrame)

--Display a startup message
emu.displayMessage("Script", "Lua script loaded.")
