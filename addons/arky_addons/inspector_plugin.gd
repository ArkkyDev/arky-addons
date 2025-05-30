@tool
extends EditorInspectorPlugin

#UndoRedo
var undoRedo: EditorUndoRedoManager

func _can_handle(object: Variant):
	return object is Node

func _parse_begin(object: Variant) -> void:
	build_header_component()
	build_enabled_checkbox_component(object)
	build_reset_position_button_component(object)
	build_reset_scale_button_component(object)

func build_header_component() -> void:
	var header = Header.get_component()
	add_custom_control(header)

func build_enabled_checkbox_component(object: Variant) -> void:
	var row = UI.get_row()
	
	var label = UI.get_label("Enabled")
	
	var right_panel = UI.create_right_panel()
	var checkbox = EnabledCheckbox.get_component(object)

	right_panel.add_child(checkbox)
	row.add_child(label)
	row.add_child(right_panel)
		
	add_custom_control(row)

func build_reset_position_button_component(object: Variant) -> void:
	var row = UI.get_row()
	
	var label = UI.get_label("Position")
	
	var right_panel = UI.create_right_panel()
	var positionButton = ResetPositonButton.get_component(object, undoRedo)

	right_panel.add_child(positionButton)
	row.add_child(label)
	row.add_child(right_panel)

	add_custom_control(row)

func build_reset_scale_button_component(object: Variant) -> void:
	var row = UI.get_row()
	
	var label = UI.get_label("Scale")

	var right_panel = UI.create_right_panel()
	var positionButton = ResetScaleButton.get_component(object, undoRedo)

	right_panel.add_child(positionButton)
	row.add_child(label)
	row.add_child(right_panel)

	add_custom_control(row)