extends KinematicBody2D

var damage = 20
var health = 100.0
var speed = 100.0
var attack_delay = 2
var is_attacking = false
onready var obj = get_parent().get_node("Player")
onready var attack_box = $Sprite/AttackBox/CollisionShape2D
onready var attack_timer = $AttackTimer

func _ready():
	$AnimationPlayer.play("Walk")
func chase(delta):
	var dir = (obj.global_position - global_position).normalized()
	move_and_collide(dir * speed * delta)
	var angle = get_angle_to(obj.global_position)
	rotate(angle)
	
func _on_HurtBox_on_take_damage(damage):
	print("It's just a flesh wound")
	queue_free()
	pass # Replace with function body.
	


func _on_Sensor_body_entered(body):
		if body.is_in_group("Hero"):
			print("sensor activated")
			is_attacking = true
			$AnimationPlayer.play("Attack")
	


func _on_Sensor_body_exited(body):
	if body.is_in_group("Hero"):
		is_attacking = false
		$AnimationPlayer.play("Walk")


