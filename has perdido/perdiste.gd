extends Control



func _on_menu_pressed():
	get_tree().change_scene("res://inicio/inicio.tscn")




func _on_juego_pressed():
	get_tree().change_scene("res://pantallanivelmedio/pantalla.tscn")


func _on_sec_nivel_pressed():
	get_tree().change_scene("res://selecionanivel/Nivel.tscn")
	

