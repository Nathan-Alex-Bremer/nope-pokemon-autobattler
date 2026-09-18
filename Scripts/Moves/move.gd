extends Node
class_name Move

# Variables

var owning_pokemon: Pokemon
@export var move_name: StringName
@export var move_type: GameState.types
@export var combat_type: int # TODO: Make an enum for phys/spec/status
@export var base_power: int = 0
@export var fire_rate: float = 10.0
var cooldown: float
@export var rate_variance: float = 0.5 # Maximum variance in rate of fire
@export var move_effects: Array[MoveEffect] # Effects to apply to USER
var charging: bool # Checks whether user is in charge mode
@export var charge_time: float = 0.0
@export var charge_speed_modifier: float = 1.0 # Speed modifier for user while charging
@export var charge_effects: Array[MoveEffect] #Effects to apply to user while charging
# TODO: variables for post-finish effects???
@export var prevent_turning: bool = false
@export var disabled: bool = false

# Signals
signal move_finished() # TODO: Pass on?

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
# Implements move effects and actions
func use_move() -> void:
	pass

# Sets cooldown to fire_rate + rate_variance, usually
func set_cooldown() -> void:
	pass
	
# Tells Pokemon move has ended, may need to do other things too
func finish_move() -> void:
	pass
