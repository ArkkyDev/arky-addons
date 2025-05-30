class_name ResetScaleButton

static func get_component(object: Variant, undoRedo: EditorUndoRedoManager) -> Button:
	var button = Button.new()
	
	button.text = "Reset"
	button.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	button.pressed.connect(func():
		undoRedo.create_action("Arky addons: Reset Scale")
		undoRedo.add_undo_property(object, "scale", object.scale)
		undoRedo.add_do_property(object, "scale", Vector2(1, 1))
		undoRedo.commit_action()
	)

	return button