function printInfo()
  --Get the emulation state
  state = emu.getState()

    bgColor = 0x30FCBA30
    fgColor = 0x30F74000


  --Draw some rectangles and print some text
  emu.drawRectangle(8, 8, 64, 50, bgColor, true, 1)
  emu.drawRectangle(8, 8, 64, 50, fgColor, false, 1)
  emu.drawString(12, 12, "P1_Str:" .. emu.read(0x6110, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(12, 21, "P1_Agi:" .. emu.read(0x6111, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(12, 30, "P1_Vit:" .. emu.read(0x6112, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(12, 39, "P1_Int:" .. emu.read(0x6113, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(12, 48, "P1_Sol:" .. emu.read(0x6114, 256), 0xFFFFFF, 0xFF000000, 1)


end

--Register some code (printInfo function) that will be run at the end of each frame
emu.addEventCallback(printInfo, emu.eventType.endFrame)

--Display a startup message
emu.displayMessage("Script", "Example Lua script loaded.")
