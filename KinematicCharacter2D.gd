extends KinematicBody2D
class_name KinematicCharacter2D

export var speed = 100.0
export var health = 100.0
export var is_aim_at_mouse = true
var damage = 20
var alive = true
var velocity = Vector2.ZERO



func _process(delta):
	move()
	aim()
	process_character()
	

func move_direction(right, left, up, down):
	return Vector2(
		int(Input.is_action_pressed(right)) - int(Input.is_action_pressed(left)),
		int(Input.is_action_pressed(down)) - int(Input.is_action_pressed(up))
	)

func move(right = "move_right", left="move_left", up="move_up", down="move_down"):
	var direction = move_direction(right, left, up, down)
	velocity = direction.normalized() * speed
	move_and_slide(velocity)
	
func aim():
	if is_aim_at_mouse:
		var target = get_global_mouse_position()
		var angle = get_angle_to(target)
		rotate(angle)

func attack():
	print("HIIIIAAAAA")
	
	
func take_damage(damage):
	print("ouch")
	health -= damage
	
	

func process_character():
	if health <= 0:
		visible = false
	
