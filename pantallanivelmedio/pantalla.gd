extends Node2D


const G_P = 4
const G_M = 0
const G_N = 0
var niv = 0
export (PackedScene) var gema
export (PackedScene) var mal


func _ready():
	randomize()
	OS.center_window()
	spawn_gema()

func _process(delta):
	if $contenedordegema.get_child_count() == 0:
		niv += 1
		var Au = AudioStreamPlayer.new()
		Au.stream = load("res://assets/audio/Level.wav")
		add_child(Au)
		Au.play()
		spawn_gema()
		spawn_mal()

	
	
func spawn_gema():
	for index in range(G_P + niv):
		var gemas = gema.instance()
		gemas.position = Vector2(rand_range(0, 470), rand_range(0,700))
		$contenedordegema.add_child(gemas)

func spawn_mal():
	for index in range(G_M + 1):
		var malo = mal.instance()
		malo.position = Vector2(rand_range(0, 470), rand_range(0,700))
		$contenedordemalo.add_child(malo)
		
func spawn_mal_delete():
	for index in range(G_M - niv-1):
		var malo = mal.instance()
		malo.position = Vector2(rand_range(0, 470), rand_range(0,700))
		$contenedordemalo.add_child(malo)
