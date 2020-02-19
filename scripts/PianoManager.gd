extends Node2D

func _ready():
	pass

func play_notes(notes):
	""" array of notes -> [60, 2] -> number and duration on seconds """
	for note in notes:
		var note_number = str(note[0])
		var duration = note[1]
		
		get_node("key" + note_number).key_on(duration)