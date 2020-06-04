extends Control



func _ready():
	OS.center_window()

func _on_facil_pressed():
	get_tree().change_scene("res://pantalladenivelfacil/pdjuego.tscn")


func _on_medio_pressed():
	get_tree().change_scene("res://pantallanivelmedio/pantalla.tscn")


func _on_dificil_pressed():
	pass # Replace with function body.
