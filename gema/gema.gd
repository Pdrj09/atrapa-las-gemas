extends Area2D


func _ready():
	$Tween.interpolate_property(
		$gema,
		"scale",
		$gema.scale,
		$gema.scale * 3,
		0.5,Tween.TRANS_ELASTIC,
		Tween.EASE_IN_OUT
	)



func pickup():
	$Tween.start()
	#yield($Tween, "tween_completed")
	
func _on_Tween_tween_completed(object, key):
	queue_free()
