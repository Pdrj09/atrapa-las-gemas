extends Area2D


func _ready():
	pass
#	$Tween.interpolate_property(
#		$malo,
#		"scale"
#		$malo.scale,
#		$malo.scale * 3,
#		0.5,Tween.TRANS_ELASTIC,
#		Tween.EASE_IN_OUT
#	)




func pickups():
	#$Tween.start()
	#yield($Tween, "tween_completed")
	
#func _on_Tween_tween_completed(object, key):
	queue_free()


