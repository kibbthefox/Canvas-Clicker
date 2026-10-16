extends Node2D


#func on_click():
	#if self.name == "upgradesarea":
		#$skins.add_theme_color_override("font_color", Color.BLACK)
		#$"../../skins".get_theme_stylebox("normal").bg_color = Color(1.0, 1.0, 1.0, 1.0)
	#if self.name == "skinsarea":
		#$skins.add_theme_color_override("font_color", Color.BLACK)
		#$"../../upgrades".get_theme_stylebox("normal").bg_color = Color(1.0, 1.0, 1.0, 1.0)


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
