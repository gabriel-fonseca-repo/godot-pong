extends KinematicBody2D

var velocidade = 30
var velocity = Vector2.ZERO
var potAnterior = 0

func _ready():
	Serial.connect("potenciometro", self, "_on_potenciometro")

func _on_potenciometro(value):
	print(int(value))
	velocity.y = 0
	if int(value) < 10:
		velocity.y += 2
		move_and_slide(velocity*velocidade)
	if int(value) > 10:
		velocity.y -= 2
		move_and_slide(velocity*velocidade)
		
	potAnterior = int(value)
