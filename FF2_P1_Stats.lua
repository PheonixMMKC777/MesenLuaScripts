function printInfo()
  --Get the emulation state
  state = emu.getState()

    bgColor = 0x30FCBA30
    fgColor = 0x30F74000
    bgColor2 = 0x3020CD23
    fgColor2 = 0x30008B02

  --Draw some rectangles and print some text
  emu.drawRectangle(8, 8, 64, 60, bgColor, true, 1)
  emu.drawRectangle(8, 8, 64, 60, fgColor, false, 1)
  emu.drawString(12, 21, "P1_Hit:" .. emu.read(0x6116, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(12, 30, "P1_Hit%:" .. emu.read(0x6117, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(12, 39, "P1_Def:" .. emu.read(0x6129, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(12, 12, "P1_Att:" .. emu.read(0x6118, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(12, 48, "P1_Eva:" .. emu.read(0x612A, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(12, 57, "P1_Eva%:" .. emu.read(0x612B, 256), 0xFFFFFF, 0xFF000000, 1)

  --pl2
  
  emu.drawRectangle(74, 8, 64, 60, bgColor2, true, 1)
  emu.drawRectangle(74, 8, 64, 60, fgColor2, false, 1)
  emu.drawString(78, 21, "P4_Hit:" .. emu.read(0x61D6, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(78, 30, "P4_Hit%:" .. emu.read(0x61D7, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(78, 39, "P4_Def:" .. emu.read(0x61E9, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(78, 12, "P4_Att:" .. emu.read(0x61D8, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(78, 48, "P4_Eva:" .. emu.read(0x61EA, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(78, 57, "P4_Eva%:" .. emu.read(0x61EB, 256), 0xFFFFFF, 0xFF000000, 1)
  
  
end

--Register some code (printInfo function) that will be run at the end of each frame
emu.addEventCallback(printInfo, emu.eventType.endFrame)

--Display a startup message
emu.displayMessage("Script", "Example Lua script loaded.")
