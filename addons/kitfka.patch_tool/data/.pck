GDPC                                                                                  res://Test.tscn�       �                          res://project.godot�      �                      [gd_scene load_steps=2 format=2]

[ext_resource path="res://Test.gd" type="Script" id=1]

[node name="Control" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}
; Engine configuration file.
; It's best edited using the editor UI and not directly,
; since the parameters that go here are not all obvious.
;
; Format:
;   [section] ; section goes between []
;   param=value ; assign values to parameters

config_version=4

_global_script_classes=[ {
"base": "Resource",
"class": "PatchStamp",
"language": "GDScript",
"path": "res://addons/kitfka.patch_tool/tools/patch_stamp.gd"
} ]
_global_script_class_icons={
"PatchStamp": ""
}

[application]

config/name="Godot Patch Tool"
run/main_scene="res://Test.tscn"
config/icon="res://icon.png"

[editor_plugins]

enabled=PoolStringArray( "kitfka.patch_tool" )

[rendering]

environment/default_environment="res://default_env.tres"
