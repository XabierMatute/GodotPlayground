extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = Vector2(0, 0)

var angular_speed = PI
var radius = 500
var angle = 0.0


func _process(delta):
	# Actualizamos el ángulo con la velocidad angular
	angle += angular_speed * delta
	# Calculamos la nueva posición en base al ángulo y el radio
	position = Vector2(cos(angle), sin(angle)) * radius
