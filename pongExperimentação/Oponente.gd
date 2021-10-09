extends KinematicBody2D

var velocidade = 400
var bola

func _ready():
	bola = get_parent().find_node("Bola")

func _physics_process(delta):
	move_and_slide(Vector2(0,direcao_bola()) * velocidade)

func direcao_bola():
	if abs(bola.position.y - position.y)  > 25:
		if bola.position.y > position.y: return 1
		else : return -1
	else: return 0
