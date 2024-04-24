extends Container
var pollution
var text
var garbage
var time=0
var Tile_num
# Called when the node enters the scene tree for the first time.
func _ready():
	pollution=$"../../Pollution";
	text =$"../../RichTextLabel"
	garbage=$"../../Garbage"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time+=delta
	if time>=10:
		print("pollution:"+str(pollution.pollution)+"\ngarbage:"+str(garbage.garbage))
		time=0
	if garbage.garbage==10:
		pollution.PollutionEnable==true


func _on_mouse_entered():
	pollution.pollution;
	text.text="";
	text.text="pollution:"+str(pollution.pollution)+"\ngarbage:"+str(garbage.garbage);
	


func _on_mouse_exited():
	text.text="";
