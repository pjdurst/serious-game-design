extends Node3D

var health : float;
# Fish closer to front of array are more likely to be fished 
var fishArray : Array[Node]; 
var fishScene: PackedScene

func _init():
	fishScene = preload("res://fish_entity.tscn")
	Init(100);

# Initialize this ocean node according to a game manager 
func Init(numFish : int):
	health = 100.0; 
	
	# Spawn random fish 
	var rng = RandomNumberGenerator.new();
	for n in numFish:
		var fish = fishScene.instantiate();
		
		var fishType = randi_range(0, 3);
		fish.Init(fishType, self);
		
		fishArray.append(fish);
	
	# Testing movement 
	for fish in fishArray:
		fish.TryMove();
	
	# Testing fishing 
	Fish();

# Remove a fish from this ocean node if possible and returns food worth 
func Fish():
	if(fishArray.size ( ) > 0) : 
		# Set fish to death 
		var topFish = fishArray.pop_front();
		topFish.Perish();
		return topFish.GetFoodWorth();
	return 0;

# When a fish wants to move up the array list 
func FishRequestToMove(fish : Node):
	var index = fishArray.find(fish);
	
	if(index == -1):
		return;
	
	var desiredSwap = randi_range(index + 1, fishArray.size ( ) - 1);
	if(desiredSwap >= fishArray.size ( )):
		return;
	
	var hold = fishArray[desiredSwap];
	fishArray[desiredSwap] = fish;
	fishArray[index] = hold;
	
	print("Swapped fish at " + str(index) + " to " + str(desiredSwap));

# Number of fish occupying this ocean node 
func GetFishCount():
	return fishArray.size();

# Total amount of food worth in this ocean node 
func GetFoodCount():
	var count : float;
	for item in fishArray:
		count += item.GetFoodWorth();
	return count;
