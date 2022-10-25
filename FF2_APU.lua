
function printInfo()
  state = emu.getState()
  -- AABBCCDD     AA = transparency, BBCCDD = RGB
    bgColor = 0x10194d33
    fgColor = 0x10268e5a
    
    fgColor2 = 0x1026468e
    bgColor2 = 0x100f1d3d
    
    fgColor3 = 0x10a32546
    bgColor3 = 0x10420e1c
    
  -- By PheonixMMKC777 / Scatfone
  
  --Sq1
  emu.drawRectangle(2, 2, 132, 64, bgColor, true, 1)
  emu.drawRectangle(2, 2, 132, 64, fgColor, false, 1)
  emu.drawString(5, 5, "Sq1-Position:" .. emu.read(0xB0, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(5, 15, "Sq1-FrameID:" .. emu.read(0xB1, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(5, 25, "Sq1-NoteEnvelope Hi:" .. emu.read(0xB6, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(5, 35, "Sq1-NoteEnvelope Lo:" .. emu.read(0xB7, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(5, 45, "Sq1-PitchSlide Hi:" .. emu.read(0xBA, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(5, 55, "Sq1-PitchSlide Lo:" .. emu.read(0xBB, 256), 0xFFFFFF, 0xFF000000, 1)

  --Sq2
  emu.drawRectangle(2, 68, 132, 64, bgColor2, true, 1)
  emu.drawRectangle(2, 68, 132, 64, fgColor2, false, 1)
  emu.drawString(5, 71, "Sq2-Position:" .. emu.read(0xB2, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(5, 81, "Sq2-FrameID:" .. emu.read(0xB3, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(5, 91, "Sq2-NoteEnvelope Hi:" .. emu.read(0xB8, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(5, 101,"Sq2-NoteEnvelope Lo:" .. emu.read(0xB9, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(5, 111,"Sq2-PitchSlide Hi:" .. emu.read(0xBC, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(5, 121,"Sq2-PitchSlide Lo:" .. emu.read(0xBD, 256), 0xFFFFFF, 0xFF000000, 1)
  
    --Tirange
  emu.drawRectangle(2, 134, 132, 56, bgColor3, true, 1)
  emu.drawRectangle(2, 134, 132, 56, fgColor3, false, 1)
  emu.drawString(5, 137,"Tri-Position:" .. emu.read(0xB4, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(5, 147,"Tri-FrameID:" .. emu.read(0xB5, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(5, 157,"Tri-PitchSlide Hi:" .. emu.read(0xBE, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(5, 167,"Tri-PitchSlide Lo:" .. emu.read(0xBF, 256), 0xFFFFFF, 0xFF000000, 1)
  emu.drawString(5, 177,"Tri Doesn't use Envelopes " , 0xFFFFFF, 0xFF000000, 1)
  
end

--Register some code (printInfo function) that will be run at the end of each frame
emu.addEventCallback(printInfo, emu.eventType.endFrame)

--Display a startup message
emu.displayMessage("FF2", "APU Script loaded.")
