extends State

func physics_update(delta: float) -> void:	
	owner.speed = 250
	owner.move()
	if owner.velocity == Vector2.ZERO:
		state_machine.transition_to("Idle")
	if Input.is_action_just_released("run"):
		state_machine.transition_to("Move")
	
	
	
	
