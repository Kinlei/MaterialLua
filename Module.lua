local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()

local TextService = game:GetService("TextService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local InputService = game:GetService("UserInputService")
local CoreGuiService = game:GetService("CoreGui")
local ContentService = game:GetService("ContentProvider")

local Themes = {
	Light = {
		MainFrame = Color3.fromRGB(255,255,255),
		Minimise = Color3.fromRGB(255,106,0),
		MinimiseAccent = Color3.fromRGB(147,59,0),
		Maximise = Color3.fromRGB(25,255,0),
		MaximiseAccent = Color3.fromRGB(0,255,110),
		NavBar = Color3.fromRGB(124,37,255),
		NavBarAccent = Color3.fromRGB(255,255,255),
		NavBarInvert = Color3.fromRGB(30,30,30),
		TitleBar = Color3.fromRGB(124,37,255),
		TitleBarAccent = Color3.fromRGB(255,255,255),
		Overlay = Color3.fromRGB(124,37,255),
		Banner = Color3.fromRGB(255,255,255),
		BannerAccent = Color3.fromRGB(124,37,255),
		Content = Color3.fromRGB(124,37,255),
		Button = Color3.fromRGB(124,37,255),
		ButtonAccent = Color3.fromRGB(255,255,255),
		ChipSet = Color3.fromRGB(124,37,255),
		ChipSetAccent = Color3.fromRGB(255,255,255),
		DataTable = Color3.fromRGB(124,37,255),
		DataTableAccent = Color3.fromRGB(255,255,255),
		Slider = Color3.fromRGB(255,255,255),
		SliderAccent = Color3.fromRGB(124,37,255),
		Toggle = Color3.fromRGB(124,37,255),
		ToggleAccent = Color3.fromRGB(255,255,255),
		Dropdown = Color3.fromRGB(255,255,255),
		DropdownAccent = Color3.fromRGB(124,37,255),
		ColorPicker = Color3.fromRGB(255,255,255),
		ColorPickerAccent = Color3.fromRGB(124,37,255),
		TextField = Color3.fromRGB(124,37,255),
		TextFieldAccent = Color3.fromRGB(124,37,255),
	},
	Dark = {
		MainFrame = Color3.fromRGB(30,30,30),
		Minimise = Color3.fromRGB(255,106,0),
		MinimiseAccent = Color3.fromRGB(147,59,0),
		Maximise = Color3.fromRGB(25,255,0),
		MaximiseAccent = Color3.fromRGB(0,255,110),
		NavBar = Color3.fromRGB(55,55,55),
		NavBarAccent = Color3.fromRGB(255,255,255),
		NavBarInvert = Color3.fromRGB(235,235,235),
		TitleBar = Color3.fromRGB(55,55,55),
		TitleBarAccent = Color3.fromRGB(255,255,255),
		Overlay = Color3.fromRGB(175,175,175),
		Banner = Color3.fromRGB(55,55,55),
		BannerAccent = Color3.fromRGB(255,255,255),
		Content = Color3.fromRGB(85,85,85),
		Button = Color3.fromRGB(85,85,85),
		ButtonAccent = Color3.fromRGB(255,255,255),
		ChipSet = Color3.fromRGB(235,235,235),
		ChipSetAccent = Color3.fromRGB(85,85,85),
		DataTable = Color3.fromRGB(235,235,235),
		DataTableAccent = Color3.fromRGB(85,85,85),
		Slider = Color3.fromRGB(85,85,85),
		SliderAccent = Color3.fromRGB(235,235,235),
		Toggle = Color3.fromRGB(205,205,205),
		ToggleAccent = Color3.fromRGB(125,125,125),
		Dropdown = Color3.fromRGB(85,85,85),
		DropdownAccent = Color3.fromRGB(235,235,235),
		ColorPicker = Color3.fromRGB(85,85,85),
		ColorPickerAccent = Color3.fromRGB(235,235,235),
		TextField = Color3.fromRGB(175,175,175),
		TextFieldAccent = Color3.fromRGB(255,255,255),
	},
	Mocha = {
		MainFrame = Color3.fromRGB(255,255,255),
		Minimise = Color3.fromRGB(219, 210, 202),
		MinimiseAccent = Color3.fromRGB(219, 210, 202),
		Maximise = Color3.fromRGB(189, 183, 177),
		MaximiseAccent = Color3.fromRGB(189, 183, 177),
		NavBar = Color3.fromRGB(176, 148, 125),
		NavBarAccent = Color3.fromRGB(255,255,255),
		NavBarInvert = Color3.fromRGB(30,30,30),
		TitleBar = Color3.fromRGB(176, 148, 125),
		TitleBarAccent = Color3.fromRGB(255,255,255),
		Overlay = Color3.fromRGB(176, 148, 125),
		Banner = Color3.fromRGB(255,255,255),
		BannerAccent = Color3.fromRGB(176, 148, 125),
		Content = Color3.fromRGB(176, 148, 125),
		Button = Color3.fromRGB(176, 148, 125),
		ButtonAccent = Color3.fromRGB(255,255,255),
		ChipSet = Color3.fromRGB(176, 148, 125),
		ChipSetAccent = Color3.fromRGB(255,255,255),
		DataTable = Color3.fromRGB(176, 148, 125),
		DataTableAccent = Color3.fromRGB(255,255,255),
		Slider = Color3.fromRGB(255,255,255),
		SliderAccent = Color3.fromRGB(176, 148, 125),
		Toggle = Color3.fromRGB(176, 148, 125),
		ToggleAccent = Color3.fromRGB(255,255,255),
		Dropdown = Color3.fromRGB(255,255,255),
		DropdownAccent = Color3.fromRGB(176, 148, 125),
		ColorPicker = Color3.fromRGB(255,255,255),
		ColorPickerAccent = Color3.fromRGB(176, 148, 125),
		TextField = Color3.fromRGB(175,175,175),
		TextFieldAccent = Color3.fromRGB(255,255,255)
	},
	Aqua = {
		MainFrame = Color3.fromRGB(255,255,255),
		Minimise = Color3.fromRGB(219, 210, 202),
		MinimiseAccent = Color3.fromRGB(219, 210, 202),
		Maximise = Color3.fromRGB(189, 183, 177),
		MaximiseAccent = Color3.fromRGB(189, 183, 177),
		NavBar = Color3.fromRGB(116, 112, 140),
		NavBarAccent = Color3.fromRGB(255,255,255),
		NavBarInvert = Color3.fromRGB(30,30,30),
		TitleBar = Color3.fromRGB(116, 112, 140),
		TitleBarAccent = Color3.fromRGB(255,255,255),
		Overlay = Color3.fromRGB(116, 112, 140),
		Banner = Color3.fromRGB(255,255,255),
		BannerAccent = Color3.fromRGB(116, 112, 140),
		Content = Color3.fromRGB(116, 112, 140),
		Button = Color3.fromRGB(116, 112, 140),
		ButtonAccent = Color3.fromRGB(255,255,255),
		ChipSet = Color3.fromRGB(116, 112, 140),
		ChipSetAccent = Color3.fromRGB(255,255,255),
		DataTable = Color3.fromRGB(116, 112, 140),
		DataTableAccent = Color3.fromRGB(255,255,255),
		Slider = Color3.fromRGB(255,255,255),
		SliderAccent = Color3.fromRGB(116, 112, 140),
		Toggle = Color3.fromRGB(116, 112, 140),
		ToggleAccent = Color3.fromRGB(255,255,255),
		Dropdown = Color3.fromRGB(255,255,255),
		DropdownAccent = Color3.fromRGB(116, 112, 140),
		ColorPicker = Color3.fromRGB(255,255,255),
		ColorPickerAccent = Color3.fromRGB(116, 112, 140),
		TextField = Color3.fromRGB(175,175,175),
		TextFieldAccent = Color3.fromRGB(255,255,255)
	},
	Jester = {
		MainFrame = Color3.fromRGB(255,255,255),
		Minimise = Color3.fromRGB(219, 210, 202),
		MinimiseAccent = Color3.fromRGB(219, 210, 202),
		Maximise = Color3.fromRGB(189, 183, 177),
		MaximiseAccent = Color3.fromRGB(189, 183, 177),
		NavBar = Color3.fromRGB(219, 68, 103),
		NavBarAccent = Color3.fromRGB(255,255,255),
		NavBarInvert = Color3.fromRGB(30,30,30),
		TitleBar = Color3.fromRGB(219, 68, 103),
		TitleBarAccent = Color3.fromRGB(255,255,255),
		Overlay = Color3.fromRGB(219, 68, 103),
		Banner = Color3.fromRGB(255,255,255),
		BannerAccent = Color3.fromRGB(219, 68, 103),
		Content = Color3.fromRGB(219, 68, 103),
		Button = Color3.fromRGB(219, 68, 103),
		ButtonAccent = Color3.fromRGB(255,255,255),
		ChipSet = Color3.fromRGB(219, 68, 103),
		ChipSetAccent = Color3.fromRGB(255,255,255),
		DataTable = Color3.fromRGB(219, 68, 103),
		DataTableAccent = Color3.fromRGB(255,255,255),
		Slider = Color3.fromRGB(255,255,255),
		SliderAccent = Color3.fromRGB(219, 68, 103),
		Toggle = Color3.fromRGB(219, 68, 103),
		ToggleAccent = Color3.fromRGB(255,255,255),
		Dropdown = Color3.fromRGB(255,255,255),
		DropdownAccent = Color3.fromRGB(219, 68, 103),
		ColorPicker = Color3.fromRGB(255,255,255),
		ColorPickerAccent = Color3.fromRGB(219, 68, 103),
		TextField = Color3.fromRGB(175,175,175),
		TextFieldAccent = Color3.fromRGB(255,255,255),
	}
}

local Types = {
	"RoundFrame",
	"Shadow",
	"Circle",
	"CircleButton",
	"Frame",
	"Label",
	"Button",
	"SmoothButton",
	"Box",
	"ScrollingFrame",
	"Menu",
	"NavBar"
}

local ActualTypes = {
	RoundFrame = "ImageLabel",
	Shadow = "ImageLabel",
	Circle = "ImageLabel",
	CircleButton = "ImageButton",
	Frame = "Frame",
	Label = "TextLabel",
	Button = "TextButton",
	SmoothButton = "ImageButton",
	Box = "TextBox",
	ScrollingFrame = "ScrollingFrame",
	Menu = "ImageButton",
	NavBar = "ImageButton"
}

local Properties = {
	RoundFrame = {
		BackgroundTransparency = 1,
		Image = "http://www.roblox.com/asset/?id=5554237731",
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(3,3,297,297)
	},
	SmoothButton = {
		AutoButtonColor = false,
		BackgroundTransparency = 1,
		Image = "http://www.roblox.com/asset/?id=5554237731",
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(3,3,297,297)
	},
	Shadow = {
		Name = "Shadow",
		BackgroundTransparency = 1,
		Image = "http://www.roblox.com/asset/?id=5554236805",
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(23,23,277,277),
		Size = UDim2.fromScale(1,1) + UDim2.fromOffset(30,30),
		Position = UDim2.fromOffset(-15,-15)
	},
	Circle = {
		BackgroundTransparency = 1,
		Image = "http://www.roblox.com/asset/?id=5554831670"
	},
	CircleButton = {
		BackgroundTransparency = 1,
		AutoButtonColor = false,
		Image = "http://www.roblox.com/asset/?id=5554831670"
	},
	Frame = {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.fromScale(1,1)
	},
	Label = {
		BackgroundTransparency = 1,
		Position = UDim2.fromOffset(5,0),
		Size = UDim2.fromScale(1,1) - UDim2.fromOffset(5,0),
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left
	},
	Button = {
		BackgroundTransparency = 1,
		Position = UDim2.fromOffset(5,0),
		Size = UDim2.fromScale(1,1) - UDim2.fromOffset(5,0),
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left
	},
	Box = {
		BackgroundTransparency = 1,
		Position = UDim2.fromOffset(5,0),
		Size = UDim2.fromScale(1,1) - UDim2.fromOffset(5,0),
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left
	},
	ScrollingFrame = {
		BackgroundTransparency = 1,
		ScrollBarThickness = 0,
		CanvasSize = UDim2.fromScale(0,0),
		Size = UDim2.fromScale(1,1)
	},
	Menu = {
		Name = "More",
		AutoButtonColor = false,
		BackgroundTransparency = 1,
		Image = "http://www.roblox.com/asset/?id=5555108481",
		Size = UDim2.fromOffset(20,20),
		Position = UDim2.fromScale(1,0.5) - UDim2.fromOffset(25,10)
	},
	NavBar = {
		Name = "SheetToggle",
		Image = "http://www.roblox.com/asset/?id=5576439039",
		BackgroundTransparency = 1,
		Size = UDim2.fromOffset(20,20),
		Position = UDim2.fromOffset(5,5),
		AutoButtonColor = false
	}
}

function FindType(String)
	for _, Type in next, Types do
		if Type:sub(1, #String):lower() == String:lower() then
			return Type
		end
	end
	return false
end

local Objects = {}

function Objects.new(Type)
	local TargetType = FindType(Type)
	if TargetType then
		local NewImage = Instance.new(ActualTypes[TargetType])
		if Properties[TargetType] then
			for Property, Value in next, Properties[TargetType] do
				NewImage[Property] = Value
			end
		end
		return NewImage
	else
		return Instance.new(Type)
	end
end

local function GetXY(GuiObject)
	local Max, May = GuiObject.AbsoluteSize.X, GuiObject.AbsoluteSize.Y
	local Px, Py = math.clamp(Mouse.X - GuiObject.AbsolutePosition.X, 0, Max), math.clamp(Mouse.Y - GuiObject.AbsolutePosition.Y, 0, May)
	return Px/Max, Py/May
end

local function CircleAnim(GuiObject, EndColour, StartColour)
	local PX, PY = GetXY(GuiObject)
	local Circle = Objects.new("Circle")
	Circle.Size = UDim2.fromScale(0,0)
	Circle.Position = UDim2.fromScale(PX,PY)
	Circle.ImageColor3 = StartColour or GuiObject.ImageColor3
	Circle.ZIndex = 200
	Circle.Parent = GuiObject
	local Size = GuiObject.AbsoluteSize.X
	TweenService:Create(Circle, TweenInfo.new(1), {Position = UDim2.fromScale(PX,PY) - UDim2.fromOffset(Size/2,Size/2), ImageTransparency = 1, ImageColor3 = EndColour, Size = UDim2.fromOffset(Size,Size)}):Play()
	spawn(function()
		wait(2)
		Circle:Destroy()
	end)
end

local Material = {}

local Styles = {
	[1] = "Normal",
	[2] = "Invert",
	[3] = "Sheets"
}

local ThisTheme

local NavBar = {
	Normal = function()
		local NewNavBar = Objects.new("Round")
		NewNavBar.Name = "NavBar"
		NewNavBar.Size = UDim2.fromScale(1,0) + UDim2.fromOffset(-10,30)
		NewNavBar.Position = UDim2.fromOffset(5,35)
		NewNavBar.ImageColor3 = ThisTheme.NavBar
		NewNavBar.ZIndex = 100

		local NavBarShadow = Objects.new("Shadow")
		NavBarShadow.ImageColor3 = ThisTheme.NavBar
		NavBarShadow.Parent = NewNavBar
		NavBarShadow.ZIndex = 100

		local NavBarContent = Objects.new("Frame")
		NavBarContent.Name = "Content"
		NavBarContent.Parent = NewNavBar

		NavBarContent.ChildAdded:Connect(function(Child)
			pcall(function()
				local Children = #NavBarContent:GetChildren() - 2
				TweenService:Create(Child, TweenInfo.new(1), {TextTransparency = (Children > 1) and 0.5 or 0}):Play()
			end)
			pcall(function()
				local Children = #NavBarContent:GetChildren() - 2
				TweenService:Create(Child, TweenInfo.new(1), {ImageTransparency = (Children > 1) and 0.5 or 0}):Play()
			end)
			pcall(function()
				local Children = #NavBarContent:GetChildren() - 2
				TweenService:Create(Child:FindFirstChildWhichIsA("ImageLabel"), TweenInfo.new(1), {ImageTransparency = (Children > 1) and 0.5 or 0}):Play()
			end)
			pcall(function()
				Child.TextColor3 = ThisTheme.NavBarAccent
			end)
			pcall(function()
				Child:FindFirstChildWhichIsA("ImageLabel").ImageColor3 = ThisTheme.NavBarAccent
			end)
			pcall(function()
				Child.ImageColor3 = ThisTheme.NavBarAccent
			end)
		end)

		local NavBarList = Objects.new("UIListLayout")
		NavBarList.FillDirection = Enum.FillDirection.Horizontal
		NavBarList.HorizontalAlignment = Enum.HorizontalAlignment.Left
		NavBarList.VerticalAlignment = Enum.VerticalAlignment.Center
		NavBarList.SortOrder = Enum.SortOrder.LayoutOrder
		NavBarList.Parent = NavBarContent

		local NavBarPadding = Objects.new("UIPadding")
		NavBarPadding.PaddingLeft = UDim.new(0,5)
		NavBarPadding.Parent = NavBarContent

		return NewNavBar, NavBarContent
	end,
	Invert = function()
		local NewNavBar = Objects.new("Round")
		NewNavBar.Name = "NavBar"
		NewNavBar.Size = UDim2.fromScale(1,0) + UDim2.fromOffset(-10,30)
		NewNavBar.Position = UDim2.fromOffset(5,35)
		NewNavBar.ImageColor3 = ThisTheme.NavBarAccent
		NewNavBar.ImageTransparency = 1
		NewNavBar.ZIndex = 100

		local NavBarShadow = Objects.new("Shadow")
		NavBarShadow.ImageColor3 = ThisTheme.NavBarInvert
		NavBarShadow.ImageTransparency = 1
		NavBarShadow.Parent = NewNavBar
		NavBarShadow.ZIndex = 100

		TweenService:Create(NewNavBar, TweenInfo.new(1), {ImageTransparency = 0}):Play()
		TweenService:Create(NavBarShadow, TweenInfo.new(1), {ImageTransparency = 0}):Play()

		local NavBarContent = Objects.new("Frame")
		NavBarContent.Name = "Content"
		NavBarContent.Parent = NewNavBar

		NavBarContent.ChildAdded:Connect(function(Child)
			pcall(function()
				local Children = #NavBarContent:GetChildren() - 2
				TweenService:Create(Child, TweenInfo.new(1), {TextTransparency = (Children > 1) and 0.5 or 0}):Play()
			end)
			pcall(function()
				local Children = #NavBarContent:GetChildren() - 2
				TweenService:Create(Child, TweenInfo.new(1), {ImageTransparency = (Children > 1) and 0.5 or 0}):Play()
			end)
			pcall(function()
				local Children = #NavBarContent:GetChildren() - 2
				TweenService:Create(Child:FindFirstChildWhichIsA("ImageLabel"), TweenInfo.new(1), {ImageTransparency = (Children > 1) and 0.5 or 0}):Play()
			end)
			pcall(function()
				Child.TextColor3 = ThisTheme.NavBar
			end)
			pcall(function()
				Child:FindFirstChildWhichIsA("ImageLabel").ImageColor3 = ThisTheme.NavBar
			end)
			pcall(function()
				Child.ImageColor3 = ThisTheme.NavBar
			end)
		end)

		local NavBarList = Objects.new("UIListLayout")
		NavBarList.FillDirection = Enum.FillDirection.Horizontal
		NavBarList.HorizontalAlignment = Enum.HorizontalAlignment.Left
		NavBarList.VerticalAlignment = Enum.VerticalAlignment.Center
		NavBarList.SortOrder = Enum.SortOrder.LayoutOrder
		NavBarList.Parent = NavBarContent

		local NavBarPadding = Objects.new("UIPadding")
		NavBarPadding.PaddingLeft = UDim.new(0,5)
		NavBarPadding.Parent = NavBarContent

		return NewNavBar, NavBarContent
	end,
	Sheets = function()
		local NewNavBar = Objects.new("Round")
		NewNavBar.ClipsDescendants = true
		NewNavBar.Name = "NavBar"
		NewNavBar.Size = UDim2.fromScale(0,1) - UDim2.fromOffset(0,30)
		NewNavBar.Position = UDim2.fromOffset(0,30)
		NewNavBar.ImageColor3 = ThisTheme.NavBarAccent
		NewNavBar.ZIndex = 100

		local NavBarOverlay = Objects.new("Frame")
		NavBarOverlay.Name = "Overlay"
		NavBarOverlay.BackgroundColor3 = ThisTheme.NavBar
		NavBarOverlay.BackgroundTransparency = 1
		NavBarOverlay.Size = UDim2.fromScale(1,1) - UDim2.fromOffset(0,30)
		NavBarOverlay.Position = UDim2.fromOffset(0,30)
		NavBarOverlay.ZIndex = 75

		local NavBarMenu = Objects.new("NavBar")
		NavBarMenu.ZIndex = 100

		local NavBarShadow = Objects.new("Shadow")
		NavBarShadow.ImageColor3 = ThisTheme.NavBar
		NavBarShadow.Parent = NewNavBar
		NavBarShadow.ZIndex = 100

		local Effect1, Effect2, Effect3 = Objects.new("Frame"), Objects.new("Frame"), Objects.new("Frame")

		Effect1.ZIndex = 100
		Effect2.ZIndex = 100
		Effect3.ZIndex = 100

		Effect1.BackgroundTransparency = 0
		Effect2.BackgroundTransparency = 0
		Effect3.BackgroundTransparency = 0

		Effect1.BackgroundColor3 = ThisTheme.NavBarAccent
		Effect2.BackgroundColor3 = ThisTheme.NavBarAccent
		Effect3.BackgroundColor3 = ThisTheme.NavBar

		Effect1.Size = UDim2.fromScale(1,0) + UDim2.fromOffset(0,5)
		Effect2.Size = UDim2.fromScale(0,1) + UDim2.fromOffset(5,0)
		Effect3.Size = UDim2.fromScale(0,1) + UDim2.fromOffset(1,0)

		Effect1.Position = UDim2.fromScale(0,0)
		Effect2.Position = UDim2.fromScale(1,0) - UDim2.fromOffset(5,0)
		Effect3.Position = UDim2.fromScale(1,0)

		Effect1.Parent = NewNavBar
		Effect2.Parent = NewNavBar
		Effect3.Parent = NewNavBar

		local NavBarContent = Objects.new("Frame")
		NavBarContent.Name = "Content"
		NavBarContent.Parent = NewNavBar

		local NavBarList = Objects.new("UIListLayout")
		NavBarList.FillDirection = Enum.FillDirection.Vertical
		NavBarList.HorizontalAlignment = Enum.HorizontalAlignment.Center
		NavBarList.VerticalAlignment = Enum.VerticalAlignment.Top
		NavBarList.SortOrder = Enum.SortOrder.LayoutOrder
		NavBarList.Parent = NavBarContent

		local NavBarPadding = Objects.new("UIPadding")
		NavBarPadding.PaddingLeft = UDim.new(0,5)
		NavBarPadding.PaddingRight = UDim.new(0,5)
		NavBarPadding.PaddingTop = UDim.new(0,5)
		NavBarPadding.PaddingBottom = UDim.new(0,5)
		NavBarPadding.Parent = NavBarContent

		NavBarContent.ChildAdded:Connect(function(Child)
			pcall(function()
				local Children = #NavBarContent:GetChildren() - 2
				TweenService:Create(Child, TweenInfo.new(1), {TextTransparency = (Children > 1) and 0.5 or 0}):Play()
			end)
			pcall(function()
				local Children = #NavBarContent:GetChildren() - 2
				TweenService:Create(Child, TweenInfo.new(1), {ImageTransparency = (Children > 1) and 0.5 or 0}):Play()
			end)
			pcall(function()
				local Children = #NavBarContent:GetChildren() - 2
				TweenService:Create(Child:FindFirstChildWhichIsA("ImageLabel"), TweenInfo.new(1), {ImageTransparency = (Children > 1) and 0.5 or 0}):Play()
			end)
			pcall(function()
				Child.Size = UDim2.fromScale(1,0) + UDim2.fromOffset(0,30)
			end)
			pcall(function()
				Child:FindFirstChildWhichIsA("ImageLabel").ImageColor3 = ThisTheme.NavBar
			end)
			pcall(function()
				Child.TextColor3 = ThisTheme.NavBar
			end)
			pcall(function()
				Child.ImageColor3 = ThisTheme.NavBar
			end)
		end)

		return NewNavBar, NavBarContent, NavBarMenu,  NavBarOverlay
	end
}

local MainGUI

function TryAddMenu(Object, Menu, ReturnTable)
	local Menu = Menu
	local ReturnTable = ReturnTable
	ReturnTable.Object = Object
	local Total = 0

	table.foreach(Menu, function(_, Value)
		Total = Total + ((typeof(Value) == "function") and 1 or 0)
	end)

	if Total > 0 then
		local MenuToggle = false

		local MenuButton = Objects.new("Menu")
		MenuButton.ImageTransparency = 1
		MenuButton.Parent = Object

		TweenService:Create(MenuButton, TweenInfo.new(0.5), {ImageTransparency = 0}):Play()

		local Size = Total * 30 + ((Total + 1) * 2)

		local MenuBuild = Objects.new("Round")
		MenuBuild.Name = "Menu"
		MenuBuild.ImageColor3 = ThisTheme.ButtonAccent
		MenuBuild.Size = UDim2.fromOffset(120,0)
		MenuBuild.Position = UDim2.fromOffset(MenuButton.AbsolutePosition.X,MenuButton.AbsolutePosition.Y) - UDim2.fromOffset(125,5)
		MenuBuild.ZIndex = 100
		MenuBuild.ClipsDescendants = true
		MenuBuild.Parent = MainGUI

		MenuButton:GetPropertyChangedSignal("AbsolutePosition"):Connect(function()
			MenuBuild.Position = UDim2.fromOffset(MenuButton.AbsolutePosition.X,MenuButton.AbsolutePosition.Y) - UDim2.fromOffset(125,5)
		end)

		local MenuContent = Objects.new("Frame")
		MenuContent.Name = "Content"
		MenuContent.Parent = MenuBuild

		local MenuList = Objects.new("UIListLayout")
		MenuList.Padding = UDim.new(0,2)
		MenuList.Parent = MenuContent

		local MenuPadding = Objects.new("UIPadding")
		MenuPadding.PaddingTop = UDim.new(0,2)
		MenuPadding.PaddingRight = UDim.new(0,2)
		MenuPadding.PaddingLeft = UDim.new(0,2)
		MenuPadding.PaddingBottom = UDim.new(0,2)
		MenuPadding.Parent = MenuContent

		MenuButton.MouseButton1Down:Connect(function()
			MenuToggle = not MenuToggle
			TweenService:Create(MenuBuild, TweenInfo.new(0.15), {Size = MenuToggle and UDim2.fromOffset(120,Size) or UDim2.fromOffset(120,0)}):Play()
		end)

		table.foreach(Menu, function(Option, Value)
			if typeof(Value) == "function" then
				local MenuOption = Objects.new("SmoothButton")
				MenuOption.Name = "MenuOption"
				MenuOption.Size = UDim2.fromScale(1,0) + UDim2.fromOffset(0,30)
				MenuOption.ImageColor3 = ThisTheme.Button
				MenuOption.ImageTransparency = 1
				MenuOption.ZIndex = 150
				MenuOption.Parent = MenuContent

				local OptionShadow = Objects.new("Shadow")
				OptionShadow.ImageColor3 = ThisTheme.Button
				OptionShadow.ImageTransparency = 1
				OptionShadow.Parent = MenuOption

				local OptionValue = Objects.new("Label")
				OptionValue.Name = "Value"
				OptionValue.Position = UDim2.fromScale(0,0)
				OptionValue.Size = UDim2.fromScale(1,1) - UDim2.fromOffset(5,0)
				OptionValue.Text = Option
				OptionValue.TextColor3 = ThisTheme.Button
				OptionValue.Font = Enum.Font.Gotham
				OptionValue.TextSize = 12
				OptionValue.ZIndex = 150
				OptionValue.TextXAlignment = Enum.TextXAlignment.Right
				OptionValue.Parent = MenuOption

				MenuOption.MouseButton1Down:Connect(function()
					Value(ReturnTable)
					MenuToggle = false
					TweenService:Create(MenuBuild, TweenInfo.new(0.15), {Size = UDim2.fromOffset(120,0)}):Play()
				end)

				MenuOption.MouseEnter:Connect(function()
					TweenService:Create(MenuOption, TweenInfo.new(0.15), {ImageTransparency = 0.8}):Play()
					TweenService:Create(OptionShadow, TweenInfo.new(0.15), {ImageTransparency = 0.8}):Play()
				end)

				MenuOption.MouseLeave:Connect(function()
					TweenService:Create(MenuOption, TweenInfo.new(0.15), {ImageTransparency = 1}):Play()
					TweenService:Create(OptionShadow, TweenInfo.new(0.15), {ImageTransparency = 1}):Play()
				end)
			end
		end)
		return true, MenuButton
	end
	return false
end

function CreateNewButton(ButtonConfig, Parent)
	local ButtonText = ButtonConfig.Text or "nil button"
	local ButtonCallback = ButtonConfig.Callback or function() print("nil button") end
	local Menu = ButtonConfig.Menu or {}

	local Button = Objects.new("SmoothButton")
	Button.Name = "Button"
	Button.Size = UDim2.fromScale(1,0) + UDim2.fromOffset(0,30)
	Button.ImageColor3 = ThisTheme.Button
	Button.ImageTransparency = 1
	Button.Parent = Parent

	local ButtonShadow = Objects.new("Shadow")
	ButtonShadow.ImageColor3 = ThisTheme.Button
	ButtonShadow.ImageTransparency = 1
	ButtonShadow.Parent = Button

	local ButtonLabel = Objects.new("Label")
	ButtonLabel.Text = ButtonText
	ButtonLabel.TextColor3 = ThisTheme.ButtonAccent
	ButtonLabel.Font = Enum.Font.GothamSemibold
	ButtonLabel.TextSize = 14
	ButtonLabel.ClipsDescendants = true
	ButtonLabel.TextTransparency = 1
	ButtonLabel.Parent = Button

	TweenService:Create(Button, TweenInfo.new(0.5), {ImageTransparency = 0}):Play()
	TweenService:Create(ButtonShadow, TweenInfo.new(0.5), {ImageTransparency = 0}):Play()
	TweenService:Create(ButtonLabel, TweenInfo.new(0.5), {TextTransparency = 0}):Play()

	Button.MouseButton1Down:Connect(function()
		CircleAnim(ButtonLabel, ThisTheme.ButtonAccent, ThisTheme.Button)
		ButtonCallback()
	end)

	local MenuAdded = TryAddMenu(Button, Menu, {})

	return Button, ButtonLabel
end

local TargetParent = RunService:IsStudio() and Player.PlayerGui or CoreGuiService

function Material.Load(Config)
	local Style = (Config.Style and math.clamp(Config.Style, 1, 3)) or 1
	local Title = Config.Title or "MaterialLua"
	local SizeX = Config.SizeX or 300
	local SizeY = Config.SizeY or 500
	local Theme = Config.Theme or "Light"
	local Overrides = Config.ColorOverrides or {}
	local Open = true

	Theme = Themes[Theme]

	ThisTheme = Theme

	for KeyOverride, ValueOverride in next, Overrides do
		ThisTheme[KeyOverride] = ValueOverride
	end

	local OldInstance = TargetParent:FindFirstChild(Title)

	if OldInstance then
		OldInstance:Destroy()
	end

	local NewInstance = Objects.new("ScreenGui")
	NewInstance.Name = Title

    if syn and syn.protect_gui then
        syn.protect_gui(NewInstance)
        NewInstance.Parent = TargetParent
    elseif (get_hidden_gui) then
        NewInstance.Parent = get_hidden_gui()
    else
        NewInstance.Parent = TargetParent
    end

	MainGUI = NewInstance

	local MainFrame = Objects.new("Round")
	MainFrame.Name = "MainFrame"
	MainFrame.Size = UDim2.fromOffset(0,SizeY)
	MainFrame.Position = UDim2.fromScale(0.5,0.5) - UDim2.fromOffset(SizeX/2,SizeY/2)
	MainFrame.ImageColor3 = Theme.MainFrame
	MainFrame.Parent = NewInstance

	TweenService:Create(MainFrame, TweenInfo.new(1), {Size = UDim2.fromOffset(SizeX,SizeY)}):Play()

	wait(1)

	local MainShadow = Objects.new("Shadow")
	MainShadow.ImageColor3 = Theme.MainFrame
	MainShadow.Parent = MainFrame

	local TitleBar = Objects.new("SmoothButton")
	TitleBar.Name = "TitleBar"
	TitleBar.Size = UDim2.fromScale(1,0) + UDim2.fromOffset(0,30)
	TitleBar.ImageColor3 = Theme.TitleBar
	TitleBar.ImageTransparency = 1
	TitleBar.Parent = MainFrame

	local ExtraBar = Objects.new("Frame")
	ExtraBar.Name = "Hidden"
	ExtraBar.Size = UDim2.fromScale(1,0) + UDim2.fromOffset(0,5)
	ExtraBar.Position = UDim2.fromScale(0,1) - UDim2.fromOffset(0,5)
	ExtraBar.BackgroundColor3 = Theme.TitleBar
	ExtraBar.Parent = TitleBar

	local TitleShadow = Objects.new("Shadow")
	TitleShadow.ImageColor3 = Theme.TitleBar
	TitleShadow.ImageTransparency = 1
	TitleShadow.Parent = TitleBar

	local TitleText = Objects.new("Button")
	TitleText.Name = "Title"
	TitleText.Text = Title
	TitleText.TextColor3 = Theme.TitleBarAccent
	TitleText.TextTransparency = 1
	TitleText.Font = Enum.Font.GothamBold
	TitleText.Parent = TitleBar

	TitleText.MouseButton1Down:Connect(function()
		local Mx, My = Mouse.X, Mouse.Y
		local MouseMove, MouseKill
		MouseMove = Mouse.Move:Connect(function()
			local nMx, nMy = Mouse.X, Mouse.Y
			local Dx, Dy = nMx - Mx, nMy - My
			MainFrame.Position = MainFrame.Position + UDim2.fromOffset(Dx, Dy)
			Mx, My = nMx, nMy
		end)
		MouseKill = InputService.InputEnded:Connect(function(UserInput)
			if UserInput.UserInputType == Enum.UserInputType.MouseButton1 then
				MouseMove:Disconnect()
				MouseKill:Disconnect()
			end
		end)
	end)

	local MinimiseButton = Objects.new("SmoothButton")
	MinimiseButton.Size = UDim2.fromOffset(20,20)
	MinimiseButton.Position = UDim2.fromScale(1,0) + UDim2.fromOffset(-25,5)
	MinimiseButton.ImageColor3 = Theme.Minimise
	MinimiseButton.ImageTransparency = 1
	MinimiseButton.Parent = TitleBar

	local MinimiseShadow = Objects.new("Shadow")
	MinimiseShadow.ImageColor3 = Theme.MinimiseAccent
	MinimiseShadow.ImageTransparency = 1
	MinimiseShadow.Parent = MinimiseButton

	MinimiseButton.MouseButton1Down:Connect(function()
		Open = not Open
		TweenService:Create(MainShadow, TweenInfo.new(0.15), {ImageTransparency = 1}):Play()
		TweenService:Create(MainFrame, TweenInfo.new(0.15), {Size = Open and UDim2.fromOffset(SizeX,SizeY) or UDim2.fromOffset(SizeX,30)}):Play()
		TweenService:Create(MinimiseButton, TweenInfo.new(0.15), {ImageColor3 = Open and Theme.Minimise or Theme.Maximise}):Play()
		TweenService:Create(MinimiseShadow, TweenInfo.new(0.15), {ImageColor3 = Open and Theme.MinimiseAccent or Theme.MaximiseAccent}):Play()
		if Open then
			wait(0.15)
			MainFrame.ClipsDescendants = false
			TweenService:Create(MainShadow, TweenInfo.new(0.15), {ImageTransparency = 0}):Play()
		else
			MainFrame.ClipsDescendants = true
		end
	end)

	local Content = Objects.new("Round")
	Content.Name = "Content"
	Content.ImageColor3 = Theme.Content
	Content.Size = UDim2.fromScale(1,1) - UDim2.fromOffset(10,75)
	Content.Position = UDim2.fromOffset(5,70)
	Content.ImageTransparency = 1
	Content.Parent = MainFrame

	local NavigationBar, NavigationBarContent, NavBarMenu, NavBarOverlay = NavBar[Styles[Style]]()
	NavigationBar.Parent = MainFrame

	TweenService:Create(TitleBar, TweenInfo.new(1), {ImageTransparency = 0}):Play()
	TweenService:Create(ExtraBar, TweenInfo.new(1), {BackgroundTransparency = 0}):Play()
	TweenService:Create(TitleShadow, TweenInfo.new(1), {ImageTransparency = 0}):Play()
	TweenService:Create(TitleText, TweenInfo.new(1), {TextTransparency = 0}):Play()
	TweenService:Create(MinimiseButton, TweenInfo.new(1), {ImageTransparency = 0}):Play()
	TweenService:Create(MinimiseShadow, TweenInfo.new(1), {ImageTransparency = 0}):Play()
	TweenService:Create(Content, TweenInfo.new(1), {ImageTransparency = 0.8}):Play()

	wait(1)

	if NavBarMenu then
		TweenService:Create(TitleText, TweenInfo.new(0.5), {
			Size = TitleText.Size - UDim2.fromOffset(25,0),
			Position = TitleText.Position + UDim2.fromOffset(25,0)
		}):Play()
		TweenService:Create(Content, TweenInfo.new(0.5), {
			Size = Content.Size + UDim2.fromOffset(0,35),
			Position = Content.Position - UDim2.fromOffset(0,35)
		}):Play()

		NavBarMenu.ImageTransparency = 1
		NavBarMenu.Parent = TitleBar

		TweenService:Create(NavBarMenu, TweenInfo.new(0.5), {ImageTransparency = 0}):Play()

		NavBarOverlay.Parent = MainFrame

		local MenuToggle = false

		NavBarMenu.MouseButton1Down:Connect(function()
			MenuToggle = not MenuToggle
			TweenService:Create(NavigationBar, TweenInfo.new(0.15), {Size = (MenuToggle and UDim2.fromScale(0.5,1) or UDim2.fromScale(0,1)) - UDim2.fromOffset(0,30)}):Play()
			TweenService:Create(NavBarOverlay, TweenInfo.new(0.15), {BackgroundTransparency = MenuToggle and 0.5 or 1}):Play()
			if MenuToggle then
				wait(0.15)
				NavigationBar.ClipsDescendants = false
			else
				NavigationBar.ClipsDescendants = true
			end
		end)
	end

	local TabCount = 0

	local TabLibrary = {}

	local ButtonTrack = {}
	local PageTrack = {}

	function TabLibrary.Banner(BannerConfig)
		local BannerText = BannerConfig.Text
		local BannerOptions = BannerConfig.Options or {}

		local ExistingBanner, ExistingBannerOverlay = MainFrame:FindFirstChild("BannerOverlay"), MainFrame:FindFirstChild("Banner")

		if ExistingBanner then
			ExistingBanner:Destroy()
		end

		if ExistingBannerOverlay then
			ExistingBannerOverlay:Destroy()
		end

		local BannerOverlay = Objects.new("Frame")
		BannerOverlay.Name = "BannerOverlay"
		BannerOverlay.BackgroundColor3 = Theme.BannerAccent
		BannerOverlay.Size = UDim2.fromScale(1,1) - UDim2.fromOffset(0,30)
		BannerOverlay.Position = UDim2.fromOffset(0,30)
		BannerOverlay.ZIndex = 75
		BannerOverlay.Parent = MainFrame

		local TextSize = TextService:GetTextSize(BannerText, 12, Enum.Font.Gotham, Vector2.new(0,0)).X

		local Lines = math.ceil((TextSize) / (MainFrame.AbsoluteSize.X - 10))

		local BannerSize = UDim2.fromScale(1,0) + UDim2.fromOffset(-10,(Lines*20)+40)
		local BannerPosition = UDim2.fromScale(0,1) + UDim2.fromOffset(5,(-Lines*20)-45)

		local Banner = Objects.new("Round")
		Banner.Name = "Banner"
		Banner.ImageTransparency = 1
		Banner.ImageColor3 = Theme.Banner
		Banner.Size = BannerSize
		Banner.Position = BannerPosition
		Banner.ZIndex = 80
		Banner.Parent = MainFrame

		local BannerLabel = Objects.new("Label")
		BannerLabel.Name = "Value"
		BannerLabel.Text = BannerText
		BannerLabel.TextColor3 = Theme.BannerAccent
		BannerLabel.TextSize = 12
		BannerLabel.Font = Enum.Font.Gotham
		BannerLabel.Size = UDim2.fromScale(1,0) + UDim2.fromOffset(-5,(Lines*20)+5)
		BannerLabel.TextWrapped = true
		BannerLabel.Position = UDim2.fromOffset(5,0)
		BannerLabel.TextTransparency = 1
		BannerLabel.ZIndex = 80
		BannerLabel.Parent = Banner

		TweenService:Create(BannerOverlay, TweenInfo.new(0.5), {BackgroundTransparency = 0.5}):Play()
		TweenService:Create(Banner, TweenInfo.new(0.5), {ImageTransparency = 0}):Play()
		TweenService:Create(BannerLabel, TweenInfo.new(0.5), {TextTransparency = 0}):Play()

		local BannerContainer = Objects.new("Frame")
		BannerContainer.Name = "Options"
		BannerContainer.Size = UDim2.fromScale(1,0) + UDim2.fromOffset(-10,0)
		BannerContainer.Position = UDim2.fromScale(0,1) - UDim2.fromOffset(-5,35)
		BannerContainer.ZIndex = 80
		BannerContainer.ClipsDescendants = true
		BannerContainer.Parent = Banner

		local BannerList = Objects.new("UIListLayout")
		BannerList.FillDirection = Enum.FillDirection.Horizontal
		BannerList.HorizontalAlignment = Enum.HorizontalAlignment.Right
		BannerList.SortOrder = Enum.SortOrder.LayoutOrder
		BannerList.Padding = UDim.new(0,5)
		BannerList.Parent = BannerContainer

		BannerOptions["Ok"] = function()
			TweenService:Create(BannerContainer, TweenInfo.new(0.5), {Size = UDim2.fromScale(1,0) + UDim2.fromOffset(-10,0)}):Play()
			TweenService:Create(BannerOverlay, TweenInfo.new(0.5), {BackgroundTransparency = 1}):Play()
			TweenService:Create(Banner, TweenInfo.new(0.5), {ImageTransparency = 1}):Play()
			TweenService:Create(BannerLabel, TweenInfo.new(0.5), {TextTransparency = 1}):Play()
		end

		table.foreach(BannerOptions, function(Option, Value)
			if typeof(Value) == "function" then
				local TextSize = TextService:GetTextSize(Option:upper(), 12, Enum.Font.GothamBold, Vector2.new(0,0)).X

				local OptionItem = Objects.new("SmoothButton")
				OptionItem.ImageColor3 = Theme.BannerAccent
				OptionItem.ImageTransparency = 0.9
				OptionItem.Size = UDim2.fromOffset(TextSize+10,30)
				OptionItem.ZIndex = 80
				OptionItem.ClipsDescendants = true
				OptionItem.Parent = BannerContainer

				local OptionLabel = Objects.new("Label")
				OptionLabel.Text = Option:upper()
				OptionLabel.TextSize = 12
				OptionLabel.TextColor3 = Theme.BannerAccent
				OptionLabel.Font = Enum.Font.GothamBold
				OptionLabel.Size = UDim2.fromScale(1,1)
				OptionLabel.Position = UDim2.fromScale(0,0)
				OptionLabel.TextXAlignment = Enum.TextXAlignment.Center
				OptionLabel.ZIndex = 80
				OptionLabel.Parent = OptionItem

				OptionItem.MouseButton1Down:Connect(function()
					Value()
					CircleAnim(OptionItem, Theme.Banner)
				end)
			end
		end)

		TweenService:Create(BannerContainer, TweenInfo.new(0.5), {Size = UDim2.fromScale(1,0) + UDim2.fromOffset(-10,30)}):Play()
	end

	function TabLibrary.New(TabConfig)
		local ImageID = TabConfig.ID
		local Title = TabConfig.Title

		local Button

		if ImageID then
			if Title then
				local Settings = {
					TextSize = 12,
					Font = Enum.Font.GothamBold,
					Vector = Vector2.new(0,0)
				}

				local TextSize = TextService:GetTextSize(Title:upper(), Settings.TextSize, Settings.Font, Settings.Vector).X

				Button = Objects.new("Button")
				Button.Name = Title:upper()
				Button.TextXAlignment = Enum.TextXAlignment.Right
				Button.TextSize = Settings.TextSize
				Button.Font = Settings.Font
				Button.Text = Title:upper()
				Button.Size = UDim2.fromScale(0,1) + UDim2.fromOffset(TextSize+35)
				Button.ZIndex = 200
				Button.TextTransparency = 1
			end

			local FetchURL = "rbxassetid://"..ImageID

			local Image = RunService:IsStudio() and "http://www.roblox.com/asset/?id=5472131383" or game:GetObjects(FetchURL)[1].Texture

			local NewImage = Objects.new(Button and "Round" or "SmoothButton")
			NewImage.Name = ImageID
			NewImage.BackgroundTransparency = 1
			NewImage.Size = UDim2.fromOffset(20,20)
			NewImage.ScaleType = Enum.ScaleType.Stretch
			NewImage.Image = Image
			NewImage.ZIndex = 200
			NewImage.ImageTransparency = 1

			if Button then
				NewImage.Position = UDim2.fromScale(0,0.5) - UDim2.fromOffset(0,10)
				NewImage.Parent = Button
			else
				Button = NewImage
			end

		else
			local Settings = {
				TextSize = 12,
				Font = Enum.Font.GothamBold,
				Vector = Vector2.new(0,0)
			}

			local TextSize = TextService:GetTextSize(Title:upper(), Settings.TextSize, Settings.Font, Settings.Vector).X

			Button = Objects.new("Button")
			Button.Name = Title:upper()
			Button.TextXAlignment = Enum.TextXAlignment.Center
			Button.TextSize = Settings.TextSize
			Button.Font = Settings.Font
			Button.Text = Title:upper()
			Button.Size = UDim2.fromScale(0,1) + UDim2.fromOffset(TextSize+10)
			Button.ZIndex = 200
			Button.TextTransparency = 1
		end

		Button.Parent = NavigationBarContent

		local PageContentFrame = Objects.new("Scroll")
		PageContentFrame.Name = Title:upper() or ImageID
		PageContentFrame.Visible = (TabCount == 0)
		PageContentFrame.ZIndex = 50
		PageContentFrame.Parent = Content

		table.insert(ButtonTrack, Button)
		table.insert(PageTrack, PageContentFrame)

		Button.MouseButton1Down:Connect(function()
			for _, Track in next, ButtonTrack do
				if not (Track == Button) then
					TweenService:Create(Track, TweenInfo.new(0.15), {TextTransparency = 0.5}):Play()
					pcall(function()
						TweenService:Create(Track:FindFirstChildWhichIsA("ImageLabel"), TweenInfo.new(0.15), {ImageTransparency = 0.5}):Play()
					end)
				else
					TweenService:Create(Track, TweenInfo.new(0.15), {TextTransparency = 0}):Play()
					pcall(function()
						TweenService:Create(Track:FindFirstChildWhichIsA("ImageLabel"), TweenInfo.new(0.15), {ImageTransparency = 0}):Play()
					end)
				end
			end
			for _, Track in next, PageTrack do
				Track.Visible = (Track == PageContentFrame)
			end
		end)

		local PagePadding = Objects.new("UIPadding")
		PagePadding.PaddingLeft = UDim.new(0,5)
		PagePadding.PaddingRight = UDim.new(0,5)
		PagePadding.PaddingTop = UDim.new(0,5)
		PagePadding.PaddingBottom = UDim.new(0,5)
		PagePadding.Parent = PageContentFrame

		local PageList = Objects.new("UIListLayout")
		PageList.SortOrder = Enum.SortOrder.LayoutOrder
		PageList.Padding = UDim.new(0,5)
		PageList.Parent = PageContentFrame

		PageList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			PageContentFrame.CanvasSize = UDim2.fromOffset(0,PageList.AbsoluteContentSize.Y+10)
		end)

		TabCount = TabCount + 1

		local OptionLibrary = {}

		function OptionLibrary.Button(ButtonConfig)
			local NewButton, ButtonLabel = CreateNewButton(ButtonConfig, PageContentFrame)

			local ButtonLibrary = {}

			function ButtonLibrary:SetText(Value)
				ButtonLabel.Text = Value
			end

			function ButtonLibrary:GetText()
				return ButtonLabel.Text
			end

			return ButtonLibrary
		end

		function OptionLibrary.Dropdown(DropdownConfig)
			local DropdownText = DropdownConfig.Text or "nil dropdown"
			local DropdownCallback = DropdownConfig.Callback or function() print("nil dropdown") end
			local DropdownOptions = DropdownConfig.Options or {}
			local Menu = DropdownConfig.Menu or {}

			local Dropdown = Objects.new("Frame")
			Dropdown.Name = "Dropdown"
			Dropdown.Size = UDim2.fromScale(1,0) + UDim2.fromOffset(0,30)
			Dropdown.Parent = PageContentFrame

			local DropdownBar = Objects.new("Round")
			DropdownBar.Name = "TitleBar"
			DropdownBar.Size = UDim2.fromScale(1,0) + UDim2.fromOffset(0,30)
			DropdownBar.ImageColor3 = Theme.Dropdown
			DropdownBar.ImageTransparency = 1
			DropdownBar.Parent = Dropdown

			local DropdownTitle = Objects.new("Button")
			DropdownTitle.Name = "Title"
			DropdownTitle.Font = Enum.Font.GothamSemibold
			DropdownTitle.Text = DropdownText
			DropdownTitle.TextColor3 = Theme.DropdownAccent
			DropdownTitle.TextTransparency = 1
			DropdownTitle.TextSize = 14
			DropdownTitle.Parent = DropdownBar

			local DropdownToggle = Objects.new("Round")
			DropdownToggle.Name = "Container"
			DropdownToggle.Size = UDim2.fromOffset(24,24)
			DropdownToggle.Position = UDim2.fromScale(1,0.5) - UDim2.fromOffset(27,12)
			DropdownToggle.ImageColor3 = Theme.DropdownAccent
			DropdownToggle.ImageTransparency = 1 -- 0.8
			DropdownToggle.Parent = DropdownBar

			local DropdownButton = Objects.new("Round")
			DropdownButton.Name = "Drop"
			DropdownButton.Image = "http://www.roblox.com/asset/?id=5574299686"
			DropdownButton.ScaleType = Enum.ScaleType.Stretch
			DropdownButton.Size = UDim2.fromScale(1,1) - UDim2.fromOffset(4,4)
			DropdownButton.Position = UDim2.fromOffset(2,2)
			DropdownButton.ImageColor3 = Theme.DropdownAccent
			DropdownButton.ImageTransparency = 1
			DropdownButton.Parent = DropdownToggle

			TweenService:Create(DropdownBar, TweenInfo.new(0.5), {ImageTransparency = 0}):Play()
			TweenService:Create(DropdownTitle, TweenInfo.new(0.5), {TextTransparency = 0}):Play()
			TweenService:Create(DropdownToggle, TweenInfo.new(0.5), {ImageTransparency = 0.8}):Play()
			TweenService:Create(DropdownButton, TweenInfo.new(0.5), {ImageTransparency = 0}):Play()

			local DropdownContent = Objects.new("Frame")
			DropdownContent.Name = "Content"
			DropdownContent.Size = UDim2.fromScale(1,0)
			DropdownContent.Position = UDim2.fromOffset(0,35)
			DropdownContent.ClipsDescendants = true
			DropdownContent.Parent = Dropdown

			local NumberOfOptions = #DropdownOptions
			local DropToggle = false
			local DropdownSize = UDim2.fromScale(1,0) + UDim2.fromOffset(0,(NumberOfOptions*20) + ((NumberOfOptions - 1) * 5))

			local DropdownList = Objects.new("UIListLayout")
			DropdownList.SortOrder = Enum.SortOrder.LayoutOrder
			DropdownList.Padding = UDim.new(0,5)
			DropdownList.Parent = DropdownContent

			DropdownList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
				if DropToggle then
					DropdownContent.Size = UDim2.fromScale(1,0) + UDim2.fromOffset(DropdownList.AbsoluteContentSize.Y)
					DropdownSize = UDim2.fromScale(1,0) + UDim2.fromOffset(DropdownList.AbsoluteContentSize.Y)
				end
			end)

			table.foreach(DropdownOptions, function(_, Value)
				local NewButton = CreateNewButton({
					Text = Value,
					Callback = function() end
				}, DropdownContent)

				NewButton.Size = UDim2.fromScale(1,0) + UDim2.fromOffset(0,20)
				NewButton.MouseButton1Down:Connect(function()
					DropdownCallback(Value)
					DropdownTitle.Text = DropdownText..": "..Value
				end)
			end)

			DropdownTitle.MouseButton1Down:Connect(function()
				DropToggle = not DropToggle
				TweenService:Create(DropdownButton, TweenInfo.new(0.15), {Rotation = DropToggle and 135 or 0}):Play()
				TweenService:Create(DropdownContent, TweenInfo.new(0.15), {Size = DropToggle and DropdownSize or UDim2.fromScale(1,0)}):Play()
				TweenService:Create(Dropdown, TweenInfo.new(0.15), {Size = DropToggle and (DropdownSize + UDim2.fromOffset(0,35)) or (UDim2.fromScale(1,0) + UDim2.fromOffset(0,30))}):Play()
			end)

			local MenuAdded, MenuButton = TryAddMenu(DropdownBar, Menu, {})

			if MenuAdded then
				DropdownToggle.Position = DropdownToggle.Position - UDim2.fromOffset(25,0)
				MenuButton.ImageColor3 = Theme.DropdownAccent
			end

			local DropdownLibrary = {}

			function DropdownLibrary:SetText(Value)
				DropdownTitle.Text = Value
			end

			function DropdownLibrary:GetText()
				return DropdownTitle.Text
			end

			function DropdownLibrary:SetOptions(NewMenu)
				DropdownOptions = NewMenu or {}
				NumberOfOptions = #DropdownOptions
				DropdownSize = UDim2.fromScale(1,0) + UDim2.fromOffset(0,(NumberOfOptions*20) + ((NumberOfOptions - 1) * 5))

				if DropdownContent then
					DropdownContent:Destroy()
				end

				TweenService:Create(Dropdown, TweenInfo.new(0.15), {Size = DropToggle and (DropdownSize + UDim2.fromOffset(0,35)) or (UDim2.fromScale(1,0) + UDim2.fromOffset(0,30))}):Play()

				DropdownContent = Objects.new("Frame")
				DropdownContent.Name = "Content"
				DropdownContent.Size = DropToggle and DropdownSize or UDim2.fromScale(1,0)
				DropdownContent.Position = UDim2.fromOffset(0,35)
				DropdownContent.ClipsDescendants = true
				DropdownContent.Parent = Dropdown

				local DropdownList = Objects.new("UIListLayout")
				DropdownList.SortOrder = Enum.SortOrder.LayoutOrder
				DropdownList.Padding = UDim.new(0,5)
				DropdownList.Parent = DropdownContent

				table.foreach(DropdownOptions, function(_, Value)
					local NewButton = CreateNewButton({
						Text = Value,
						Callback = function() end
					}, DropdownContent)

					NewButton.Size = UDim2.fromScale(1,0) + UDim2.fromOffset(0,20)
					NewButton.MouseButton1Down:Connect(function()
						DropdownCallback(Value)
						DropdownTitle.Text = DropdownText..": "..Value
					end)
				end)
			end

			function DropdownLibrary:GetOptions()
				return DropdownOptions
			end

			return DropdownLibrary
		end

		function OptionLibrary.ChipSet(ChipSetConfig)
			local ChipSetText = ChipSetConfig.Text or "nil chipset"
			local ChipSetCallback = ChipSetConfig.Callback or function() print("nil chipset") end
			local ChipSetOptions = ChipSetConfig.Options or {}

			local TotalOptions = 0

			table.foreach(ChipSetOptions, function()
				TotalOptions = TotalOptions + 1
			end)

			if TotalOptions > 0 then
				local Size = UDim2.fromScale(1,0) + UDim2.fromOffset(0,(TotalOptions*30)+((TotalOptions+1)*5))

				local ChipSet = Objects.new("Round")
				ChipSet.Name = "ChipSet"
				ChipSet.Size = Size
				ChipSet.ImageColor3 = Theme.ChipSet
				ChipSet.ImageTransparency = 1
				ChipSet.Parent = PageContentFrame

				local ChipList = Objects.new("UIListLayout")
				ChipList.SortOrder = Enum.SortOrder.LayoutOrder
				ChipList.Padding = UDim.new(0,5)
				ChipList.Parent = ChipSet

				local ChipPadding = Objects.new("UIPadding")
				ChipPadding.PaddingBottom = UDim.new(0,5)
				ChipPadding.PaddingTop = UDim.new(0,5)
				ChipPadding.PaddingRight= UDim.new(0,5)
				ChipPadding.PaddingLeft = UDim.new(0,5)
				ChipPadding.Parent = ChipSet

				local BuildTable = {}

				table.foreach(ChipSetOptions, function(Key, Value)
					if typeof(Value) == "table" then
						BuildTable[Key] = Value.Enabled
					else
						BuildTable[Key] = Value
					end
				end)

				ChipSetCallback(BuildTable)

				TweenService:Create(ChipSet, TweenInfo.new(0.5), {ImageTransparency = 0.9}):Play()

				table.foreach(ChipSetOptions, function(Key, Value)
					local ChipItem = Objects.new("SmoothButton")
					ChipItem.Name = "ChipItem"
					ChipItem.Size = UDim2.fromScale(1,0) + UDim2.fromOffset(0,30)
					ChipItem.ImageColor3 = BuildTable[Key] and Theme.ChipSet or Theme.ChipSetAccent
					ChipItem.ImageTransparency = 1
					ChipItem.Parent = ChipSet

					local ChipShadow = Objects.new("Shadow")
					ChipShadow.ImageColor3 = BuildTable[Key] and Theme.ChipSet or Theme.ChipSetAccent
					ChipShadow.ImageTransparency = 1
					ChipShadow.Parent = ChipItem

					local Tick = Objects.new("Round")
					Tick.ScaleType = Enum.ScaleType.Stretch
					Tick.Image = "http://www.roblox.com/asset/?id=5554953789"
					Tick.ImageColor3 = Theme.ChipSetAccent
					Tick.ImageTransparency = 1
					Tick.Size = UDim2.fromScale(1,1) - UDim2.fromOffset(10,10)
					Tick.SizeConstraint = Enum.SizeConstraint.RelativeYY
					Tick.Position = UDim2.fromOffset(5,5)
					Tick.Parent = ChipItem

					local ChipLabel = Objects.new("Label")
					ChipLabel.Size = BuildTable[Key] and (UDim2.fromScale(1,1) - UDim2.fromOffset(30)) or (UDim2.fromScale(1,1) - UDim2.fromOffset(5))
					ChipLabel.Position = BuildTable[Key] and UDim2.fromOffset(30) or UDim2.fromOffset(5)
					ChipLabel.Text = Key
					ChipLabel.Font = Enum.Font.Gotham
					ChipLabel.TextSize = 12
					ChipLabel.TextColor3 = BuildTable[Key] and Theme.ChipSetAccent or Theme.ChipSet
					ChipLabel.TextTransparency = 1
					ChipLabel.Parent = ChipItem

					TweenService:Create(ChipItem, TweenInfo.new(0.5), {ImageTransparency = 0}):Play()
					TweenService:Create(ChipShadow, TweenInfo.new(0.5), {ImageTransparency = 0.2}):Play()
					TweenService:Create(Tick, TweenInfo.new(0.5), {ImageTransparency = BuildTable[Key] and 0 or 1}):Play()
					TweenService:Create(ChipLabel, TweenInfo.new(0.5), {TextTransparency = 0}):Play()

					local ChipMenu

					if typeof(Value) == "table" then
						local Menu = Value.Menu or {}

						local MenuAdded, MenuButton = TryAddMenu(ChipItem, Menu, {})

						MenuButton.ImageColor3 = BuildTable[Key] and Theme.ChipSetAccent or Theme.ChipSet

						ChipMenu = MenuButton
					end

					ChipItem.MouseButton1Down:Connect(function()
						BuildTable[Key] = not BuildTable[Key]
						local Enabled = BuildTable[Key]
						TweenService:Create(ChipItem, TweenInfo.new(0.15), {ImageColor3 = Enabled and Theme.ChipSet or Theme.ChipSetAccent}):Play()
						TweenService:Create(ChipShadow, TweenInfo.new(0.15), {ImageColor3 = Enabled and Theme.ChipSet or Theme.ChipSetAccent}):Play()
						TweenService:Create(Tick, TweenInfo.new(0.15), {ImageTransparency = Enabled and 0 or 1}):Play()
						TweenService:Create(ChipLabel, TweenInfo.new(0.15), {TextColor3 = Enabled and Theme.ChipSetAccent or Theme.ChipSet, Position = Enabled and UDim2.fromOffset(30) or UDim2.fromOffset(5), Size = Enabled and (UDim2.fromScale(1,1) - UDim2.fromOffset(30)) or (UDim2.fromScale(1,1) - UDim2.fromOffset(5))}):Play()
						if ChipMenu then
							TweenService:Create(ChipMenu, TweenInfo.new(0.15), {ImageColor3 = Enabled and Theme.ChipSetAccent or Theme.ChipSet}):Play()
						end
						ChipSetCallback(BuildTable)
					end)
				end)

				local ChipSetLibrary = {}

				function ChipSetLibrary:SetOptions(NewMenu)
					ChipSetOptions = NewMenu or {}

					TotalOptions = 0

					table.foreach(ChipSetOptions, function()
						TotalOptions = TotalOptions + 1
					end)

					for _, Element in next, ChipSet:GetChildren() do
						Element:Destroy()
					end

					Size = UDim2.fromScale(1,0) + UDim2.fromOffset(0,(TotalOptions*30)+((TotalOptions+1)*5))

					TweenService:Create(ChipSet, TweenInfo.new(0.15), {Size = Size}):Play()

					local ChipList = Objects.new("UIListLayout")
					ChipList.SortOrder = Enum.SortOrder.LayoutOrder
					ChipList.Padding = UDim.new(0,5)
					ChipList.Parent = ChipSet

					local ChipPadding = Objects.new("UIPadding")
					ChipPadding.PaddingBottom = UDim.new(0,5)
					ChipPadding.PaddingTop = UDim.new(0,5)
					ChipPadding.PaddingRight= UDim.new(0,5)
					ChipPadding.PaddingLeft = UDim.new(0,5)
					ChipPadding.Parent = ChipSet

					local BuildTable = {}

					table.foreach(ChipSetOptions, function(Key, Value)
						if typeof(Value) == "table" then
							BuildTable[Key] = Value.Enabled
						else
							BuildTable[Key] = Value
						end
					end)

					ChipSetCallback(BuildTable)

					TweenService:Create(ChipSet, TweenInfo.new(0.5), {ImageTransparency = 0.9}):Play()

					table.foreach(ChipSetOptions, function(Key, Value)
						local ChipItem = Objects.new("SmoothButton")
						ChipItem.Name = "ChipItem"
						ChipItem.Size = UDim2.fromScale(1,0) + UDim2.fromOffset(0,30)
						ChipItem.ImageColor3 = BuildTable[Key] and Theme.ChipSet or Theme.ChipSetAccent
						ChipItem.ImageTransparency = 1
						ChipItem.Parent = ChipSet

						local ChipShadow = Objects.new("Shadow")
						ChipShadow.ImageColor3 = BuildTable[Key] and Theme.ChipSet or Theme.ChipSetAccent
						ChipShadow.ImageTransparency = 1
						ChipShadow.Parent = ChipItem

						local Tick = Objects.new("Round")
						Tick.ScaleType = Enum.ScaleType.Stretch
						Tick.Image = "http://www.roblox.com/asset/?id=5554953789"
						Tick.ImageColor3 = Theme.ChipSetAccent
						Tick.ImageTransparency = 1
						Tick.Size = UDim2.fromScale(1,1) - UDim2.fromOffset(10,10)
						Tick.SizeConstraint = Enum.SizeConstraint.RelativeYY
						Tick.Position = UDim2.fromOffset(5,5)
						Tick.Parent = ChipItem

						local ChipLabel = Objects.new("Label")
						ChipLabel.Size = BuildTable[Key] and (UDim2.fromScale(1,1) - UDim2.fromOffset(30)) or (UDim2.fromScale(1,1) - UDim2.fromOffset(5))
						ChipLabel.Position = BuildTable[Key] and UDim2.fromOffset(30) or UDim2.fromOffset(5)
						ChipLabel.Text = Key
						ChipLabel.Font = Enum.Font.Gotham
						ChipLabel.TextSize = 12
						ChipLabel.TextColor3 = BuildTable[Key] and Theme.ChipSetAccent or Theme.ChipSet
						ChipLabel.TextTransparency = 1
						ChipLabel.Parent = ChipItem

						TweenService:Create(ChipItem, TweenInfo.new(0.5), {ImageTransparency = 0}):Play()
						TweenService:Create(ChipShadow, TweenInfo.new(0.5), {ImageTransparency = 0.2}):Play()
						TweenService:Create(Tick, TweenInfo.new(0.5), {ImageTransparency = BuildTable[Key] and 0 or 1}):Play()
						TweenService:Create(ChipLabel, TweenInfo.new(0.5), {TextTransparency = 0}):Play()

						local ChipMenu

						if typeof(Value) == "table" then
							local Menu = Value.Menu or {}

							local MenuAdded, MenuButton = TryAddMenu(ChipItem, Menu, {})

							MenuButton.ImageColor3 = BuildTable[Key] and Theme.ChipSetAccent or Theme.ChipSet

							ChipMenu = MenuButton
						end

						ChipItem.MouseButton1Down:Connect(function()
							BuildTable[Key] = not BuildTable[Key]
							local Enabled = BuildTable[Key]
							TweenService:Create(ChipItem, TweenInfo.new(0.15), {ImageColor3 = Enabled and Theme.ChipSet or Theme.ChipSetAccent}):Play()
							TweenService:Create(ChipShadow, TweenInfo.new(0.15), {ImageColor3 = Enabled and Theme.ChipSet or Theme.ChipSetAccent}):Play()
							TweenService:Create(Tick, TweenInfo.new(0.15), {ImageTransparency = Enabled and 0 or 1}):Play()
							TweenService:Create(ChipLabel, TweenInfo.new(0.15), {TextColor3 = Enabled and Theme.ChipSetAccent or Theme.ChipSet, Position = Enabled and UDim2.fromOffset(30) or UDim2.fromOffset(5), Size = Enabled and (UDim2.fromScale(1,1) - UDim2.fromOffset(30)) or (UDim2.fromScale(1,1) - UDim2.fromOffset(5))}):Play()
							if ChipMenu then
								TweenService:Create(ChipMenu, TweenInfo.new(0.15), {ImageColor3 = Enabled and Theme.ChipSetAccent or Theme.ChipSet}):Play()
							end
							ChipSetCallback(BuildTable)
						end)
					end)
				end

				function ChipSetLibrary:GetOptions()
					return ChipSetOptions
				end

				return ChipSetLibrary
			end
		end

		function OptionLibrary.DataTable(DataTableConfig)
			local DataTableText = DataTableConfig.Text or "nil chipset"
			local DataTableCallback = DataTableConfig.Callback or function() print("nil chipset") end
			local DataTableOptions = DataTableConfig.Options or {}

			local TotalOptions = 0

			table.foreach(DataTableOptions, function()
				TotalOptions = TotalOptions + 1
			end)

			if TotalOptions > 0 then

				local Size = UDim2.fromScale(1,0) + UDim2.fromOffset(0,(TotalOptions*30)+((TotalOptions+1)*5))

				local DataTable = Objects.new("Round")
				DataTable.Name = "DataTable"
				DataTable.Size = Size
				DataTable.ImageColor3 = Theme.DataTable
				DataTable.ImageTransparency = 1
				DataTable.Parent = PageContentFrame

				local DataShadow = Objects.new("Shadow")
				DataShadow.ImageColor3 = Theme.DataTable
				DataShadow.ImageTransparency = 1
				DataShadow.Parent = DataTable

				local DataContainer = Objects.new("Frame")
				DataContainer.Name = "Container"
				DataContainer.Parent = DataTable

				local DataList = Objects.new("UIListLayout")
				DataList.SortOrder = Enum.SortOrder.LayoutOrder
				DataList.Padding = UDim.new(0,5)
				DataList.Parent = DataContainer

				local DataPadding = Objects.new("UIPadding")
				DataPadding.PaddingBottom = UDim.new(0,5)
				DataPadding.PaddingTop = UDim.new(0,5)
				DataPadding.PaddingRight= UDim.new(0,5)
				DataPadding.PaddingLeft = UDim.new(0,5)
				DataPadding.Parent = DataContainer

				local BuildTable = {}

				table.foreach(DataTableOptions, function(Key, Value)
					if typeof(Value) == "table" then
						BuildTable[Key] = Value.Enabled
					else
						BuildTable[Key] = Value
					end
				end)

				DataTableCallback(BuildTable)

				TweenService:Create(DataTable, TweenInfo.new(0.5), {ImageTransparency = 0.9}):Play()
				TweenService:Create(DataShadow, TweenInfo.new(0.5), {ImageTransparency = 0.8}):Play()

				table.foreach(DataTableOptions, function(Key, Value)
					local DataItem = Objects.new("SmoothButton")
					DataItem.Name = "DataItem"
					DataItem.Size = UDim2.fromScale(1,0) + UDim2.fromOffset(0,30)
					DataItem.ImageColor3 = BuildTable[Key] and Theme.DataTable or Theme.DataTableAccent
					DataItem.ImageTransparency = 1
					DataItem.Parent = DataContainer

					local DataTracker = Objects.new("Round")
					DataTracker.Name = "Tracker"
					DataTracker.Size = UDim2.fromOffset(24,24)
					DataTracker.Position = UDim2.fromScale(0,0.5) + UDim2.fromOffset(3,-12)
					DataTracker.ImageColor3 = Theme.DataTable
					DataTracker.ImageTransparency = 1
					DataTracker.Parent = DataItem

					local Tick = Objects.new("Round")
					Tick.Name = "Tick"
					Tick.ScaleType = Enum.ScaleType.Stretch
					Tick.Image = "http://www.roblox.com/asset/?id=5554953789"
					Tick.ImageColor3 = Theme.DataTableAccent
					Tick.ImageTransparency = 1
					Tick.Size = UDim2.fromScale(1,1) - UDim2.fromOffset(4,4)
					Tick.SizeConstraint = Enum.SizeConstraint.RelativeYY
					Tick.Position = UDim2.fromOffset(2,2)
					Tick.Parent = DataTracker

					local DataLabel = Objects.new("Label")
					DataLabel.Name = "Value"
					DataLabel.Size = (UDim2.fromScale(1,1) - UDim2.fromOffset(30))
					DataLabel.Position = UDim2.fromOffset(30) or UDim2.fromOffset(5)
					DataLabel.Text = Key
					DataLabel.Font = Enum.Font.Gotham
					DataLabel.TextSize = 14
					DataLabel.TextColor3 = Theme.DataTable
					DataLabel.TextTransparency = 1
					DataLabel.Parent = DataItem

					TweenService:Create(DataItem, TweenInfo.new(0.5), {ImageTransparency = BuildTable[Key] and 0.8 or 0}):Play()
					TweenService:Create(DataTracker, TweenInfo.new(0.5), {ImageTransparency = BuildTable[Key] and 0 or 0.8}):Play()
					TweenService:Create(Tick, TweenInfo.new(0.5), {ImageTransparency = BuildTable[Key] and 0 or 0.7}):Play()
					TweenService:Create(DataLabel, TweenInfo.new(0.5), {TextTransparency = 0}):Play()

					local DataMenu

					if typeof(Value) == "table" then
						local Menu = Value.Menu or {}

						local MenuAdded, MenuButton = TryAddMenu(DataItem, Menu, {})

						MenuButton.ImageColor3 = Theme.DataTable

						DataMenu = MenuButton
					end

					DataItem.MouseButton1Down:Connect(function()
						BuildTable[Key] = not BuildTable[Key]
						local Enabled = BuildTable[Key]
						TweenService:Create(DataItem, TweenInfo.new(0.15), {ImageTransparency = Enabled and 0.8 or 0, ImageColor3 = Enabled and Theme.DataTable or Theme.DataTableAccent}):Play()
						TweenService:Create(Tick, TweenInfo.new(0.15), {ImageTransparency = Enabled and 0 or 0.7}):Play()
						TweenService:Create(DataTracker, TweenInfo.new(0.15), {ImageTransparency = Enabled and 0 or 0.8}):Play()
						DataTableCallback(BuildTable)
					end)
				end)

				local DataTableLibrary = {}

				function DataTableLibrary:SetOptions(NewMenu)
					if DataContainer then
						DataContainer:Destroy()
					end

					DataTableOptions = NewMenu or {}

					TotalOptions = 0

					table.foreach(DataTableOptions, function()
						TotalOptions = TotalOptions + 1
					end)

					Size = UDim2.fromScale(1,0) + UDim2.fromOffset(0,(TotalOptions*30)+((TotalOptions+1)*5))

					DataTable.Size = Size

					DataContainer = Objects.new("Frame")
					DataContainer.Name = "Container"
					DataContainer.Parent = DataTable

					local DataList = Objects.new("UIListLayout")
					DataList.SortOrder = Enum.SortOrder.LayoutOrder
					DataList.Padding = UDim.new(0,5)
					DataList.Parent = DataContainer

					local DataPadding = Objects.new("UIPadding")
					DataPadding.PaddingBottom = UDim.new(0,5)
					DataPadding.PaddingTop = UDim.new(0,5)
					DataPadding.PaddingRight= UDim.new(0,5)
					DataPadding.PaddingLeft = UDim.new(0,5)
					DataPadding.Parent = DataContainer

					local BuildTable = {}

					table.foreach(DataTableOptions, function(Key, Value)
						if typeof(Value) == "table" then
							BuildTable[Key] = Value.Enabled
						else
							BuildTable[Key] = Value
						end
					end)

					DataTableCallback(BuildTable)

					TweenService:Create(DataTable, TweenInfo.new(0.5), {ImageTransparency = 0.9}):Play()
					TweenService:Create(DataShadow, TweenInfo.new(0.5), {ImageTransparency = 0.8}):Play()

					table.foreach(DataTableOptions, function(Key, Value)
						local DataItem = Objects.new("SmoothButton")
						DataItem.Name = "DataItem"
						DataItem.Size = UDim2.fromScale(1,0) + UDim2.fromOffset(0,30)
						DataItem.ImageColor3 = BuildTable[Key] and Theme.DataTable or Theme.DataTableAccent
						DataItem.ImageTransparency = 1
						DataItem.Parent = DataContainer

						local DataTracker = Objects.new("Round")
						DataTracker.Name = "Tracker"
						DataTracker.Size = UDim2.fromOffset(24,24)
						DataTracker.Position = UDim2.fromScale(0,0.5) + UDim2.fromOffset(3,-12)
						DataTracker.ImageColor3 = Theme.DataTable
						DataTracker.ImageTransparency = 1
						DataTracker.Parent = DataItem

						local Tick = Objects.new("Round")
						Tick.Name = "Tick"
						Tick.ScaleType = Enum.ScaleType.Stretch
						Tick.Image = "http://www.roblox.com/asset/?id=5554953789"
						Tick.ImageColor3 = Theme.DataTableAccent
						Tick.ImageTransparency = 1
						Tick.Size = UDim2.fromScale(1,1) - UDim2.fromOffset(4,4)
						Tick.SizeConstraint = Enum.SizeConstraint.RelativeYY
						Tick.Position = UDim2.fromOffset(2,2)
						Tick.Parent = DataTracker

						local DataLabel = Objects.new("Label")
						DataLabel.Name = "Value"
						DataLabel.Size = (UDim2.fromScale(1,1) - UDim2.fromOffset(30))
						DataLabel.Position = UDim2.fromOffset(30) or UDim2.fromOffset(5)
						DataLabel.Text = Key
						DataLabel.Font = Enum.Font.Gotham
						DataLabel.TextSize = 14
						DataLabel.TextColor3 = Theme.DataTable
						DataLabel.TextTransparency = 1
						DataLabel.Parent = DataItem

						TweenService:Create(DataItem, TweenInfo.new(0.5), {ImageTransparency = BuildTable[Key] and 0.8 or 0}):Play()
						TweenService:Create(DataTracker, TweenInfo.new(0.5), {ImageTransparency = BuildTable[Key] and 0 or 0.8}):Play()
						TweenService:Create(Tick, TweenInfo.new(0.5), {ImageTransparency = BuildTable[Key] and 0 or 0.7}):Play()
						TweenService:Create(DataLabel, TweenInfo.new(0.5), {TextTransparency = 0}):Play()

						local DataMenu

						if typeof(Value) == "table" then
							local Menu = Value.Menu or {}

							local MenuAdded, MenuButton = TryAddMenu(DataItem, Menu, {})

							MenuButton.ImageColor3 = Theme.DataTable

							DataMenu = MenuButton
						end

						DataItem.MouseButton1Down:Connect(function()
							BuildTable[Key] = not BuildTable[Key]
							local Enabled = BuildTable[Key]
							TweenService:Create(DataItem, TweenInfo.new(0.15), {ImageTransparency = Enabled and 0.8 or 0, ImageColor3 = Enabled and Theme.DataTable or Theme.DataTableAccent}):Play()
							TweenService:Create(Tick, TweenInfo.new(0.15), {ImageTransparency = Enabled and 0 or 0.7}):Play()
							TweenService:Create(DataTracker, TweenInfo.new(0.15), {ImageTransparency = Enabled and 0 or 0.8}):Play()
							DataTableCallback(BuildTable)
						end)
					end)
				end

				function DataTableLibrary:GetOptions()
					return DataTableOptions
				end

				return DataTableLibrary
			end
		end

		function OptionLibrary.ColorPicker(ColorPickerConfig)
			local ColorPickerText = ColorPickerConfig.Text or "nil color picker"
			local ColorPickerCallback = ColorPickerConfig.Callback or function() print("nil color picker") end
			local ColorPickerDefault = ColorPickerConfig.Default or Color3.fromRGB(255,255,255)
			local ColorPickerMenu = ColorPickerConfig.Menu or {}
			local ColorPickerToggle = false

			local H, S, V = Objects.new("NumberValue"), Objects.new("NumberValue"), Objects.new("NumberValue")

			H.Value, S.Value, V.Value = Color3.toHSV(ColorPickerDefault)

			local ColorPicker = Objects.new("SmoothButton")
			ColorPicker.Name = "ColorPicker"
			ColorPicker.Size = UDim2.fromScale(1,0) + UDim2.fromOffset(0,40)
			ColorPicker.ImageColor3 = Theme.ColorPicker
			ColorPicker.ImageTransparency = 1
			ColorPicker.ClipsDescendants = true
			ColorPicker.Parent = PageContentFrame

			ColorPicker.MouseButton1Down:Connect(function()
				ColorPickerToggle = not ColorPickerToggle
				TweenService:Create(ColorPicker, TweenInfo.new(0.15), {Size = UDim2.fromScale(1,0) + (ColorPickerToggle and UDim2.fromOffset(0,115) or UDim2.fromOffset(0,40))}):Play()
			end)

			local ColorBar = Objects.new("Round")
			ColorBar.Name = "TitleBar"
			ColorBar.Size = UDim2.fromScale(1,0) + UDim2.fromOffset(-10,30)
			ColorBar.Position = UDim2.fromOffset(5,5)
			ColorBar.ImageColor3 = Theme.ColorPickerAccent
			ColorBar.ImageTransparency = 1
			ColorBar.Parent = ColorPicker

			local ColorShadow = Objects.new("Shadow")
			ColorShadow.ImageColor3 = Theme.ColorPickerAccent
			ColorShadow.ImageTransparency = 1 
			ColorShadow.Parent = ColorBar

			local ColorLabel = Objects.new("Label")
			ColorLabel.Name = "Title"
			ColorLabel.Font = Enum.Font.GothamSemibold
			ColorLabel.TextColor3 = Theme.ColorPickerAccent
			ColorLabel.TextSize = 14
			ColorLabel.Text = ColorPickerText
			ColorLabel.TextTransparency = 1
			ColorLabel.Parent = ColorBar

			local ColorTracker = Objects.new("Round")
			ColorTracker.Name = "Tracker"
			ColorTracker.Size = UDim2.fromOffset(50,20)
			ColorTracker.Position = UDim2.fromScale(1,0) + UDim2.fromOffset(-55,5)
			ColorTracker.ImageColor3 = ColorPickerDefault
			ColorTracker.ImageTransparency = 1
			ColorTracker.Parent = ColorBar

			local TrackerShadow = Objects.new("Shadow")
			TrackerShadow.ImageColor3 = ColorTracker.ImageColor3
			TrackerShadow.ImageTransparency = 1
			TrackerShadow.Parent = ColorTracker

			ColorTracker:GetPropertyChangedSignal("ImageColor3"):Connect(function()
				TrackerShadow.ImageColor3 = ColorTracker.ImageColor3
			end)

			local Hue = Objects.new("Round")
			Hue.Name = "Container"
			Hue.Position = UDim2.fromOffset(5,40)
			Hue.Size = UDim2.fromOffset(25,20)
			Hue.ImageColor3 = Theme.ColorPickerAccent
			Hue.ImageTransparency = 0.8
			Hue.Parent = ColorPicker

			local Saturation = Hue:Clone()
			Saturation.Position = Saturation.Position + UDim2.fromOffset(0,25)
			Saturation.Parent = ColorPicker

			local Value = Saturation:Clone()
			Value.Position = Value.Position UDim2.fromOffset(0,25)
			Value.Parent = ColorPicker

			local HueLabel = Objects.new("Label")
			HueLabel.Name = "Label"
			HueLabel.TextXAlignment = Enum.TextXAlignment.Center
			HueLabel.Position = UDim2.fromScale(0,0)
			HueLabel.Size = UDim2.fromScale(1,1)
			HueLabel.Text = "H"
			HueLabel.TextColor3 = Theme.ColorPickerAccent
			HueLabel.TextSize = 12
			HueLabel.Font = Enum.Font.GothamBold
			HueLabel.TextTransparency = 1
			HueLabel.Parent = Hue

			local SaturationLabel = HueLabel:Clone()
			SaturationLabel.Text = "S"
			SaturationLabel.Parent = Saturation

			local ValueLabel = HueLabel:Clone()
			ValueLabel.Text = "V"
			ValueLabel.Parent = Value

			local function CSK(T,C)
				return ColorSequenceKeypoint.new(T,C)
			end

			local RainbowGradient = Objects.new("UIGradient")
			RainbowGradient.Color = ColorSequence.new({
				CSK(0, Color3.fromRGB(255,0,0)),
				CSK(0.157, Color3.fromRGB(255,0,255)),
				CSK(0.323, Color3.fromRGB(0,0,255)),
				CSK(0.488, Color3.fromRGB(0,255,255)),
				CSK(0.66, Color3.fromRGB(0,255,0)),
				CSK(0.817, Color3.fromRGB(255,255,0)),
				CSK(1, Color3.fromRGB(255,0,0))
			})

			local BlackWhiteGradient = Objects.new("UIGradient")
			BlackWhiteGradient.Color = ColorSequence.new(
				Color3.new(1,1,1), 
				Color3.new(0,0,0)
			)

			local SaturationGradient = Objects.new("UIGradient")
			SaturationGradient.Color = ColorSequence.new(
				Color3.fromHSV(H.Value,1,V.Value),
				Color3.new(0,0,0):Lerp(Color3.fromRGB(255,255,255), V.Value)
			)

			local HueTracker = Objects.new("SmoothButton")
			HueTracker.Name = "Tracker"
			HueTracker.ImageColor3 = Color3.fromRGB(255,255,255)
			HueTracker.ImageTransparency = 1
			HueTracker.Size = UDim2.fromScale(1,0) + UDim2.fromOffset(-40,20)
			HueTracker.Position = UDim2.fromOffset(35,40)
			HueTracker.Parent = ColorPicker

			local SaturationTracker = HueTracker:Clone()
			SaturationTracker.Position = SaturationTracker.Position + UDim2.fromOffset(0,25)
			SaturationTracker.Parent = ColorPicker

			local ValueTracker = SaturationTracker:Clone()
			ValueTracker.Position = ValueTracker.Position + UDim2.fromOffset(0,25)
			ValueTracker.Parent = ColorPicker

			local HueShadow = Objects.new("Shadow")
			HueShadow.ImageColor3 = Color3.fromRGB(255,255,255)
			HueShadow.ImageTransparency = 1
			HueShadow.Parent = HueTracker

			local SaturationShadow = HueShadow:Clone()
			SaturationShadow.Parent = SaturationTracker

			local ValueShadow = HueShadow:Clone()
			ValueShadow.Parent = ValueTracker

			local HueGrad = RainbowGradient:Clone()
			HueGrad.Parent = HueTracker
			local HueShadowGrad = RainbowGradient:Clone()
			HueShadowGrad.Parent = HueShadow

			local ValueGrad = BlackWhiteGradient:Clone()
			ValueGrad.Parent = ValueTracker
			local ValueShadowGrad = BlackWhiteGradient:Clone()
			ValueShadowGrad.Parent = ValueShadow

			local SaturationGrad = SaturationGradient:Clone()
			SaturationGrad.Parent = SaturationTracker
			local SaturationShadowGrad = SaturationGradient:Clone()
			SaturationShadowGrad.Parent = SaturationShadow

			TweenService:Create(ColorPicker, TweenInfo.new(0.5), {ImageTransparency = 0.5}):Play()
			TweenService:Create(ColorBar, TweenInfo.new(0.5), {ImageTransparency = 0.8}):Play()
			TweenService:Create(ColorShadow, TweenInfo.new(0.5), {ImageTransparency = 0.5}):Play()
			TweenService:Create(ColorLabel, TweenInfo.new(0.5), {TextTransparency = 0}):Play()
			TweenService:Create(HueLabel, TweenInfo.new(0.5), {TextTransparency = 0}):Play()
			TweenService:Create(SaturationLabel, TweenInfo.new(0.5), {TextTransparency = 0}):Play()
			TweenService:Create(ValueLabel, TweenInfo.new(0.5), {TextTransparency = 0}):Play()
			TweenService:Create(ColorTracker, TweenInfo.new(0.5), {ImageTransparency = 0}):Play()
			TweenService:Create(TrackerShadow, TweenInfo.new(0.5), {ImageTransparency = 0.2}):Play()
			TweenService:Create(HueTracker, TweenInfo.new(0.5), {ImageTransparency = 0}):Play()
			TweenService:Create(ValueTracker, TweenInfo.new(0.5), {ImageTransparency = 0}):Play()
			TweenService:Create(SaturationTracker, TweenInfo.new(0.5), {ImageTransparency = 0}):Play()
			TweenService:Create(HueShadow, TweenInfo.new(0.5), {ImageTransparency = 0}):Play()
			TweenService:Create(SaturationShadow, TweenInfo.new(0.5), {ImageTransparency = 0}):Play()
			TweenService:Create(ValueShadow, TweenInfo.new(0.5), {ImageTransparency = 0}):Play()

			H:GetPropertyChangedSignal("Value"):Connect(function()
				ColorTracker.ImageColor3 = Color3.fromHSV(H.Value,S.Value,V.Value)
				SaturationGrad.Color = ColorSequence.new(
					Color3.fromHSV(H.Value,1,V.Value), 
					Color3.fromRGB(0,0,0):Lerp(Color3.fromRGB(255,255,255),V.Value)
				)
				SaturationShadowGrad.Color = ColorSequence.new(
					Color3.fromHSV(H.Value,1,V.Value), 
					Color3.fromRGB(0,0,0):Lerp(Color3.fromRGB(255,255,255),V.Value)
				)
				ColorPickerCallback(Color3.fromHSV(H.Value,S.Value,V.Value))
			end)

			S:GetPropertyChangedSignal("Value"):Connect(function()
				ColorTracker.ImageColor3 = Color3.fromHSV(H.Value,S.Value,V.Value)
				SaturationGrad.Color = ColorSequence.new(
					Color3.fromHSV(H.Value,1,V.Value), 
					Color3.fromRGB(0,0,0):Lerp(Color3.fromRGB(255,255,255),V.Value)
				)
				SaturationShadowGrad.Color = ColorSequence.new(
					Color3.fromHSV(H.Value,1,V.Value), 
					Color3.fromRGB(0,0,0):Lerp(Color3.fromRGB(255,255,255),V.Value)
				)
				ColorPickerCallback(Color3.fromHSV(H.Value,S.Value,V.Value))
			end)

			V:GetPropertyChangedSignal("Value"):Connect(function()
				ColorTracker.ImageColor3 = Color3.fromHSV(H.Value,S.Value,V.Value)
				SaturationGrad.Color = ColorSequence.new(
					Color3.fromHSV(H.Value,1,V.Value), 
					Color3.fromRGB(0,0,0):Lerp(Color3.fromRGB(255,255,255),V.Value)
				)
				SaturationShadowGrad.Color = ColorSequence.new(
					Color3.fromHSV(H.Value,1,V.Value), 
					Color3.fromRGB(0,0,0):Lerp(Color3.fromRGB(255,255,255),V.Value)
				)
				ColorPickerCallback(Color3.fromHSV(H.Value,S.Value,V.Value))
			end)

			HueTracker.MouseButton1Down:Connect(function()
				H.Value = 1 - GetXY(HueTracker)
				local MouseMove, MouseKill
				MouseMove = Mouse.Move:Connect(function()
					H.Value = 1 - GetXY(HueTracker)
				end)
				MouseKill = InputService.InputEnded:Connect(function(UserInput)
					if UserInput.UserInputType == Enum.UserInputType.MouseButton1 then
						MouseMove:Disconnect()
						MouseKill:Disconnect()
					end
				end)
			end)

			ValueTracker.MouseButton1Down:Connect(function()
				V.Value = 1 - GetXY(HueTracker)
				local MouseMove, MouseKill
				MouseMove = Mouse.Move:Connect(function()
					V.Value = 1 - GetXY(HueTracker)
				end)
				MouseKill = InputService.InputEnded:Connect(function(UserInput)
					if UserInput.UserInputType == Enum.UserInputType.MouseButton1 then
						MouseMove:Disconnect()
						MouseKill:Disconnect()
					end
				end)
			end)

			SaturationTracker.MouseButton1Down:Connect(function()
				S.Value = 1 - GetXY(HueTracker)
				local MouseMove, MouseKill
				MouseMove = Mouse.Move:Connect(function()
					S.Value = 1 - GetXY(HueTracker)
				end)
				MouseKill = InputService.InputEnded:Connect(function(UserInput)
					if UserInput.UserInputType == Enum.UserInputType.MouseButton1 then
						MouseMove:Disconnect()
						MouseKill:Disconnect()
					end
				end)
			end)

			local MenuAdded, MenuButton = TryAddMenu(ColorLabel, ColorPickerMenu, {})

			if MenuAdded then
				ColorTracker.Position = ColorTracker.Position - UDim2.fromOffset(25,0)
				MenuButton.ImageColor3 = Theme.ColorPickerAccent
			end

			local ColorPickerLibrary = {}

			function ColorPickerLibrary:SetText(Value)
				ColorLabel.Text = Value
			end

			function ColorPickerLibrary:GetText()
				return ColorLabel.Text
			end

			function ColorPickerLibrary:SetColor(Value)
				H.Value, S.Value, V.Value = Color3.toHSV(Value)
			end

			function ColorPickerLibrary:GetColor()
				return ColorTracker.ImageColor3
			end

			return ColorPickerLibrary
		end

		function OptionLibrary.Toggle(ToggleConfig)
			local ToggleText = ToggleConfig.Text or "nil toggle"
			local ToggleCallback = ToggleConfig.Callback or function() print("nil toggle") end
			local ToggleDefault = ToggleConfig.Enabled or false
			local Menu = ToggleConfig.Menu or {}

			local Toggle = Objects.new("SmoothButton")
			Toggle.Name = "Toggle"
			Toggle.Size = UDim2.fromScale(1,0) + UDim2.fromOffset(0,30)
			Toggle.ImageColor3 = Theme.Toggle
			Toggle.ImageTransparency = 1
			Toggle.Parent = PageContentFrame

			local ToggleTracker = Objects.new("Round")
			ToggleTracker.Name = "Tracker"
			ToggleTracker.Image = "rbxassetid://3570695787"
			ToggleTracker.SliceCenter = Rect.new(100,100,100,100)
			ToggleTracker.SliceScale = 1
			ToggleTracker.Size = UDim2.fromOffset(26,12)
			ToggleTracker.Position = UDim2.fromScale(1,0.5) - UDim2.fromOffset(41,6)
			ToggleTracker.ImageColor3 = Theme.Toggle
			ToggleTracker.ImageTransparency = 1
			ToggleTracker.Parent = Toggle

			local Dot = Objects.new("Circle")
			Dot.Name = "Dot"
			Dot.Size = UDim2.fromOffset(16,16)
			Dot.Position = UDim2.fromScale(0,0.5) - UDim2.fromOffset(8,8)
			Dot.ImageColor3 = Theme.ToggleAccent
			Dot.ImageTransparency = 1
			Dot.Parent = ToggleTracker

			local DotShadow = Objects.new("Round")
			DotShadow.Name = "Shadow"
			DotShadow.Image = "http://www.roblox.com/asset/?id=5554831957"
			DotShadow.ScaleType = Enum.ScaleType.Stretch
			DotShadow.Size = UDim2.fromOffset(31,31)
			DotShadow.Position = UDim2.fromOffset(-8,-8)
			DotShadow.ImageColor3 = Theme.Toggle
			DotShadow.ImageTransparency = 1
			DotShadow.Parent = Dot

			local ToggleLabel = Objects.new("Label")
			ToggleLabel.Font = Enum.Font.GothamSemibold
			ToggleLabel.TextSize = 14
			ToggleLabel.Text = ToggleText
			ToggleLabel.TextColor3 = Theme.Toggle
			ToggleLabel.TextTransparency = 1
			ToggleLabel.ClipsDescendants = true
			ToggleLabel.Parent = Toggle

			TweenService:Create(Toggle, TweenInfo.new(0.5), {ImageTransparency = 0.8}):Play()
			TweenService:Create(ToggleTracker, TweenInfo.new(0.5), {ImageTransparency = 0.5}):Play()
			TweenService:Create(Dot, TweenInfo.new(0.5), {ImageTransparency = 0}):Play()
			TweenService:Create(DotShadow, TweenInfo.new(0.5), {ImageTransparency = 0.5}):Play()
			TweenService:Create(ToggleLabel, TweenInfo.new(0.5), {TextTransparency = 0}):Play()

			TweenService:Create(Dot, TweenInfo.new(0.15), {Position = (ToggleDefault and UDim2.fromScale(1,0.5) or UDim2.fromScale(0,0.5)) - UDim2.fromOffset(8,8), ImageColor3 = ToggleDefault and Theme.Toggle or Theme.ToggleAccent}):Play()
			ToggleCallback(ToggleDefault)

			Toggle.MouseButton1Down:Connect(function()
				ToggleDefault = not ToggleDefault
				TweenService:Create(Dot, TweenInfo.new(0.15), {Position = (ToggleDefault and UDim2.fromScale(1,0.5) or UDim2.fromScale(0,0.5)) - UDim2.fromOffset(8,8), ImageColor3 = ToggleDefault and Theme.Toggle or Theme.ToggleAccent}):Play()
				ToggleCallback(ToggleDefault)
				CircleAnim(ToggleLabel, Theme.ToggleAccent, Theme.Toggle)
			end)

			local MenuAdded, MenuButton = TryAddMenu(Toggle, Menu, {})

			if MenuAdded then
				ToggleTracker.Position = ToggleTracker.Position - UDim2.fromOffset(15,0)
				MenuButton.ImageColor3 = Theme.Toggle
			end

			local ToggleLibrary = {}

			function ToggleLibrary:SetText(Value)
				ToggleLabel.Text = Value
			end

			function ToggleLibrary:GetText()
				return ToggleLabel.Text
			end

			function ToggleLibrary:SetState(Value)
				ToggleDefault = Value
				TweenService:Create(Dot, TweenInfo.new(0.15), {Position = (ToggleDefault and UDim2.fromScale(1,0.5) or UDim2.fromScale(0,0.5)) - UDim2.fromOffset(8,8), ImageColor3 = ToggleDefault and Theme.Toggle or Theme.ToggleAccent}):Play()
				ToggleCallback(ToggleDefault)
			end

			function ToggleLibrary:GetState()
				return ToggleDefault
			end

			return ToggleLibrary
		end

		function OptionLibrary.TextField(TextFieldConfig)
			local TextFieldText = TextFieldConfig.Text or "nil text field"
			local TextFieldInputType = TextFieldConfig.Type or TextFieldConfig.type or "Default"
			local TextFieldCallback = TextFieldConfig.Callback or function() print("nil text field") end
			local Menu = TextFieldConfig.Menu or {}

			local TextField = Objects.new("Round")
			TextField.Name = "TextField"
			TextField.Size = UDim2.fromScale(1,0) + UDim2.fromOffset(0,30)
			TextField.ImageColor3 = Theme.TextField
			TextField.ImageTransparency = 1
			TextField.Parent = PageContentFrame

			local TextEffect = Objects.new("Frame")
			TextEffect.Name = "Effect"
			TextEffect.BackgroundTransparency = 1
			TextEffect.BackgroundColor3 = Theme.TextField
			TextEffect.Size = UDim2.fromScale(1,0) + UDim2.fromOffset(0,2)
			TextEffect.Position = UDim2.fromScale(0,1) - UDim2.fromOffset(0,2)
			TextEffect.Parent = TextField

			local TextShadow = Objects.new("Shadow")
			TextShadow.ImageColor3 = Theme.TextField
			TextShadow.ImageTransparency = 1
			TextShadow.Parent = TextField

			local TextInput = Objects.new("Box")
			TextInput.Name = "Value"
			TextInput.PlaceholderText = TextFieldText
			TextInput.PlaceholderColor3 = Theme.TextFieldAccent
			TextInput.TextInputType = Enum.TextInputType[TextFieldInputType]
			TextInput.TextColor3 = Theme.TextFieldAccent
			TextInput.Text = ""
			TextInput.Font = Enum.Font.GothamSemibold
			TextInput.TextSize = 14
			TextInput.TextTransparency = 1
			TextInput.Parent = TextField

			TweenService:Create(TextField, TweenInfo.new(0.5), {ImageTransparency = 0.8}):Play()
			TweenService:Create(TextEffect, TweenInfo.new(0.5), {BackgroundTransparency = 0.2}):Play()
			TweenService:Create(TextShadow, TweenInfo.new(0.5), {ImageTransparency = 0.7}):Play()
			TweenService:Create(TextInput, TweenInfo.new(0.5), {TextTransparency = 0.5}):Play()

			TextInput.Focused:Connect(function()
				TweenService:Create(TextField, TweenInfo.new(0.5), {ImageTransparency = 0.7}):Play()
				TweenService:Create(TextInput, TweenInfo.new(0.5), {TextTransparency = 0}):Play()
			end)

			TextInput.FocusLost:Connect(function()
				TweenService:Create(TextField, TweenInfo.new(0.5), {ImageTransparency = 0.8}):Play()
				TweenService:Create(TextInput, TweenInfo.new(0.5), {TextTransparency = 0.5}):Play()
				TextFieldCallback(TextInput.Text)
			end)

			local MenuAdded, MenuBar = TryAddMenu(TextField, Menu, {
				SetText = function(Value)
					TextInput.Text = Value
					TextFieldCallback(TextInput.Text)
				end
			})

			if MenuAdded then
				MenuBar.ImageColor3 = Theme.TextFieldAccent
			end

			local TextFieldLibrary = {}

			function TextFieldLibrary:SetText(Value)
				TextInput.Text = Value
			end

			function TextFieldLibrary:GetText()
				return TextInput.Text
			end

			return TextFieldLibrary
		end
		
		function OptionLibrary.Label(LabelConfig)
			local LabelText = LabelConfig.Text or "nil label"
			
			local LabelContainer = Objects.new("Round")
			LabelContainer.Name = "Label"
			LabelContainer.Size = UDim2.fromScale(1,0) + UDim2.fromOffset(0,20)
			LabelContainer.ImageColor3 = Theme.MainFrame
			LabelContainer.Parent = PageContentFrame
			
			local LabelContent = Objects.new("Label")
			LabelContent.TextColor3 = Theme.ChipSet
			LabelContent.Text = LabelText:upper()
			LabelContent.TextSize = 12
			LabelContent.Font = Enum.Font.GothamSemibold
			LabelContent.Size = UDim2.fromScale(1,1) + UDim2.fromOffset(-5,0)
			LabelContent.Position = UDim2.fromOffset(5,0)
			LabelContent.Parent = LabelContainer
			
			local LabelOptions = {}
			
			function LabelOptions.SetText(Text)
				LabelContent.Text = Text
			end
			
			return LabelOptions
		end

		function OptionLibrary.Slider(SliderConfig)
			local SliderText = SliderConfig.Text or "nil slider"
			local SliderCallback = SliderConfig.Callback or function() print("nil slider") end
			local SliderMin = SliderConfig.Min or 0
			local SliderMax = SliderConfig.Max or 100
			local Menu = SliderConfig.Menu or {}

			if SliderMin > SliderMax then
				local ValueBefore = SliderMin
				SliderMin, SliderMax = SliderMax, ValueBefore
			end

			local SliderDef = math.clamp(SliderConfig.Def, SliderMin, SliderMax) or math.clamp(50, SliderMin, SliderMax)
			local DefaultScale =  (SliderDef - SliderMin) / (SliderMax - SliderMin)

			local Slider = Objects.new("Round")
			Slider.Name = "Slider"
			Slider.Size = UDim2.fromScale(1,0) + UDim2.fromOffset(0,35)
			Slider.ImageColor3 = Theme.Slider
			Slider.ImageTransparency = 1
			Slider.Parent = PageContentFrame

			local SliderShadow = Objects.new("Shadow")
			SliderShadow.ImageColor3 = Theme.Slider
			SliderShadow.ImageTransparency = 1
			SliderShadow.Parent = Slider

			local SliderTitle = Objects.new("Label")
			SliderTitle.TextColor3 = Theme.SliderAccent
			SliderTitle.Text = SliderText
			SliderTitle.TextSize = 14
			SliderTitle.Font = Enum.Font.GothamSemibold
			SliderTitle.Size = UDim2.fromScale(1,0) + UDim2.fromOffset(-5,25)
			SliderTitle.TextTransparency = 1
			SliderTitle.Parent = Slider

			local SliderValue = Objects.new("Label")
			SliderValue.Text = tostring(SliderDef)
			SliderValue.TextColor3 = Theme.SliderAccent
			SliderValue.TextTransparency = 1
			SliderValue.TextSize = 14
			SliderValue.Size = UDim2.fromScale(1,0) + UDim2.fromOffset(-5,25)
			SliderValue.Position = UDim2.fromScale(0,0)
			SliderValue.TextXAlignment = Enum.TextXAlignment.Right
			SliderValue.Font = Enum.Font.GothamSemibold
			SliderValue.Parent = Slider

			local SliderTracker = Objects.new("Frame")
			SliderTracker.BackgroundColor3 = Theme.SliderAccent
			SliderTracker.BackgroundTransparency = 1
			SliderTracker.Size = UDim2.fromScale(1,0) + UDim2.fromOffset(-20,3)
			SliderTracker.Position = UDim2.fromScale(0,1) + UDim2.fromOffset(10,-10)
			SliderTracker.Parent = Slider

			local SliderFill = SliderTracker:Clone()
			SliderFill.BackgroundTransparency = 1
			SliderFill.Position = UDim2.fromScale(0,0)
			SliderFill.Size = UDim2.fromScale(DefaultScale,1)
			SliderFill.Parent = SliderTracker

			local MinSize = 10
			local MaxSize = 36

			local SizeFromScale = (MinSize +  (MaxSize - MinSize)) * DefaultScale
			SizeFromScale = SizeFromScale - (SizeFromScale % 2)

			local SliderDot = Objects.new("CircleButton")
			SliderDot.Size = UDim2.fromOffset(10,10)
			SliderDot.Position = UDim2.fromScale(DefaultScale,0.5) - UDim2.fromOffset(5,5)
			SliderDot.ImageColor3 = Theme.SliderAccent
			SliderDot.ImageTransparency = 1
			SliderDot.ZIndex = 50
			SliderDot.Parent = SliderTracker

			local SliderFadedDot = Objects.new("Circle")
			SliderFadedDot.Size = UDim2.fromOffset(SizeFromScale,SizeFromScale)
			SliderFadedDot.Position = UDim2.fromScale(0.5,0.5) - UDim2.fromOffset(SizeFromScale/2,SizeFromScale/2)
			SliderFadedDot.ImageColor3 = Theme.SliderAccent
			SliderFadedDot.ImageTransparency = 1
			SliderFadedDot.ZIndex = 50
			SliderFadedDot.Parent = SliderDot

			TweenService:Create(Slider, TweenInfo.new(0.5), {ImageTransparency = 0}):Play()
			TweenService:Create(SliderShadow, TweenInfo.new(0.5), {ImageTransparency = 0}):Play()
			TweenService:Create(SliderTitle, TweenInfo.new(0.5), {TextTransparency = 0}):Play()
			TweenService:Create(SliderValue, TweenInfo.new(0.5), {TextTransparency = 0}):Play()
			TweenService:Create(SliderTracker, TweenInfo.new(0.5), {BackgroundTransparency = 0.5}):Play()
			TweenService:Create(SliderFill, TweenInfo.new(0.5), {BackgroundTransparency = 0}):Play()
			TweenService:Create(SliderDot, TweenInfo.new(0.5), {ImageTransparency = 0}):Play()

			SliderDot.MouseButton1Down:Connect(function()
				TweenService:Create(SliderFadedDot, TweenInfo.new(0.15), {ImageTransparency = 0.8}):Play()
				local MouseMove, MouseKill
				MouseMove = Mouse.Move:Connect(function()
					local Px = GetXY(SliderTracker)
					local SizeFromScale = (MinSize +  (MaxSize - MinSize)) * Px
					local Value = math.floor(SliderMin + ((SliderMax - SliderMin) * Px))
					SizeFromScale = SizeFromScale - (SizeFromScale % 2)
					TweenService:Create(SliderDot, TweenInfo.new(0.15), {Position = UDim2.fromScale(Px,0.5) - UDim2.fromOffset(5,5)}):Play()
					TweenService:Create(SliderFill, TweenInfo.new(0.15), {Size = UDim2.fromScale(Px, 1)}):Play()
					SliderFadedDot.Size = UDim2.fromOffset(SizeFromScale,SizeFromScale)
					SliderFadedDot.Position = UDim2.fromScale(0.5,0.5) - UDim2.fromOffset(SizeFromScale/2,SizeFromScale/2)
					SliderValue.Text = tostring(Value)
					SliderCallback(Value)
				end)
				MouseKill = InputService.InputEnded:Connect(function(UserInput)
					if UserInput.UserInputType == Enum.UserInputType.MouseButton1 then
						TweenService:Create(SliderFadedDot, TweenInfo.new(0.15), {ImageTransparency = 1}):Play()
						MouseMove:Disconnect()
						MouseKill:Disconnect()
					end
				end)
			end)

			local MenuAdded, MenuButton = TryAddMenu(Slider, Menu, {})

			if MenuAdded then
				SliderValue.Position = SliderValue.Position - UDim2.fromOffset(25,0)
				SliderTracker.Size = SliderTracker.Size - UDim2.fromOffset(20,0)
				MenuButton.ImageColor3 = Theme.SliderAccent
			end

			local SliderLibrary = {}

			function SliderLibrary:SetText(Value)
				SliderTitle.Text = Value
			end

			function SliderLibrary:GetText()
				return SliderTitle.Text
			end

			function SliderLibrary:SetMin(Value)
				SliderMin = Value
				local SliderDef = math.clamp(SliderConfig.Def, SliderMin, SliderMax) or math.clamp(50, SliderMin, SliderMax)
				local DefaultScale =  (SliderDef - SliderMin) / (SliderMax - SliderMin)
				local SizeFromScale = (MinSize +  (MaxSize - MinSize)) * DefaultScale
				SizeFromScale = SizeFromScale - (SizeFromScale % 2)
				SliderDot.Position = UDim2.fromScale(DefaultScale,0.5) - UDim2.fromOffset(SizeFromScale/2,SizeFromScale/2)
			end

			function SliderLibrary:SetMax(Value)
				SliderMax = Value
				local SliderDef = math.clamp(SliderConfig.Def, SliderMin, SliderMax) or math.clamp(50, SliderMin, SliderMax)
				local DefaultScale =  (SliderDef - SliderMin) / (SliderMax - SliderMin)
				local SizeFromScale = (MinSize +  (MaxSize - MinSize)) * DefaultScale
				SizeFromScale = SizeFromScale - (SizeFromScale % 2)
				SliderDot.Position = UDim2.fromScale(DefaultScale,0.5) - UDim2.fromOffset(SizeFromScale/2,SizeFromScale/2)
			end

			function SliderLibrary:GetMin()
				return SliderMin
			end

			function SliderLibrary:GetMax()
				return SliderMax
			end

			return SliderLibrary
		end

		return OptionLibrary
	end

	return TabLibrary
end

return Material
