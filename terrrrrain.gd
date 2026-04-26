extends StaticBody2D
@onready var col: CollisionPolygon2D = $CollisionPolygon2D
@onready var path: Path2D = $Path2D
@onready var polygon_2d: Polygon2D = $Polygon2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var points=path.curve.get_baked_points()
	
	
	col.polygon=points
	polygon_2d.polygon=points
