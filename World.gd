extends Node

export (PackedScene) var Mob

func _ready():
	randomize()


func _on_MobTimer_timeout():
	# Choose a random location on Path2D.
	$MobPath/MobSpawnLocation.set_offset(randi())
	# Create a Mob instance and add it to the scene.
	var mob = Mob.instance()
	add_child(mob)
	mob.position = $MobPath/MobSpawnLocation.position
