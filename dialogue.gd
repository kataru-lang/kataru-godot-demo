extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	KataruManager.goto_passage("Start")
	KataruManager.next("")
	KataruManager.next("")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
