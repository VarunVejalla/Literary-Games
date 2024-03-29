extends CharacterBody2D
var gravity : Vector2
@export var jump_height : float ## How high should they jump?
@export var movement_speed : float ## How fast can they move?
@export var horizontal_air_coefficient : float ## Should the player move more slowly left and right in the air? Set to zero for no movement, 1 for the same
@export var speed_limit : float ## What is the player's max speed? 
@export var friction : float ## What friction should they experience on the ground?

# Called when the node enters the scene tree for the first time.
func _ready():
	# sets the gravity vector (straight down)
	gravity = Vector2(0, 100)
	pass # Replace with function body.


func _get_input():
	if is_on_floor():
		# if you're on the floor, and the input is to go left or right, you add accordingly to the velocity accordingly
		# if the input's to jump, you add a vector pointing up to the velocity
		if Input.is_action_pressed("move_left"):
			velocity += Vector2(-movement_speed,0)

		if Input.is_action_pressed("move_right"):
			velocity += Vector2(movement_speed,0)

		if Input.is_action_just_pressed("jump"): # Jump only happens when we're on the floor (unless we want a double jump, but we won't use that here)
			velocity += Vector2(1,-jump_height)

	if not is_on_floor():
		# if you're not on the floor (e.g. you're in the air after having jumped), same as on the floor, but apply the air coefficient
		# restricts horizontal movement while in the air (physical interpretation - nothing to push off of)
		if Input.is_action_pressed("move_left"):
			velocity += Vector2(-movement_speed * horizontal_air_coefficient,0)

		if Input.is_action_pressed("move_right"):
			velocity += Vector2(movement_speed * horizontal_air_coefficient,0)

func _limit_speed():
	# If moving horizontally too fast (i.e. moving faster than speed limit), cap speed limit
	# seems like it'd be more readable to say velocity.x = speed_limit or velocity.x = -speed_limit
	if velocity.x > speed_limit:
		velocity = Vector2(speed_limit, velocity.y)

	if velocity.x < -speed_limit:
		velocity = Vector2(-speed_limit, velocity.y)

func _apply_friction():
	# looks at your friction coefficient and applies friction to your corresponding movement if you're on the ground
	if is_on_floor() and not (Input.is_action_pressed("move_left") or Input.is_action_pressed("move_right")):
		velocity -= Vector2(velocity.x * friction, 0)
		if abs(velocity.x) < 5:
			velocity = Vector2(0, velocity.y) # if the velocity in x gets close enough to zero, we set it to zero

func _apply_gravity():
	# just adds a gravity vector, pointing straight down
	if not is_on_floor():
		velocity += gravity

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	# does all the phsyics processing steps
	_get_input()
	_limit_speed()
	_apply_friction()
	_apply_gravity()

	move_and_slide()
	pass
