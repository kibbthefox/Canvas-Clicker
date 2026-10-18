extends Button

var bought2:bool = false
var bought3:bool = false
var bought4:bool = false
var hovering:bool = false


func _on_mouse_entered() -> void:
	hovering = true
func _on_mouse_exited() -> void:
	hovering = false

func _on_button_down() -> void:
	self.position.y += 2
func _on_button_up() -> void:
	self.position.y -= 2


func _process(_delta: float) -> void:
	if self.name == "buy2":
		if Gl.points >= 300 and bought2 == false:
			self.add_theme_stylebox_override("focus",load("res://Assets/clicker.tres"))
			self.add_theme_stylebox_override("hover_pressed",load("res://Assets/clicker.tres"))
			self.add_theme_stylebox_override("hover",load("res://Assets/clicker.tres"))
			self.add_theme_stylebox_override("pressed",load("res://Assets/clicker.tres"))
			self.add_theme_stylebox_override("normal",load("res://Assets/clicker.tres"))
			if Input.is_action_just_pressed("left") and hovering == true:
				Gl.unroundedpoints -= 300
				self.text = "USE"
				$"../price2".text = "owned"
				bought2 = true
		elif bought2 == false:
			self.add_theme_stylebox_override("focus",load("res://Assets/off.tres"))
			self.add_theme_stylebox_override("hover_pressed",load("res://Assets/off.tres"))
			self.add_theme_stylebox_override("hover",load("res://Assets/off.tres"))
			self.add_theme_stylebox_override("pressed",load("res://Assets/off.tres"))
			self.add_theme_stylebox_override("normal",load("res://Assets/off.tres"))
		elif bought2 == true:
			if Input.is_action_just_pressed("left") and hovering == true:
				Gl.skin = 2
			if Gl.skin == 2 or Gl.skin == 21:
				$"../mode".visible = true
				$"../modeshadow".visible = true
				self.add_theme_stylebox_override("focus",load("res://Assets/off.tres"))
				self.add_theme_stylebox_override("hover_pressed",load("res://Assets/off.tres"))
				self.add_theme_stylebox_override("hover",load("res://Assets/off.tres"))
				self.add_theme_stylebox_override("pressed",load("res://Assets/off.tres"))
				self.add_theme_stylebox_override("normal",load("res://Assets/off.tres"))
			else:
				$"../mode".visible = false
				$"../modeshadow".visible = false
				self.add_theme_stylebox_override("focus",load("res://Assets/clicker.tres"))
				self.add_theme_stylebox_override("hover_pressed",load("res://Assets/clicker.tres"))
				self.add_theme_stylebox_override("hover",load("res://Assets/clicker.tres"))
				self.add_theme_stylebox_override("pressed",load("res://Assets/clicker.tres"))
				self.add_theme_stylebox_override("normal",load("res://Assets/clicker.tres"))
	if self.name == "buy1":
		if Input.is_action_just_pressed("left") and hovering == true:
			Gl.skin = 1
		if Gl.skin == 1:
			self.add_theme_stylebox_override("focus",load("res://Assets/off.tres"))
			self.add_theme_stylebox_override("hover_pressed",load("res://Assets/off.tres"))
			self.add_theme_stylebox_override("hover",load("res://Assets/off.tres"))
			self.add_theme_stylebox_override("pressed",load("res://Assets/off.tres"))
			self.add_theme_stylebox_override("normal",load("res://Assets/off.tres"))
		else:
			self.add_theme_stylebox_override("focus",load("res://Assets/clicker.tres"))
			self.add_theme_stylebox_override("hover_pressed",load("res://Assets/clicker.tres"))
			self.add_theme_stylebox_override("hover",load("res://Assets/clicker.tres"))
			self.add_theme_stylebox_override("pressed",load("res://Assets/clicker.tres"))
			self.add_theme_stylebox_override("normal",load("res://Assets/clicker.tres"))
	if self.name == "mode":
		if Input.is_action_just_pressed("left") and hovering == true:
			Gl.skin = 21
	if self.name == "buy3":
		if Gl.points >= 400 and bought3 == false:
			self.add_theme_stylebox_override("focus",load("res://Assets/clicker.tres"))
			self.add_theme_stylebox_override("hover_pressed",load("res://Assets/clicker.tres"))
			self.add_theme_stylebox_override("hover",load("res://Assets/clicker.tres"))
			self.add_theme_stylebox_override("pressed",load("res://Assets/clicker.tres"))
			self.add_theme_stylebox_override("normal",load("res://Assets/clicker.tres"))
			if Input.is_action_just_pressed("left") and hovering == true:
				bought3 = true
				Gl.unroundedpoints -= 400
				self.text = "USE"
				$"../price3".text = "owned"
		elif bought3 == false:
			self.add_theme_stylebox_override("focus",load("res://Assets/off.tres"))
			self.add_theme_stylebox_override("hover_pressed",load("res://Assets/off.tres"))
			self.add_theme_stylebox_override("hover",load("res://Assets/off.tres"))
			self.add_theme_stylebox_override("pressed",load("res://Assets/off.tres"))
			self.add_theme_stylebox_override("normal",load("res://Assets/off.tres"))
		elif bought3 == true:
			if Input.is_action_just_pressed("left") and hovering == true:
				Gl.skin = 3
			if Gl.skin == 3:
				self.add_theme_stylebox_override("focus",load("res://Assets/off.tres"))
				self.add_theme_stylebox_override("hover_pressed",load("res://Assets/off.tres"))
				self.add_theme_stylebox_override("hover",load("res://Assets/off.tres"))
				self.add_theme_stylebox_override("pressed",load("res://Assets/off.tres"))
				self.add_theme_stylebox_override("normal",load("res://Assets/off.tres"))
			else:
				self.add_theme_stylebox_override("focus",load("res://Assets/clicker.tres"))
				self.add_theme_stylebox_override("hover_pressed",load("res://Assets/clicker.tres"))
				self.add_theme_stylebox_override("hover",load("res://Assets/clicker.tres"))
				self.add_theme_stylebox_override("pressed",load("res://Assets/clicker.tres"))
				self.add_theme_stylebox_override("normal",load("res://Assets/clicker.tres"))
	if self.name == "buy4":
		if Gl.points >= 500 and bought4 == false:
			self.add_theme_stylebox_override("focus",load("res://Assets/clicker.tres"))
			self.add_theme_stylebox_override("hover_pressed",load("res://Assets/clicker.tres"))
			self.add_theme_stylebox_override("hover",load("res://Assets/clicker.tres"))
			self.add_theme_stylebox_override("pressed",load("res://Assets/clicker.tres"))
			self.add_theme_stylebox_override("normal",load("res://Assets/clicker.tres"))
			if Input.is_action_just_pressed("left") and hovering == true:
				bought4 = true
				Gl.unroundedpoints -= 500
				self.text = "USE"
				$"../price4".text = "owned"
		elif bought4 == false:
			self.add_theme_stylebox_override("focus",load("res://Assets/off.tres"))
			self.add_theme_stylebox_override("hover_pressed",load("res://Assets/off.tres"))
			self.add_theme_stylebox_override("hover",load("res://Assets/off.tres"))
			self.add_theme_stylebox_override("pressed",load("res://Assets/off.tres"))
			self.add_theme_stylebox_override("normal",load("res://Assets/off.tres"))
		elif bought4 == true:
			if Input.is_action_just_pressed("left") and hovering == true:
				Gl.skin = 4
			if Gl.skin == 4:
				self.add_theme_stylebox_override("focus",load("res://Assets/off.tres"))
				self.add_theme_stylebox_override("hover_pressed",load("res://Assets/off.tres"))
				self.add_theme_stylebox_override("hover",load("res://Assets/off.tres"))
				self.add_theme_stylebox_override("pressed",load("res://Assets/off.tres"))
				self.add_theme_stylebox_override("normal",load("res://Assets/off.tres"))
			else:
				self.add_theme_stylebox_override("focus",load("res://Assets/clicker.tres"))
				self.add_theme_stylebox_override("hover_pressed",load("res://Assets/clicker.tres"))
				self.add_theme_stylebox_override("hover",load("res://Assets/clicker.tres"))
				self.add_theme_stylebox_override("pressed",load("res://Assets/clicker.tres"))
				self.add_theme_stylebox_override("normal",load("res://Assets/clicker.tres"))
