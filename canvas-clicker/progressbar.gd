extends Sprite2D


func _process(_delta: float) -> void:
	if self.name == "progressbar1":
		self.scale.x = Gl.cappoints1 * 67.428 / Gl.price1
	if self.name == "progressbar2":
		self.scale.x = Gl.cappoints2 * 67.428 / Gl.price2
	if self.name == "progressbar3":
		self.scale.x = Gl.cappoints3 * 67.428 / Gl.price3
