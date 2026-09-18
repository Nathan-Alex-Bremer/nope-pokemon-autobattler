extends Node
class_name Pokemon

# Variables
@export var pokemon_name: StringName
@export var type_1: GameState.types = GameState.types.TYPELESS
@export var type_2: GameState.types = GameState.types.TYPELESS

@export var moves: Array[Move]
@export var movement_styles: Array[MovementStyle]
var current_movement_style: MovementStyle
var team: int

@export var max_hp: int
var curr_hp: int
@export var attack: int
var attack_stage: int = 0
@export var defense: int
var defense_stage: int = 0
@export var sp_attack: int
var sp_attack_stage: int = 0
@export var sp_defense: int
var sp_defense_stage: int = 0
@export var speed: int
var speed_stage: int = 0

var accuracy_stage: int = 0
var evasion_stage: int = 0

var status_effect: MoveEffect # TODO: Make StatusEffect
var applied_effects: Array[MoveEffect]

var current_target: Pokemon # TODO: Should this be something else
var current_move: Move = null
var last_used_move: Move = null
var last_damage: int = 0
var last_damage_type: GameState.types = GameState.types.TYPELESS

# Signals

signal s_take_damage(damaged: Pokemon, damager: Pokemon, amount: int)
signal s_collide_wall(pokemon: Pokemon)
signal s_faint(pokemon: Pokemon)
signal s_change_status_effect(new_status: MoveEffect)

# Functions
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
# Custom functions

# Loops over moves and attempts to use them
func use_move() -> void:
	pass

# Loops over movement styles and attempts to change
func change_movement() -> void:
	pass

# Rotates user to face toward target
func turn_to_target() -> void:
	pass

# Finds new target if target is null
func recalculate_target() -> void:
	pass
	
# Causes user to bounce off wall if collision - could be part of movement style
func bounce() -> void:
	pass

# Damage calculation function
func take_damage() -> void:
	pass

# Fainting functionality
func faint() -> void:
	pass

# Adds a move to the user (for Mimic)
func add_move(new_move: Move) -> void:
	pass

func get_type_1() -> GameState.types:
	return type_1
	
func get_type_2() -> GameState.types:
	return type_2

# Changes the type of the user (for Conversion)
func change_type(new_type: GameState.types) -> void:
	pass

# Forces the use of a selected move (for Mirror Move/Metronome)
func force_use_move(move: Move) -> void:
	pass
	
# Creates new Pokemon and transfers effects/max HP (for Transform)
func transform(new_pokemon: Pokemon) -> void:
	pass

# Adds an effect
func add_effect(new_effect: MoveEffect) -> void:
	pass

# Changes status effect
func change_status_effect(new_status: MoveEffect, force: bool) -> void:
	pass

# Handles tick of effects
func process_effects() -> void:
	pass

# Removes effect from user
func remove_effect(effect: MoveEffect) -> void:
	pass


# Getters/setters

func get_pokemon_name() -> StringName:
	return pokemon_name

func set_pokemon_name(new_name: StringName) -> void:
	pokemon_name = new_name

func get_team() -> int:
	return team

func get_max_hp() -> int:
	return max_hp

func set_max_hp(val: int) -> void:
	max_hp = val
	if curr_hp > max_hp:
		curr_hp = max_hp

func change_max_hp(val: int) -> void:
	max_hp += val
	if curr_hp > max_hp:
		curr_hp = max_hp

func get_curr_hp() -> int:
	return curr_hp

func set_curr_hp(val: int) -> void:
	curr_hp = val

func change_curr_hp(val: int) -> void:
	curr_hp += val

func get_attack() -> int:
	return attack

func set_attack(val: int) -> void:
	attack = val

func change_attack(val: int) -> void:
	attack += val

func get_attack_stage() -> int:
	return attack_stage

func set_attack_stage(val: int) -> void:
	attack_stage = val

func change_attack_stage(val: int) -> void:
	attack_stage += val
	
func get_defense() -> int:
	return defense

func set_defense(val: int) -> void:
	defense = val

func change_defense(val: int) -> void:
	defense += val

func get_defense_stage() -> int:
	return defense_stage

func set_defense_stage(val: int) -> void:
	defense_stage = val

func change_defense_stage(val: int) -> void:
	defense_stage += val

func get_sp_attack() -> int:
	return sp_attack

func set_sp_attack(val: int) -> void:
	sp_attack = val

func change_sp_attack(val: int) -> void:
	sp_attack += val

func get_sp_attack_stage() -> int:
	return sp_attack_stage

func set_sp_attack_stage(val: int) -> void:
	sp_attack_stage = val

func change_sp_attack_stage(val: int) -> void:
	sp_attack_stage += val
	
func get_sp_defense() -> int:
	return sp_defense

func set_sp_defense(val: int) -> void:
	sp_defense = val

func change_sp_defense(val: int) -> void:
	sp_defense += val

func get_sp_defense_stage() -> int:
	return sp_defense_stage

func set_sp_defense_stage(val: int) -> void:
	sp_defense_stage = val

func change_sp_defense_stage(val: int) -> void:
	sp_defense_stage += val
	
func get_speed() -> int:
	return speed

func set_speed(val: int) -> void:
	speed = val

func change_speed(val: int) -> void:
	speed += val

func get_speed_stage() -> int:
	return speed_stage

func set_speed_stage(val: int) -> void:
	speed_stage = val

func change_speed_stage(val: int) -> void:
	speed_stage += val

func get_accuracy_stage() -> int:
	return accuracy_stage

func set_accuracy_stage(val: int) -> void:
	accuracy_stage = val

func change_accuracy_stage(val: int) -> void:
	accuracy_stage += val

func get_evasion_stage() -> int:
	return evasion_stage

func set_evasion_stage(val: int) -> void:
	evasion_stage = val

func change_evasion_stage(val: int) -> void:
	evasion_stage += val
