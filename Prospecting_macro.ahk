#Requires AutoHotkey v2.0
#SingleInstance Force
; Declaring values
global Area := "Rubble Creek"
global autosell := false
global sellanywhere := false
global panned_count := 0

;Functions
ChangeArea(*) {
  global Area, AreaDDL
  Area := AreaDDL.Text
}

Updateeverything(*) {
  global information := Maingui.Submit()
  global pantimes := information.pan
  global target_pan_count := information.tpan
  global autosell := autosellcheck.Value
  global sellanywhere := sellgamecheck.Value
  ChangeArea()
}

UpdateeverythingMain(*) {
  global information := Maingui.Submit()
  global pantimes := information.pan
  global target_pan_count := information.tpan
  global autosell := autosellcheck.Value
  global sellanywhere := sellgamecheck.Value
  ChangeArea()
  Main()
}

sendsleep(v1)
{
    Send v1
    Sleep 200
}

collectingL(*) {
  global panned_count, target_pan_count
  loop pantimes {
      SendInput ("{LButton Down}")
      Sleep 415
      SendInput ("{LButton Up}")
      Sleep 1000
      }
  Send ("{a down}")
  Sleep 800
  Send ("{a up}")
  MouseClick "Left"
  Sleep 1000
  SendInput ("{LButton Down}")
  Sleep(15000)
  global bowlempty := false
  SendInput ("{LButton Up}")
  Send ("{d down}")
  Sleep 800
  Send ("{d up}")
  panned_count := panned_count + 1
  if autosell = true {
    if panned_count = target_pan_count and sellanywhere = false
      Selling()
    if panned_count = target_pan_count and sellanywhere = true
      Sellinganywhere()
  }
}

collectingR(*) {
  global panned_count, target_pan_count
  loop pantimes {
      SendInput ("{LButton Down}")
      Sleep 415
      SendInput ("{LButton Up}")
      Sleep 1000
      }
  Send ("{d down}")
  Sleep 800
  Send ("{d up}")
  MouseClick "Left"
  Sleep 1000
  SendInput ("{LButton Down}")
  Sleep(15000)
  global bowlempty := false
  SendInput ("{LButton Up}")
  Send ("{a down}")
  Sleep 800
  Send ("{a up}")
  panned_count := panned_count + 1
  if autosell = true
    if panned_count = target_pan_count and sellanywhere = false
      Selling()
    if panned_count = target_pan_count and sellanywhere = true
      Sellinganywhere()
}

collectingW(*) {
  global panned_count, target_pan_count
  loop pantimes {
      SendInput ("{LButton Down}")
      Sleep 415
      SendInput ("{LButton Up}")
      Sleep 1000
      }
  Send ("{w down}")
  Sleep 800
  Send ("{w up}")
  MouseClick "Left"
  Sleep 1000
  SendInput ("{LButton Down}")
  Sleep(15000)
  global bowlempty := false
  SendInput ("{LButton Up}")
  Send ("{s down}")
  Sleep 800
  Send ("{s up}")
  loop_count := loop_count + 1
  panned_count := panned_count + 1
  if autosell = true
    if panned_count = target_pan_count and sellanywhere = false
      Selling()
    if panned_count = target_pan_count and sellanywhere = true
      Sellinganywhere()
}

Closeeverything(*) {
  ExitApp
}

F4:: {
  ExitApp
}

;Routes
Rubble_Creek() {
  sendsleep "{Esc}"
  sendsleep "r"
  sendsleep "{Enter}"
  Sleep 12000
  Send ("{w down}")
  Sleep 1000
  Sleep 2000
  Send ("{d down}")
  Sleep 1000
  Send ("{d up}")
  Send ("{a down}")
  Sleep 2700
  Send ("{w up}")
  Send ("{a up}")
  Send ("{s down}")
  Sleep 3000
  Send ("{s up}")
  Send ("{a down}")
  Sleep 4800
  Send ("{a up}")
  Send "1"
  Sleep 500
  loop {
    collectingL()
  }
}

Crystal_Caverns() {
  sendsleep "{Esc}"
  sendsleep "r"
  sendsleep "{Enter}"
  Sleep 12000
  Send ("{s down}")
  Send ("{Space down}")
  Sleep 3500
  Send ("{Space up}")
  Send ("{s up}")
  Send ("{d down}")
  Sleep(500)
  Send ("{d up}")
  Sleep 500
  Send "e"
  Sleep 200
  MouseClick "Left", 959, 396
  Sleep(300)
  MouseGetPos(&StartX, &StartY)
  MouseClick "Left", StartX+10, StartY
  Sleep 200
  Send ("{a down}")
  Sleep 1800
  Send ("{a up}")
  Send "1"
  Sleep 500
  loop {
    collectingL()
  }
}

Fortune_River() {
  sendsleep "{Esc}"
  sendsleep "r"
  sendsleep "{Enter}"
  Sleep 12000
  Send ("{s down}")
  Send ("{Space down}")
  Sleep 3500
  Send ("{Space up}")
  Send ("{s up}")
  Send ("{d down}")
  Sleep(500)
  Send ("{d up}")
  Sleep 500
  Send "e"
  Sleep 200
  MouseClick "Left", 959, 343
  Sleep(300)
  MouseGetPos(&StartX, &StartY)
  MouseClick "Left", StartX+10, StartY
  Sleep 100
  Send ("{a down}")
  Sleep 300
  Send "{Space}"
  Sleep 7000
  Send ("{a up}")
  Send "1"
  Sleep 500
  loop {
    collectingL()
  }
}

Fortune_River_Delta() {
  sendsleep "{Esc}"
  sendsleep "r"
  sendsleep "{Enter}"
  Sleep 12000
  Send ("{s down}")
  Send ("{Space down}")
  Sleep 3500
  Send ("{Space up}")
  Send ("{s up}")
  Send ("{d down}")
  Sleep(250)
  Send ("{d up}")
  Sleep 500
  Send "e"
  Sleep 200
  MouseClick "Left", 958, 499
  Sleep(300)
  MouseGetPos(&StartX, &StartY)
  MouseClick "Left", StartX+10, StartY
  Send ("{d down}")
  Sleep 2200
  Send ("{d up}")
  Send "1"
  Sleep 500
  loop {
    collectingR()
  }
}

Sunset_Beach() {
  sendsleep "{Esc}"
  sendsleep "r"
  sendsleep "{Enter}"
  Sleep 12000
  Send ("{s down}")
  Send ("{Space down}")
  Sleep 3500
  Send ("{Space up}")
  Send ("{s up}")
  Send ("{d down}")
  Sleep(250)
  Send ("{d up}")
  Sleep 500
  Send "e"
  Sleep 200
  MouseClick "Left", 959, 448
  Sleep(300)
  MouseGetPos(&StartX, &StartY)
  MouseClick "Left", StartX+10, StartY
  Sleep 100
  Send ("{w down}")
  Sleep 200
  Send ("{Space down}")
  Sleep 9500
  Send ("{Space up}")
  Send ("{w up}")
  Send "1"
  Sleep 500
  loop {
    collectingW()
  }
}

Selling() {
  global panned_count, loop_count
  sendsleep "{Esc}"
  sendsleep "r"
  sendsleep "{Enter}"
  Sleep 12000
  Send("{s down}")
  Sleep 600
  Sleep 900
  Send ("{s Up}")
  Send ("{a down}")
  Sleep 900
  Send ("{a up}")
  Send "e"
  Sleep 3000
  MouseClick "Left", 1068, 556
  MouseClick "Left", 1080, 556
  Sleep 3000
  MouseClick "Left", 1049, 521
  MouseClick "Left", 1060, 521
  global panned_count := 0
  global loop_count := 0
  Sleep 300
  Main()
}

SellingAnywhere() {
  Send "g"
  Sleep 1000
  MouseClick "Left", 831, 672
  MouseClick "Left", 840, 672
  Sleep 500
  Send "g"
}

;GUI
MainGui := Gui(, "Pogspecting macro")
MainGui.Opt("+AlwaysOnTop")
MainGui.Add("Text", , "Pan times: ")
MainGui.Add("Text", , "Area: ")
MainGui.Add("Edit", "w150 vpan ym")
AreaDDL := MainGui.Add("DDL","vArea w200 Choose1 ", ["Rubble Creek", "Fortune River", "Crystal Caverns", "Sunset Beach", "Fortune River Delta", "Caldera Island", "Windswept", "Magma Furnace"])
autosellcheck := MainGui.Add("Checkbox", , "Automatic sell" )
sellgamecheck := MainGui.Add("Checkbox", , "Sell Anywhere Gamepass Owned")
MainGui.Add("Text", , "Amount of pans before selling: ")
MainGui.Add("Edit", "w150 vtpan")
AreaDDL.OnEvent("Change", ChangeArea)
MainGui.Add("Button", "Default w80", "Submit").OnEvent("Click", Updateeverything)
MainGui.Add("Button", "Default w80", "Start").OnEvent("Click", UpdateeverythingMain)
MainGui.Add("Button", "Default w80", "Exit(F4)").OnEvent("Click", Closeeverything)
MainGui.Show

;Main program
Main()
{
    global Area 
    global stop_loop := false
    global bowlempty := false
    if Area = "Rubble Creek" 
      Rubble_Creek()
    if Area = "Crystal Caverns"
      Crystal_Caverns()
    if Area = "Fortune River"
      Fortune_River()
    if Area = "Fortune River Delta"
      Fortune_River_Delta()
    if Area = "Sunset Beach"
      Sunset_Beach()
}