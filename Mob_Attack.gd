extends State


func physics_update(delta: float) -> void:
#	print("Mob Attacking state")
	
	if !owner.is_attacking:
		state_machine.transition_to("Chasing")
		
