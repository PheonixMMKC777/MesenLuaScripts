function printInfo()
  --Get the emulation state
  state = emu.getState()
  
    bgColor = 0x300035FF
    fgColor = 0x30009bff
   
    

    frame = emu.read (0xf1,256)
    seconds = frame * 4.2
    minutes = seconds / 60
      emu.drawRectangle(2, 2, 100, 25, bgColor, true, 1)
      emu.drawRectangle(2, 2, 100, 25, fgColor, false, 1)
      
    
      emu.drawString(5, 5, "Encouner_RNG:" .. emu.read(0xf5, 256), 0xFFFFFF, 0xFF000000, 1)
      emu.drawString(5, 15, "Encounter_Group:" .. emu.read(0xf7, 256), 0xFFFFFF, 0xFF000000, 1)
      --emu.drawString(5, 25, "Frame_ID:" .. minutes, 0xFFFFFF, 0xFF000000, 1)
    
end

--Register some code (printInfo function) that will be run at the end of each frame
emu.addEventCallback(printInfo, emu.eventType.endFrame)

--Display a startup message
emu.displayMessage("MMKC", "script loaded.")  