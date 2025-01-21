extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	init()

func init():
	angular_speed = i_angular_speed
	scale = i_scale
	radius = 66 + scale.x  * 1000 / 2

@export var i_angular_speed = PI
var angular_speed = i_angular_speed
var radius = 100
#@export var radius = 100
@export var i_scale = Vector2(0.1,0.1)
@export var progresion = 1.042
@export var angle = 0.0


func _process(delta):
	# Actualizamos el ángulo con la velocidad angular
	angle += angular_speed * delta
	# Calculamos la nueva posición en base al ángulo y el radio
	position = Vector2(cos(angle), sin(angle)) * radius


func _on_body_entered(body: Node2D) -> void:
	print(body)
	body.queue_free()
	angular_speed *= progresion
	scale *= progresion
	radius = 66 + scale.x  * 1000 / 2
