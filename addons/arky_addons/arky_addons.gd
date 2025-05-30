@tool
class_name ArkyAddons
extends EditorPlugin

var inspectorPlugin

const INSPECTOR_PLUGIN = preload("res://addons/arky_addons/inspector_plugin.gd")

func _enter_tree():
	inspectorPlugin = INSPECTOR_PLUGIN.new()
	inspectorPlugin.undoRedo = get_undo_redo()
	add_inspector_plugin(inspectorPlugin)

func _exit_tree():
	remove_inspector_plugin(inspectorPlugin)