extends Area2D

var holder
signal on_take_damage(damage)

func take_damage(damage):
	print("taking damage ", damage)
	emit_signal("on_take_damage", damage)
