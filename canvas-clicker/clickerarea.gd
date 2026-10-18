extends Area2D

var touching:bool
var time:int = 0


func _on_mouse_entered() -> void:
	touching = true
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
func _on_mouse_exited() -> void:
	touching = false
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)


func _process(_delta: float) -> void:
	if touching == true:
		if Input.is_action_just_pressed("left"):
			Gl.allclicks += 1
			Gl.unroundedpoints += Gl.clicks * Gl.multiplier
			Gl.unroundedallpoints += Gl.clicks * Gl.multiplier
			get_parent().rotation -= PI / 300
			if $"..".scale.y > 0.23:
				$"..".scale.y -= 0.02


func _physics_process(_delta: float) -> void:
	time += 1
	if time > 60:
		Gl.unroundedpoints += Gl.cps * Gl.multiplier
		Gl.unroundedallpoints += Gl.cps * Gl.multiplier
		time = 1
	if $"..".scale.y < 0.314:
		$"..".scale.y += 0.003
