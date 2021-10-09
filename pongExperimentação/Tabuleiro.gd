extends Node2D

var pontuacaoJogador = 0
var pontuacaoOponente = 0

func _on_BordaEsquerda_body_entered(body):
	$Bola.position = Vector2(0,0)
	pontuacaoOponente += 1
	get_tree().call_group('Bola','resetarBola')

func _on_BordaDireita_body_entered(body):
	$Bola.position = Vector2(0,0)
	pontuacaoJogador += 1
	get_tree().call_group('Bola','resetarBola')

func _process(delta):
	$Tabuleiro/PontuacaoJogador.text = str(pontuacaoJogador)
	$Tabuleiro/PontuacaoOponente.text = str(pontuacaoOponente)
