extends Area2D

var target

func _on_AttackBox_area_entered(area):
	if area.is_in_group("HurtBox") and owner.get_groups() != area.owner.get_groups():
		target = area
		target.take_damage(owner.damage)
	pass # Replace with function body.
