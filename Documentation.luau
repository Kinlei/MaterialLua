type Banner = ({ Text: string, Options: {} }) -> ()

type NewButton = (
	{
		Text: string,
		Callback: () -> (),
		Menu: {},
	}
) -> {
	SetText: (self: NewButton, string) -> (),
	GetText: (self: NewButton) -> string,
}

type NewToggle = (
	{
		Text: string,
		Callback: (boolean) -> (),
		Enabled: boolean,
		Menu: {},
	}
) -> {
	SetText: (self: NewToggle, string) -> (),
	GetText: (self: NewToggle) -> string,
	SetState: (self: NewToggle, boolean) -> (),
	GetState: (self: NewToggle) -> boolean,
}

type NewSlider = (
	{
		Text: string,
		Callback: (number) -> (),
		Min: number,
		Max: number,
		Def: number,
		Menu: {},
	}
) -> {
	SetText: (self: NewSlider, string) -> (),
	GetText: (self: NewSlider) -> string,
	SetMin: (self: NewSlider, number) -> (),
	SetMax: (self: NewSlider, number) -> (),
	GetMin: (self: NewSlider) -> number,
	GetMax: (self: NewSlider) -> number,
}

type NewDropdown = (
	{
		Text: string,
		Callback: () -> (),
		Min: number,
		Max: number,
		Def: number,
		Menu: {},
	}
) -> {
	SetText: (self: NewDropdown, string) -> (),
	GetText: (self: NewDropdown) -> string,
}

type NewChipSet = (
	{
		Callback: () -> (),
		Options: { [string]: any },
	}
) -> {
	SetOptions: (self: NewChipSet, Options: { [string]: any }) -> (),
	GetOptions: (self: NewChipSet) -> { [string]: any },
}

type NewDataTable = (
	{
		Callback: ({ [string]: any }) -> (),
		Options: { [string]: any },
	}
) -> {
	SetOptions: (self: NewDataTable, Options: { [string]: any }) -> (),
	GetOptions: (self: NewDataTable) -> { [string]: any },
}

type NewColorPicker = (
	{
		Text: string,
		Default: Color3,
		Callback: (Color3) -> (),
		Menu: {},
	}
) -> {
	SetOptions: (self: NewColorPicker, Options: { [string]: any }) -> (),
	GetOptions: (self: NewColorPicker) -> { [string]: any },
}

type NewTextField = (
	{
		Text: string,
		Type: "Password" | "Default",
		Callback: (inputText: string) -> (),
		Menu: {},
	}
) -> {
	SetText: (self: NewTextField, text: string) -> (),
	GetText: (self: NewTextField) -> string,
}

type MaterialLua = {
	Load: (
		{
			Title: string,
			Style: number,
			SizeX: number,
			SizeY: number,
			Theme: "Light" | "Dark" | "Mocha" | "Aqua" | "Jester",
		}
	) -> ({
		New: (
			{
				Title: string,
				ImageID: number,
			}
		) -> ({
			Banner: Banner,
			NewButton: NewButton,
			NewToggle: NewToggle,
			NewSlider: NewSlider,
			NewDropdown: NewDropdown,
			NewChipSet: NewChipSet,
			NewDataTable: NewDataTable,
			NewColorPicker: NewColorPicker,
			NewTextField: NewTextField,
		}),
	}),
}

local MaterialLua: MaterialLua = require(...)
