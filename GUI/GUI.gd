extends CanvasLayer

func update_score(player, score):
	var score_label = get_node("Container/Banner/HBoxContainer/Player%sScore" % player)
	score_label.text = str(score)
