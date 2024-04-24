extends Node2D

var shores:Array[Node]
var shorescene=PackedScene
# Called when the node enters the scene tree for the first time.
func _ready():
	shorescene=preload("res://shore.tscn")
	Init(10) # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func Init(number):
	
	for s in number:
		var shore=shorescene.instantiate();
		var ass=shore.children("Container")
		
