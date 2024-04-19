extends Container
var pollution
var text
var garbage

# Called when the node enters the scene tree for the first time.
func _ready():
	pollution=$"../../Pollution";
	text =$"../../RichTextLabel"
	garbage=$"../../Garbage"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass


func _on_mouse_entered():
	pollution.pollution;
	text.text="";
	text.text="pollution:"+str(pollution.pollution)+"\ngarbage:"+str(garbage.garbage);


func _on_mouse_exited():
	text.text="";
