local Material = [[ MaterialLuaModule ]]

local NewUI = Material.Load({
  -> Title <string[any]>
  -> Style <number[1,3]>
  -> SizeX <number[inf]>
  -> SizeY <number[inf]>
  -> Theme <string["Light","Dark","Mocha","Aqua","Jester"]>
  -> ColorOverrides <table>
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
  -> Menu <table>
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
  -> Default <color3>
  -> Callback <function(value)>
  -> Menu <table>
})

local NewTextField = NewPage.TextField({
  -> Text <string[any]>
  -> Type <string["Password", "Default"]>
  -> Callback <function(value)>
  -> Menu <table>
})

-- Custom Functions
               
<void> NewButton:SetText(<string[any]>)
<string> NewButton:GetText(<void>)
                
<void> NewToggle:SetText(<string[any]>)
<string> NewToggle:GetText(<void>)
<void> NewToggle:SetState(<bool>)
<bool> NewToggle:GetState(<void>)
                
<void> NewSlider:SetText(<string[any]>)
<string> NewSlider:GetText(<void>)
<void> NewSlider:SetMin(<number[any]>)
<void> NewSlider:SetMax(<number[any]>)
<number> NewSlider:GetMin(<void>)
<number> NewSlider:GetMax(<void>)
                
<void> NewDropdown:SetText(<string[any]>)
<string> NewDropdown:GetText(<void>)
<void> NewDropdown:SetOptions(<table>)
<table> NewDropdown:GetOptions(<void>)
                
<void> NewChipSet:SetOptions(<table>)
<table> NewChipSet:GetOptions(<void>)
                
<void> NewDataTable:SetOptions(<table>)
<table> NewDataTable:GetOptions(<void>)
                
<void> NewColorPicker:SetText(<table>)
<void> NewColorPicker:SetColor(<color3>)
<string> NewColorPicker:GetText(<void>)
<color3> NewColorPicker:GetColor(<void>)
                
<void> NewTextField:SetText(<string[any])
<string> NewTextField:GetText(<void>)
