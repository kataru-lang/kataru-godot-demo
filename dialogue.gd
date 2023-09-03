extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	Kataru.choices.connect(_on_choices)
	Kataru.run("Start")
	Kataru.next("")
	Kataru.next("")
	Kataru.next("Yes")
	Kataru.next("")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_choices(choices: Array, _timeout: float):
	for choice in choices:
		print("Choice: ", choice)
