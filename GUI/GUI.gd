extends CanvasLayer

func update_score(player, score):
	var score_label = get_node("Container/Banner/HBoxContainer/Player%sScore" % player)
	score_label.text = str(score)


func _on_Button_pressed():
	get_tree().reload_current_scene()
	
func game_over(player):
	var label = $Popup/VBoxContainer/Label
	label.text = ("Player " + str(player) + "wins!")
	$Popup.popup_centered()


