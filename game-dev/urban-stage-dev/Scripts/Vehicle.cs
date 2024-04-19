using Godot;
using System;

public enum VehicleType {
	Car = 0,
	Truck = 1,
	Van = 2,
	Motorcycle = 3
}

public partial class Vehicle : Node2D
{
	
	private VehicleType vehicleType;
	
	// Amount of carbone emitted each "step" during gameplay
	private float carbonEmission;
	
	// Amount of noise pollution emitted each "step" during gameplay
	private float noisePollution;
	
	// Start/Awake
	public override void _Ready()
	{
		// Temp defaulting values, need to actually set these
		// values when the GameManager creates a Vehicle
		vehicleType = VehicleType.Car;
		carbonEmission = 2;
		noisePollution = 1;
	}

	// Update
	public override void _Process(double delta)
	{
	}
}
