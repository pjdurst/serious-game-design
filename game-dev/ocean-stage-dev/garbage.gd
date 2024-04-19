extends Node2D
var garbage=0;

var time=0
var GarbageWaitTime=10
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time+=delta
	if time>=GarbageWaitTime:
		garbage+=1;
		time=0
	
	
