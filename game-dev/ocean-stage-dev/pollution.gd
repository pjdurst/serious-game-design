extends Node2D
var pollution=0;
var time=0
var PollutionWaitTime=10

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time+=delta
	if time>=PollutionWaitTime:
		pollution+=1;
		time=0
	