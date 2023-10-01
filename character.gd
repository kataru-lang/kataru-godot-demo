@tool
extends Node
class_name MyCharacter

var kataru_name: String
var kataru_namespace: String = Kataru.Namespaces.Global


func _get_property_list():
	return [
		Kataru.Characters.property("kataru_name"), Kataru.Namespaces.property("kataru_namespace")
	]


# Called when the node enters the scene tree for the first time.
func _ready():
	print("Ready character")
	Kataru.dialogue.connect(self._on_dialogue)
	Kataru.register(
		self.set_animator_trigger, Kataru.Commands.character_set_animator_trigger, self.kataru_name
	)


func _on_dialogue(char_name: String, text: String, _attributes: Array):
	if self.kataru_name == char_name:
		print(char_name, ": ", text)


func set_animator_trigger(clip: String):
	print(self.kataru_name, ".set_animator_trigger(", clip, ")")
