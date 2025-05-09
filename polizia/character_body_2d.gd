extends CharacterBody2D
 
const speed:=200
var v: Vector2

func _physics_process(delta: float) -> void:
	velocity=speed*v
	move_and_slide()
	
func _unhandled_input(event: InputEvent) -> void:
	v.x = Input.get_axis('L','R')
	v.y = Input.get_axis('U','D')
	v=v.normalized()
	
	
