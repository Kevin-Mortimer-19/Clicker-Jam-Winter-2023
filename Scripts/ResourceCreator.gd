class_name ResourceCreator extends Node

var list = ResourceList

# The type of resource created
var res: int
# The cost of the first resource creator bought
var base_cost: int = 1
# The cost of the next resource creator, accounting for how many have been purchased already
var cost: int = 1
# The amount of resources created by each instance
var output: int = 0
# The time it takes for each instance to create resources
var time: float = 0.0
# Amount of building currently owned
var amount: int = 0
# The resource creator's name
var r_name: String

var button: Button
var timer: Timer
var label: Label

func _init(c, o, t, b, t2, l, n, r):
	base_cost = c
	cost = base_cost
	output = o
	time = t
	button = b
	timer = t2
	timer.wait_time = time
	label = l
	r_name = n
	res = r

func get_cost() -> int:
	return cost

func set_cost(c):
	cost = c

func get_output() -> int:
	return output

func get_time() -> float:
	return time

func get_button() -> Button:
	return button

func get_amount() -> int:
	return amount

func get_timer() -> Timer:
	return timer

func get_label() -> Label:
	return label

func get_name() -> String:
	return r_name

func get_element() -> int:
	return res

func buy() -> int:
	amount += 1
	var current_cost = cost
	cost += base_cost * amount
	return current_cost
