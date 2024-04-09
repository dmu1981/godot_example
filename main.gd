extends Node3D

@export var camera: Camera3D
@export var plane: MeshInstance3D
@export var light: SpotLight3D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event is InputEventMouseMotion:
		var from = camera.project_ray_origin(event.position)
		var to = from + camera.project_ray_normal(event.position) * 100
		var cursorPos = Plane(Vector3.UP, plane.transform.origin.y).intersects_ray(from, to)
		
		light.transform = light.transform.looking_at(cursorPos, Vector3(0,1,0))
