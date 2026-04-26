extends Label

var has_triggered: bool = false

func _ready() -> void:
	# Ensure the label is invisible to start with
	modulate.a = 0

func _process(_delta: float) -> void:
	# Only start if Global.Data is 1 and we haven't run this yet
	if Global.Data == 1 and not has_triggered:
		run_one_shot_fade()

func run_one_shot_fade() -> void:
	has_triggered = true # Prevents the animation from restarting
	
	var tween = create_tween()
	
	# 1. Fade IN to 1.0 opacity over 2 seconds
	tween.tween_property(self, "modulate:a", 1.0, 2.0)
	
	# 2. Fade OUT to 0.0 opacity over 2 seconds
	tween.tween_property(self, "modulate:a", 0.0, 2.0)
	
	# Optional: Remove the label from the scene once finished to save memory
	tween.finished.connect(queue_free)
