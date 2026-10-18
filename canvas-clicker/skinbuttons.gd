extends Button

var bought2:bool = false
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
				bought2 = true
				self.text = "USE"
				$"../price2".text = "owned"
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
