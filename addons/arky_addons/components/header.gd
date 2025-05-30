class_name Header

#Customize
const HEADER: String = "Arky Addons"
const HEADER_FONT_SIZE: int = 21
const HEADER_FONT_COLOR: Color = Colors.HEADER_FONT
const HEADER_BACKGROUND_COLOR: Color = Colors.HEADER_BACKGROUND

static func get_component() -> PanelContainer:
	var font = UI.get_font()

	var header_panel = PanelContainer.new()
	header_panel.add_theme_stylebox_override("panel", get_header_stylebox())
	
	var header_label = Label.new()
	header_label.text = HEADER
	header_label.add_theme_font_override("font", font)

	#Vertical size
	header_panel.custom_minimum_size = Vector2(0, 5)
	
	#Alignament
	header_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	header_label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	header_label.size_flags_horizontal = Control.SIZE_EXPAND_FILL

	#Font
	header_label.add_theme_color_override("font_color", HEADER_FONT_COLOR)
	header_label.add_theme_font_size_override("font_size", HEADER_FONT_SIZE)
	header_panel.add_child(header_label)

	return header_panel

static func get_header_stylebox() -> StyleBoxFlat:
	var sb = StyleBoxFlat.new()
	sb.bg_color = HEADER_BACKGROUND_COLOR

	#Margin
	sb.content_margin_left = 0
	sb.content_margin_right = 0
	sb.content_margin_top = 0
	sb.content_margin_bottom = 0
	
	#Border
	sb.border_width_bottom = 0
	sb.border_color = Colors.HEADER_BACKGROUND
	
	#Corner radius
	sb.set_corner_radius_all(4)

	return sb