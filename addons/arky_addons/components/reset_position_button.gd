class_name ResetPositonButton

static func get_component(object: Variant, undoRedo: EditorUndoRedoManager) -> Button:
	var button = Button.new()
	
	button.text = "Reset"
	button.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	button.pressed.connect(func():
		undoRedo.create_action("Arky addons: Reset Position")
		undoRedo.add_undo_property(object, "position", object.position)
		undoRedo.add_do_property(object, "position", Vector2(0, 0))
		undoRedo.commit_action()
	)

	return button