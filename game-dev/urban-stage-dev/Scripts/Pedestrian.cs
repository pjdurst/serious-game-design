using Godot;
using System;

public enum PedestrianState {
	Walking = 0,
	Running = 1,
	Littering = 2,
	Loitering = 3,
	Swimming = 4,
	Working = 5,
	Idle = 6
}

public partial class Pedestrian : Sprite2D
{
	private PedestrianState pedestrianState;
	
	// Percent chance of littering (0-1)
	private float litterChance;
	
	private bool bWearingSunscreen;
	
	// If they're holding a plastic water bottle, straw, ice cream cup, etc
	private bool bHoldingDisposableGood;
	
	// Start/Awake
	public override void _Ready()
	{
		pedestrianState = PedestrianState.Idle;
		litterChance = 0;
		bWearingSunscreen = false;
		bHoldingDisposableGood = true;
	}

	// Update
	public override void _Process(double delta)
	{
	}
}
