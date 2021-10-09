extends KinematicBody2D

var velocidade = 600
var velocity = Vector2.ZERO

func _ready():
	randomize()
	velocity.x = [-1,1][randi() % 2]
	velocity.y = [-0.8,0.8][randi() % 2]

func _physics_process(delta):
	var objeto_colisao = move_and_collide(velocity * velocidade * delta)
	if objeto_colisao:
		velocity = velocity.bounce(objeto_colisao.normal)

func resetarBola():
	velocidade = 600
	velocity.x = [-1,1][randi() % 2]
	velocity.y = [-0.7,0.7][randi() % 2]
