extends Node2D


func _on_skins_pressed() -> void:
	$upgrades.add_theme_color_override("font_hover_color", Color.BLACK)
	$upgrades.add_theme_color_override("font_hover_pressed_color", Color.BLACK)
	$upgrades.add_theme_color_override("font_color", Color.BLACK)
	$upgrades.add_theme_color_override("font_focus_color", Color.BLACK)
	$upgrades.add_theme_color_override("font_pressed_color", Color.BLACK)
	$skinsbg.visible = true
	$upgradesbg.visible = false
	$skins.add_theme_color_override("font_hover_color", Color.WHITE)
	$skins.add_theme_color_override("font_hover_pressed_color", Color.WHITE)
	$skins.add_theme_color_override("font_color", Color.WHITE)
	$skins.add_theme_color_override("font_focus_color", Color.WHITE)
	$skins.add_theme_color_override("font_pressed_color", Color.WHITE)
	$upgrade1.visible = false
	$upgrade2.visible = false
	$upgrade3.visible = false
	$skins2.visible = true
func _on_upgrades_pressed() -> void:
	$upgrades.add_theme_color_override("font_hover_color", Color.WHITE)
	$upgrades.add_theme_color_override("font__hover_pressed_color", Color.WHITE)
	$upgrades.add_theme_color_override("font_color", Color.WHITE)
	$upgrades.add_theme_color_override("font_focus_color", Color.WHITE)
	$upgrades.add_theme_color_override("font_pressed_color", Color.WHITE)
	$skinsbg.visible = false
	$upgradesbg.visible = true
	$skins.add_theme_color_override("font_hover_color", Color.BLACK)
	$skins.add_theme_color_override("font__hover_pressed_color", Color.BLACK)
	$skins.add_theme_color_override("font_color", Color.BLACK)
	$skins.add_theme_color_override("font_focus_color", Color.BLACK)
	$skins.add_theme_color_override("font_pressed_color", Color.BLACK)
	$upgrade1.visible = true
	$upgrade2.visible = true
	$upgrade3.visible = true
	$skins2.visible = false


func _process(_delta: float) -> void:
	if Gl.skin == 1:
		load("res://Assets/clicker.tres").bg_color = Color("ff6464")
		$bg/Canvas.visible = true
		$bg/bg.visible = true
		$clicker.frame = 0
		$upgrade1/progressbar1.modulate = Color("#000000")
		$upgrade2/progressbar2.modulate = Color("#000000")
		$upgrade3/progressbar3.modulate = Color("#000000")
	else:
		$bg/Canvas.visible = false
		$bg/bg.visible = false
		if $skins2.visible == false:
			$"bg/white1-2".visible = true
			$"bg/white2-2".visible = true
			$"bg/white3-2".visible = true
		else:
			$"bg/white1-2".visible = false
			$"bg/white2-2".visible = false
			$"bg/white3-2".visible = false
		$"bg/white4-2".visible = true
		$"bg/white5-2".visible = true
		$"bg/white6-2".visible = true
		$"bg/white7-2".visible = true
		$"bg/white8-2".visible = true
		$"bg/white9-2".visible = true
	if Gl.skin == 2:
		load("res://Assets/clicker.tres").bg_color = Color("6dd3fc")
		$bg/bg2.visible = true
		$clicker.frame = 1
		$upgrade1/progressbar1.modulate = Color("#ffd6ff")
		$upgrade2/progressbar2.modulate = Color("#ffd6ff")
		$upgrade3/progressbar3.modulate = Color("#ffd6ff")
	else:
		$bg/bg2.visible = false
	if Gl.skin == 21:
		load("res://Assets/clicker.tres").bg_color = Color("6dd3fc")
		$bg/tranbg.visible = true
		$clicker.frame = 1
		$upgrade1/progressbar1.modulate = Color("#ffd6ff")
		$upgrade2/progressbar2.modulate = Color("#ffd6ff")
		$upgrade3/progressbar3.modulate = Color("#ffd6ff")
	else:
		$bg/tranbg.visible = false
	if Gl.skin == 3:
		load("res://Assets/clicker.tres").bg_color = Color("6dd3fc")
		$bg/blahajbg.visible = true
		$bg/blahajwhite.visible = true
		$clicker.frame = 2
		$upgrade1/progressbar1.modulate = Color("#000000")
		$upgrade2/progressbar2.modulate = Color("#000000")
		$upgrade3/progressbar3.modulate = Color("#000000")
	else:
		$bg/blahajbg.visible = false
		$bg/blahajwhite.visible = false
	if Gl.skin == 4:
		load("res://Assets/clicker.tres").bg_color = Color("ff6464")
		$clicker.frame = 3
		$bg/catbg.visible = true
		$upgrade1/progressbar1.modulate = Color("#000000")
		$upgrade2/progressbar2.modulate = Color("#000000")
		$upgrade3/progressbar3.modulate = Color("#000000")
	else:
		$bg/catbg.visible = false
	Gl.points = int(Gl.unroundedpoints)
	if Gl.points <= Gl.price1:
		Gl.cappoints1 = Gl.points
	else:
		Gl.cappoints1 = Gl.price1
	if Gl.points <= Gl.price2:
		Gl.cappoints2 = Gl.points
	else:
		Gl.cappoints2 = Gl.price2
	if Gl.points <= Gl.price3:
		Gl.cappoints3 = Gl.points
	else:
		Gl.cappoints3 = Gl.price3
	$points.text = "  points   "+str(Gl.points)
	$cps.text = "  cps       "+str(Gl.cps)
	$clicks.text = "  clicks   "+str(Gl.clicks)
	$mult.text = "  mult   x"+str(Gl.multiplier)
	$alltimepoints.text = "  all-time points   "+str(int(Gl.unroundedallpoints))
	$alltimeclicks.text = "  all-time clicks     "+str(Gl.allclicks)
	$upgrade1/progress.text = "   "+str(Gl.cappoints1)+" / "+str(Gl.price1)+" until next purchase is available"
	$upgrade2/progress.text = "   "+str(Gl.cappoints2)+" / "+str(Gl.price2)+" until next purchase is available"
	$upgrade3/progress.text = "   "+str(Gl.cappoints3)+" / "+str(Gl.price3)+" until next purchase is available"
