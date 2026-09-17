extends Node
class_name GameManager

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# Draws a message to a Label on the battle arena
func draw_message(message: String, message_box: int) -> void:
	pass
	
# Updates the health bar of a Pokemon
func update_health_bar(health_bar: int, change: int) -> void:
	pass

# Updates the UI for things like status effects I think
func update_ui() -> void:
	pass

# Starts simulation
func start_battle() -> void:
	pass
	
# Pauses simulation, displays winner?
func end_battle() -> void:
	pass
	
# Resets battle state
func reset_battle() -> void:
	pass
