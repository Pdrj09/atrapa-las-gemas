extends Node2D

const B_L = 4
var ni = 0
var trest = 0
var punt = 0
export (PackedScene) var gem


func _ready():
	randomize()
	OS.center_window()
	trest = 30
	$datos.update_tiempo(trest)
	spawn_gem()
	

func _process(delta):
	if $contenedordegema.get_child_count() == 0:
		ni += 1
		var Au = AudioStreamPlayer.new()
		Au.stream = load("res://assets/audio/Level.wav")
		add_child(Au)
		Au.play()
		trest += 5
		spawn_gem()


func spawn_gem():
	for index in range(B_L + ni):
		var gema = gem.instance()
		gema.position = Vector2(rand_range(0, 480), rand_range(0,720))
		$contenedordegema.add_child(gema)



func _on_tiempodejuego_timeout():
	trest -= 1
	$datos.update_tiempo(trest)
	if trest <= 0:
		perdiste()
	$datos.update_tiempo(trest)
	
	

func perdiste():
	$perdiste.play()
	$tiempodejuego.stop()
	

func _on_Jugador_picked():
	$datos.update_puntuacion(punt)
	punt += 1


