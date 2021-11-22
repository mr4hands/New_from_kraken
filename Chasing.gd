extends State


func physics_update(delta: float) -> void:
	owner.chase(delta)
	if owner.is_attacking:
		state_machine.transition_to("Mob_Attack")


