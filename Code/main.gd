@tool
extends Node2D

var PreloadPackScene: PackedScene = preload("res://Scenes/TestScene.tscn")

var PreLoadData: ObjectData = preload("res://Resources/Newdata.tres")

@onready var text_edit: TextEdit = $ButtonHolder/TextEdit


@export var TestData: ObjectData :
	set(Value):
		TestData = Value
		ObjectDataDup = TestData.duplicate()

@export var ObjectDataDup: ObjectData


func  GetGroup(NameOfGroup:String)->Array[Node]:
	
	return get_tree().get_nodes_in_group(NameOfGroup)


func _on_button_pressed() -> void:
	
	print_debug(GetGroup(text_edit.text))


func  MakeNewObjectData()->void:
	var NewData: ObjectData = ObjectData.new()
	
	
	
	
func  GetPackScene(Name:String)->void:
	var NewPackedScene : PackedScene = load(name)
	
	var Scene = NewPackedScene.instantiate()
