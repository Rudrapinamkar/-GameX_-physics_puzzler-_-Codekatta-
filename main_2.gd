extends Node2D
@onready var label_2: Label = $CanvasLayer/Label2
var bata=0
func _ready() -> void:
	pass # Replace with function body.
func _process(delta: float) -> void:
	if Global.Data>=6:
		get_tree().change_scene_to_file("res://story.tscn")
