extends KinematicCharacter2D

onready var main_attack = $Sprite/MainAttackBox/CollisionShape2D
onready var second_attack = $Sprite/SecondAttackBox/CollisionShape2D
func _on_HurtBox_on_take_damage(damage):
	take_damage(damage)


func attack():
	main_attack.disabled = false
	yield(get_tree().create_timer(0.2),"timeout")
	main_attack.disabled = true
