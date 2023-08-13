extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	Kataru.choices.connect(_on_choices)
	Kataru.goto_passage("Start")
	Kataru.next("")
	Kataru.next("")
	Kataru.next("")
	Kataru.next("Yes")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_choices(choices: Array, _timeout: float):
	for choice in choices:
		print("Choice: ", choice)
