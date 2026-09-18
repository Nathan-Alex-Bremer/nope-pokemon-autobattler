extends Node
class_name GameState

enum types {
	NORMAL,
	FIRE,
	WATER,
	GRASS,
	ELECTRIC,
	ICE,
	PSYCHIC,
	FIGHTING,
	FLYING,
	ROCK,
	GROUND,
	POISON,
	BUG,
	GHOST,
	DRAGON,
	TYPELESS
}

var type_effectiveness_dict = {
	types.NORMAL: {
		types.ROCK: 0.5,
		types.GHOST: 0.25
	},
	types.FIRE: {
		types.FIRE: 0.5,
		types.WATER: 0.5,
		types.GRASS: 2,
		types.ICE: 2,
		types.ROCK: 0.5,
		types.BUG: 2,
		types.DRAGON: 0.5
	},
	types.WATER: {
		types.FIRE: 2,
		types.WATER: 0.5,
		types.GRASS: 0.5,
		types.ROCK: 2,
		types.GROUND: 2,
		types.DRAGON: 0.5
	},
	types.GRASS: {
		types.FIRE: 0.5,
		types.WATER: 2,
		types.GRASS: 0.5,
		types.FLYING: 0.5,
		types.ROCK: 2,
		types.GROUND: 2,
		types.POISON: 0.5,
		types.BUG: 0.5,
		types.DRAGON: 0.5
	},
	types.ELECTRIC: {
		types.WATER: 2,
		types.GRASS: 0.5,
		types.ELECTRIC: 0.5,
		types.FLYING: 2,
		types.GROUND: 0.25,
		types.DRAGON: 0.5
	},
	types.ICE: {
		types.WATER: 0.5,
		types.GRASS: 2,
		types.ICE: 0.5,
		types.FLYING: 2,
		types.GROUND: 2,
		types.DRAGON: 2
	},
	types.PSYCHIC: {
		types.PSYCHIC: 0.5,
		types.FIGHTING: 2,
		types.POISON: 2
	},
	types.FIGHTING: {
		types.NORMAL: 2,
		types.ICE: 2,
		types.PSYCHIC: 0.5,
		types.FLYING: 0.5,
		types.ROCK: 2,
		types.POISON: 0.5,
		types.BUG: 0.5,
		types.GHOST: 0.25
	},
	types.FLYING: {
		types.GRASS: 2,
		types.ELECTRIC: 0.5,
		types.FIGHTING: 2,
		types.ROCK: 0.5,
		types.BUG: 2
	},
	types.ROCK: {
		types.FIRE: 2,
		types.ICE: 2,
		types.FIGHTING: 0.5,
		types.FLYING: 2,
		types.GROUND: 0.5,
		types.BUG: 2
	},
	types.GROUND: {
		types.FIRE: 2,
		types.GRASS: 0.5,
		types.ELECTRIC: 2,
		types.FLYING: 0.25,
		types.ROCK: 2,
		types.POISON: 2,
		types.BUG: 0.5
	},
	types.POISON: {
		types.GRASS: 2,
		types.ROCK: 0.5,
		types.GROUND: 0.5,
		types.POISON: 0.5,
		types.BUG: 2,
		types.GHOST: 0.5
	},
	types.BUG: {
		types.FIRE: 0.5,
		types.GRASS: 2,
		types.FIGHTING: 0.5,
		types.FLYING: 0.5,
		types.POISON: 2,
		types.GHOST: 0.5
	},
	types.GHOST: {
		types.NORMAL: 0.25,
		types.PSYCHIC: 0.25,
		types.GHOST: 2
	},
	types.DRAGON: {
		types.DRAGON: 2
	}
}

@export var move_list = []

@export var pokemon_list = {}

# Pokemon on each team, maybe?
@export var team_1_pokemon: PackedScene

@export var team_2_pokemon: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func calc_type_effectiveness(attack_type: int, defense_type_1: int, defense_type_2: int) -> float:
	return 1 * type_effectiveness_dict[attack_type][defense_type_1] * type_effectiveness_dict[attack_type][defense_type_2]

# Calculates stat modifier effects for basic stats
func calc_stat_modifier(stage: int) -> float:
	if stage == 0:
		return 1
	elif stage > 0:
		return (float(stage) + 2) / 2 # TODO: Maybe just make stage a float
	else:
		return 2 / (float(stage) + 2)
