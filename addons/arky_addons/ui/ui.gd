class_name UI

#Font
const FONT_ROUTE: String = "res://addons/arky_addons/font/NotoSans-Bold.ttf"

static func get_font() -> FontFile:
	var font: FontFile = FontFile.new()
	font.load_dynamic_font(FONT_ROUTE)
	return font

static func get_label(text: String) -> Label:
	var label = Label.new()
	label.text = text
	label.size_flags_horizontal = Control.SIZE_EXPAND
	label.horizontal_alignment = HORIZONTAL_ALIGNMENT_LEFT
	return label

#Panel
static func create_right_panel() -> PanelContainer:
	var right_panel = PanelContainer.new()
	right_panel.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	right_panel.add_theme_stylebox_override("panel", colored_stylebox())
	return right_panel

static func colored_stylebox() -> StyleBoxFlat:
	var sb = StyleBoxFlat.new()
	sb.bg_color = Colors.DEFAULT_RIGHT_PANEL
	sb.content_margin_left = 6
	sb.content_margin_right = 6
	sb.content_margin_top = 4
	sb.content_margin_bottom = 4
	sb.corner_radius_top_right = 4
	sb.corner_radius_bottom_right = 4
	return sb

static func get_row() -> HBoxContainer:
	var row = HBoxContainer.new()
	row.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	return row