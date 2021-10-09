extends KinematicBody2D

var velocidade = 400

func _ready():
	Serial.connect("sobe", self, "_on_sobe")
	Serial.connect("desce", self, "_on_desce")

func _on_sobe():
	var velocity = Vector2.ZERO
	velocity.y -=1
	print("Sobe")
	move_and_slide(velocity * velocidade)

func _on_desce():
	var velocity = Vector2.ZERO
	velocity.y +=1
	print("Desce")
	move_and_slide(velocity * velocidade)
