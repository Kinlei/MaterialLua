local Material = [[ MaterialLuaModule ]]

local NewUI = Material.Load({
  -> Title <string[any]>
  -> Style <number[1,3]>
  -> SizeX <number[inf]>
  -> SizeY <number[inf]>
  -> Theme <string["Light","Dark"]>
})

local NewPage = NewUI.New({
  -> Title <string[any]>
  -> ImageID <number[assetid]>
})

local Banner = NewPage.Banner({
  -> Text <string[any]>
  -> Options <table>
})
  
local NewButton = NewPage.Button({
  -> Text <string[any]>
  -> Callback <function(void)>
  -> Menu <table>
})
  
local NewToggle = NewPage.Toggle({
  -> Text <string[any]>
  -> Callback <function(value)>
  -> Enabled <bool=false>
  -> Menu <table>
})

local NewSlider = NewPage.Slider({
  -> Text <string[any]>
  -> Callback <function(value)>
  -> Min <number[inf]>
  -> Max <number[inf]>
  -> Def <number[inf]>
  -> Menu <table>
})

local NewDropdown = NewPage.Dropdown({
  -> Text <string[any]>
  -> Callback <function(value)>
  -> Options <table>
  -> Menu
})

local NewChipSet = NewPage.ChipSet({
  -> Callback <function(chipset)>
  -> Options <table>
})

local NewDataTable = NewPage.DataTable({
  -> Callback <function(datatable)>
  -> Options <table>
})

local NewColorPicker = NewPage.ColorPicker({
  -> Text <string[any]>
  -> Default <color3[any]>
  -> Callback <function(value)>
  -> Menu <table>
})
