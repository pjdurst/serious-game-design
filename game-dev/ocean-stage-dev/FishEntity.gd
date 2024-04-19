extends Node3D

var parentNode : Node3D;
var foodWorth : float;

func _init():
	pass;

func Init(fishType : int, parent : Node3D):
	match fishType:
		0: # Tuna 
			foodWorth = 23.545666; 
			print("Initializing fish of type Tuna");
		1: # Whale 
			foodWorth = 100;
			print("Initializing fish of type Whale");
		2: # Coral 
			foodWorth = 1;
			print("Initializing fish of type Coral");
	parentNode = parent;

# Attempts to move to a different location in the ocean node 
func TryMove():
	parentNode.FishRequestToMove(self);

# Removes this fish from the game 
func Perish():
	queue_free();

func GetFoodWorth():
	return foodWorth;
