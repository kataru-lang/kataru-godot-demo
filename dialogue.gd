extends Node

var is_run: bool = false


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if !self.is_run:
		Kataru.choices.connect(_on_choices)
		Kataru.run("Start")
		Kataru.next("")
		Kataru.next("")
		Kataru.next("Yes")
		Kataru.next("")
	self.is_run = true


func _on_choices(choices: Array, _timeout: float):
	for choice in choices:
		print("Choice: ", choice)
