extends Node


var patch_path = "patches/"


# Called when the node enters the scene tree for the first time.
func _ready():
	if OS.is_debug_build():
		print("Lets ignore patching in the editor")
		return

	var dir = Directory.new()
	if dir.open(patch_path) == OK:
		dir.list_dir_begin(true, true)
		var file_name = dir.get_next()
		while file_name != "":
			if !dir.current_is_dir():
				if file_name.get_extension() == "pck":
					ProjectSettings.load_resource_pack(patch_path, file_name)
					
			file_name = dir.get_next()
			
	get_tree().change_scene("res://scenes/amin.tscn")
