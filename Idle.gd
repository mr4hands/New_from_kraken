#Idle.gs
extends State

func enter(_msg:= {}) -> void:
	owner.velocity = Vector2.ZERO
	
func update(delta: float):
	if owner.velocity != Vector2.ZERO:
		state_machine.transition_to("Move")
	if Input.is_action_just_pressed("attack"):
		state_machine.transition_to("Attack")
	if Input.is_action_pressed("run"):
		state_machine.transition_to("Run")
		
	
