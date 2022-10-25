
function printInfo()
  state = emu.getState()
  -- AABBCCDD     AA = transparency, BBCCDD = RGB
    bgColor = 0x30ff0022
    fgColor = 0x30ff00aa 

    bgColor2 = 0x301AFF00
    fgColor2 = 0x3012B000
    
 


  --Draw some rectangles and print some text
  --emu.drawRectangle(80, 180, 70, 40, bgColor, true, 1)
  --emu.drawRectangle(80, 8, 70, 40, fgColor, false, 1)
  emu.drawString(200, 30, "" .. emu.read(0x82, 256), 0xFFFFFF, 0xFF000000, 1) 
   emu.drawString(200, 40, "" .. emu.read(0x83, 256), 0xFFFFFF, 0xFF000000, 1) 

  
end

--Register some code (printInfo function) that will be run at the end of each frame
emu.addEventCallback(printInfo, emu.eventType.endFrame)

--Display a startup message
emu.displayMessage("Script", "Lua script loaded.")
