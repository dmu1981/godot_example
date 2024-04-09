extends Node3D

@onready var spotLight = $"SpotLight3D"
var totalTime = 0.0

# Called when the node enters the scene tree for the first time.
func _ready():
	totalTime = 0.0
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	totalTime += delta
	
	var phase = totalTime 
	var targetPos = Vector3(cos(phase), 0.0, sin(phase))
	spotLight.transform = spotLight.transform.looking_at(targetPos, Vector3(0,1,0))
	pass
