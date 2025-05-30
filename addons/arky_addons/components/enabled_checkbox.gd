class_name EnabledCheckbox

#Internal
static var visibleStateBeforeChange = false

static func get_component(object: Variant) -> CheckBox:
	var checkbox = CheckBox.new()
	checkbox.text = "On"
	
	checkbox.button_pressed = object.process_mode == Node.PROCESS_MODE_INHERIT
	checkbox.focus_mode = Control.FOCUS_NONE
	checkbox.size_flags_horizontal = Control.SIZE_EXPAND
	checkbox.text = "On"
	
	checkbox.toggled.connect(func(enabled):
		print_rich("[color=#888b90]Arky Addon: Set process_mode[/color]")
		print_rich("[color=#888b90]Arky Addon: Toggle Visible if was visible[/color]")

		object.set_meta("arky_enabled", enabled)
		#If is not visible when enabled
		if not enabled:
			visibleStateBeforeChange=object.visible
			object.visible=enabled

		if enabled:
			object.visible=visibleStateBeforeChange

		object.set_process(enabled)
		object.set_physics_process(enabled)
		object.process_mode=Node.PROCESS_MODE_INHERIT if enabled else Node.PROCESS_MODE_DISABLED
	)

	return checkbox