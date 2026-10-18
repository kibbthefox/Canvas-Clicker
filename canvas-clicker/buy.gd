extends Button

var hovering:bool = false
var pointarray1:Array = [50,120,200,320,440,560,680,800,950,1150,1350,1550,1750,2000,2250,2550,2900,3200,3500,3800,4100,4400,4700,5000,6000,7000,8000,9000,10000,1000000000,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
var pointarray2:Array = [150,200,250,300,350,400,500,600,700,800,900,1000,2100,2250,2400,2550,2700,2850,3000,3300,3600,3900,4200,4600,5000,6000,7000,8000,9000,10000,1000000000,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
var pointarray3:Array = [625,1250,1875,2500,3500,4500,6000,7500,9000,10500,12000,14000,16000,18000,20000,22000,24000,26000,28000,30000,5000000,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]


func _on_mouse_entered() -> void:
	hovering = true
func _on_mouse_exited() -> void:
	hovering = false

func _on_button_down() -> void:
	self.position.y += 2
func _on_button_up() -> void:
	self.position.y -= 2


func _process(_delta: float) -> void:
	if self.name == "buy":
		if Gl.points >= Gl.price1:
			self.add_theme_stylebox_override("focus",load("res://Assets/clicker.tres"))
			self.add_theme_stylebox_override("hover_pressed",load("res://Assets/clicker.tres"))
			self.add_theme_stylebox_override("hover",load("res://Assets/clicker.tres"))
			self.add_theme_stylebox_override("pressed",load("res://Assets/clicker.tres"))
			self.add_theme_stylebox_override("normal",load("res://Assets/clicker.tres"))
			if Input.is_action_just_pressed("left") and hovering == true:
				Gl.unroundedpoints -= pointarray1[Gl.level1]
				Gl.level1 += 1
				Gl.clicks += 1
				Gl.price1 = pointarray1[Gl.level1]
				$"../lvl".text = "lvl " + str(Gl.level1) +"    "
		else:
			self.add_theme_stylebox_override("focus",load("res://Assets/off.tres"))
			self.add_theme_stylebox_override("hover_pressed",load("res://Assets/off.tres"))
			self.add_theme_stylebox_override("hover",load("res://Assets/off.tres"))
			self.add_theme_stylebox_override("pressed",load("res://Assets/off.tres"))
			self.add_theme_stylebox_override("normal",load("res://Assets/off.tres"))
	if self.name == "buy2":
		if Gl.points >= Gl.price2:
			self.add_theme_stylebox_override("focus",load("res://Assets/clicker.tres"))
			self.add_theme_stylebox_override("hover_pressed",load("res://Assets/clicker.tres"))
			self.add_theme_stylebox_override("hover",load("res://Assets/clicker.tres"))
			self.add_theme_stylebox_override("pressed",load("res://Assets/clicker.tres"))
			self.add_theme_stylebox_override("normal",load("res://Assets/clicker.tres"))
			if Input.is_action_just_pressed("left") and hovering == true:
				Gl.unroundedpoints -= pointarray2[Gl.level2]
				Gl.level2 += 1
				Gl.cps += 1
				Gl.price2 = pointarray2[Gl.level2]
				$"../lvl2".text = "lvl " + str(Gl.level2) +"    "
		else:
			self.add_theme_stylebox_override("focus",load("res://Assets/off.tres"))
			self.add_theme_stylebox_override("hover_pressed",load("res://Assets/off.tres"))
			self.add_theme_stylebox_override("hover",load("res://Assets/off.tres"))
			self.add_theme_stylebox_override("pressed",load("res://Assets/off.tres"))
			self.add_theme_stylebox_override("normal",load("res://Assets/off.tres"))
	if self.name == "buy3":
		if Gl.points >= Gl.price3:
			self.add_theme_stylebox_override("focus",load("res://Assets/clicker.tres"))
			self.add_theme_stylebox_override("hover_pressed",load("res://Assets/clicker.tres"))
			self.add_theme_stylebox_override("hover",load("res://Assets/clicker.tres"))
			self.add_theme_stylebox_override("pressed",load("res://Assets/clicker.tres"))
			self.add_theme_stylebox_override("normal",load("res://Assets/clicker.tres"))
			if Input.is_action_just_pressed("left") and hovering == true:
				Gl.unroundedpoints -= pointarray3[Gl.level3]
				Gl.level3 += 1
				Gl.multiplier += 0.1
				Gl.price3 = pointarray3[Gl.level3]
				$"../lvl3".text = "lvl " + str(Gl.level3) +"    "
		else:
			self.add_theme_stylebox_override("focus",load("res://Assets/off.tres"))
			self.add_theme_stylebox_override("hover_pressed",load("res://Assets/off.tres"))
			self.add_theme_stylebox_override("hover",load("res://Assets/off.tres"))
			self.add_theme_stylebox_override("pressed",load("res://Assets/off.tres"))
			self.add_theme_stylebox_override("normal",load("res://Assets/off.tres"))
