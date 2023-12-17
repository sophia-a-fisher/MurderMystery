extends Camera2D

export var decay = .2  # How quickly the shaking stops [0, 1].
export var max_offset = Vector2(100, 75)  # Maximum hor/ver shake in pixels.
export var max_roll = 0.1  # Maximum rotation in radians (use sparingly).
export (NodePath) var target  # Assign the node this camera will follow.

var current_trauma = 0.25  # Current shake strength.
var trauma_power = 2.3  # Trauma exponent. Use [2, 3].
var original_trauma = 0.25
onready var noise = OpenSimplexNoise.new()
var noise_y = 0
var base_offset_y = -50;


# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	noise.seed = randi()
	noise.period = 4
	noise.octaves = 2

func add_trauma(amount):
	current_trauma = min(current_trauma + amount, 1.0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#global_position = get_node(target).global_position
	current_trauma = max(current_trauma - decay * delta, 0)
	shake()
	
func shake():
	var amount = pow(current_trauma, trauma_power)
	noise_y += 1
	rotation = max_roll * amount * noise.get_noise_2d(noise.seed, noise_y)
	offset.x = max_offset.x * amount * noise.get_noise_2d(noise.seed*2, noise_y)
	offset.y = base_offset_y + (max_offset.y * amount * noise.get_noise_2d(noise.seed*3, noise_y))


func _on_Timer_timeout():
	current_trauma = original_trauma
