extends Area2D

signal pickeds
signal picked
# Declare member variables here. Examples:
var v = Vector2.ZERO
var ve = 500

func _ready():
	OS.center_window()
	position =Vector2()
#Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	v = Vector2.ZERO
	if Input.is_action_pressed("ui_left"):
		v.x += -1
	if Input.is_action_pressed("ui_right"):
		v.x += 1
	if Input.is_action_pressed("ui_up"):
		v.y += -1
	if Input.is_action_pressed("ui_down"):
		v.y += 1
		
	if v.length() > 0:
		v = v.normalized() * ve * delta 
	position += v
	
	if position.x >= 480:
		position.x = 480
	if position.x <= 0:
		position.x = 0
	if position.y >= 720:
		position.y = 720
	if position.y <= 0:
		position.y = 0
	#
	if v.length() != 0:
		$AnimatedSprite.play("run")
		if v.x < 0:
			$AnimatedSprite.flip_h = true
		else:
			$AnimatedSprite.flip_h = false
	else:
		$AnimatedSprite.play("idle")
		


func _on_Jugador_area_entered(area):
	if area.is_in_group("gema"):
		$gema.play()
		emit_signal("picked")
		area.pickup()
	elif area.is_in_group("mal"):
		$malo.play()
		emit_signal("pickeds")
		area.pickups()
