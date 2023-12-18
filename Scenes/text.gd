extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var bitmapFont: BitmapFont

# Called when the node enters the scene tree for the first time.
func _ready():
	bitmapFont = BitmapFont.new()
	bitmapFont.add_texture(preload("res://Images/Letters.png"))
	bitmapFont.height = 23
	
	var startC : int = ord("A")
	var endC : int = startC + 57
	var ascii_val
	
	for i in range(startC, endC):
		if(i < 91):
			ascii_val = i
		elif(i == 121):
			ascii_val = 39
		elif(i == 120):
			ascii_val = 63
		elif(i == 119):
			ascii_val = 33
		elif(i == 118):
			ascii_val = 46
		elif(i == 117):
			ascii_val = 32
		else:
			ascii_val = i + 6
		var c = i - 65
		bitmapFont.add_char(ascii_val, 0, Rect2(c*16,0,16,32), Vector2(0, 0), 12)
		
	bitmapFont.add_kerning_pair(ord("a"),ord("b"),4)
	bitmapFont.add_kerning_pair(ord("t"),ord("h"),3)
	bitmapFont.add_kerning_pair(ord("h"),ord("i"),4)
	bitmapFont.add_kerning_pair(ord("i"),ord("s"),5)
	bitmapFont.add_kerning_pair(ord("h"),ord("e"),2)
	bitmapFont.add_kerning_pair(ord("i"),ord("m"),1)
	bitmapFont.add_kerning_pair(ord("s"),ord("h"),2)
	bitmapFont.add_kerning_pair(ord("a"),ord("m"),-2)
	bitmapFont.add_kerning_pair(ord("c"),ord("a"),2)
	bitmapFont.add_kerning_pair(ord("a"),ord("t"),2)
	bitmapFont.add_kerning_pair(ord("e"),ord("y"),2)
	bitmapFont.add_kerning_pair(ord("t"),ord("a"),2)
	bitmapFont.add_kerning_pair(ord("d"),ord("r"),3)
	bitmapFont.add_kerning_pair(ord("r"),ord("e"),2)
	bitmapFont.add_kerning_pair(ord("r"),ord("y"),2)
	bitmapFont.add_kerning_pair(ord("a"),ord("r"),3)
	bitmapFont.add_kerning_pair(ord("n"),ord("i"),5)
	bitmapFont.add_kerning_pair(ord("i"),ord("g"),6)
	bitmapFont.add_kerning_pair(ord("g"),ord("h"),3)
	bitmapFont.add_kerning_pair(ord("h"),ord("t"),3)
	bitmapFont.add_kerning_pair(ord("t"),ord("'"),7)
	bitmapFont.add_kerning_pair(ord("I"),ord("t"),1)
	bitmapFont.add_kerning_pair(ord("'"),ord("s"),4)
	bitmapFont.add_kerning_pair(ord("b"),ord("e"),2)
	bitmapFont.add_kerning_pair(ord("e"),ord("e"),2)
	bitmapFont.add_kerning_pair(ord("e"),ord("n"),1)
	bitmapFont.add_kerning_pair(ord("l"),ord("o"),5)
	bitmapFont.add_kerning_pair(ord("o"),ord("n"),3)
	bitmapFont.add_kerning_pair(ord("n"),ord("g"),2)
	bitmapFont.add_kerning_pair(ord("t"),ord("i"),5)
	bitmapFont.add_kerning_pair(ord("i"),ord("m"),2)
	bitmapFont.add_kerning_pair(ord("s"),ord("i"),4)
	bitmapFont.add_kerning_pair(ord("n"),ord("c"),2)
	bitmapFont.add_kerning_pair(ord("i"),ord("n"),3)
	bitmapFont.add_kerning_pair(ord("c"),ord("e"),2)
	bitmapFont.add_kerning_pair(ord("I"),ord("'"),4)
	bitmapFont.add_kerning_pair(ord("'"),ord("v"),4)
	bitmapFont.add_kerning_pair(ord("v"),ord("e"),2)
	bitmapFont.add_kerning_pair(ord("r"),ord("i"),3)
	bitmapFont.add_kerning_pair(ord("i"),ord("v"),4)
	bitmapFont.add_kerning_pair(ord("o"),ord("u"),2)
	bitmapFont.add_kerning_pair(ord("u"),ord("t"),3)
	bitmapFont.add_kerning_pair(ord("f"),ord("a"),3)
	bitmapFont.add_kerning_pair(ord("o"),ord("t"),3)
	bitmapFont.add_kerning_pair(ord("m"),ord("a"),-1)
	bitmapFont.add_kerning_pair(ord("a"),ord("n"),1)
	bitmapFont.add_kerning_pair(ord("n"),ord("y"),2)
	bitmapFont.add_kerning_pair(ord("p"),ord("e"),2)
	bitmapFont.add_kerning_pair(ord("e"),ord("o"),2)
	bitmapFont.add_kerning_pair(ord("o"),ord("p"),2)
	bitmapFont.add_kerning_pair(ord("p"),ord("l"),4)
	bitmapFont.add_kerning_pair(ord("l"),ord("e"),4)
	bitmapFont.add_kerning_pair(ord("d"),ord("e"),2)
	bitmapFont.add_kerning_pair(ord("a"),ord("d"),1)
	bitmapFont.add_kerning_pair(ord("t"),ord("o"),4)
	bitmapFont.add_kerning_pair(ord("o"),ord("l"),5)
	bitmapFont.add_kerning_pair(ord("l"),ord("d"),3)
	bitmapFont.add_kerning_pair(ord("S"),ord("i"),2)
	bitmapFont.add_kerning_pair(ord("g"),ord("e"),2)
	bitmapFont.add_kerning_pair(ord("e"),ord("r"),2)
	bitmapFont.add_kerning_pair(ord("r"),ord("'"),4)
	bitmapFont.add_kerning_pair(ord("l"),ord("a"),3)
	bitmapFont.add_kerning_pair(ord("a"),ord("c"),2)
	bitmapFont.add_kerning_pair(ord("s"),ord("e"),2)
	bitmapFont.add_kerning_pair(ord("a"),ord("y"),2)
	bitmapFont.add_kerning_pair(ord("e"),ord("s"),2)
	bitmapFont.add_kerning_pair(ord("e"),ord("d"),1)
	bitmapFont.add_kerning_pair(ord("f"),ord("o"),3)
	bitmapFont.add_kerning_pair(ord("o"),ord("r"),3)
	bitmapFont.add_kerning_pair(ord("L"),ord("a"),4)
	bitmapFont.add_kerning_pair(ord("o"),ord("n"),-2)
	bitmapFont.add_kerning_pair(ord("n"),ord("e"),2)
	bitmapFont.add_kerning_pair(ord("r"),ord("o"),2)
	bitmapFont.add_kerning_pair(ord("o"),ord("v"),2)
	bitmapFont.add_kerning_pair(ord("a"),ord("s"),2)
	bitmapFont.add_kerning_pair(ord("a"),ord("l"),3)
	bitmapFont.add_kerning_pair(ord("l"),ord("c"),5)
	bitmapFont.add_kerning_pair(ord("c"),ord("o"),2)
	bitmapFont.add_kerning_pair(ord("o"),ord("h"),2)
	bitmapFont.add_kerning_pair(ord("h"),ord("o"),2)
	bitmapFont.add_kerning_pair(ord("l"),ord("i"),7)
	bitmapFont.add_kerning_pair(ord("i"),ord("c"),5)
	bitmapFont.add_kerning_pair(ord("o"),ord("n"),2)
	bitmapFont.add_kerning_pair(ord("s"),ord("t"),2)
	bitmapFont.add_kerning_pair(ord("l"),ord("l"),7)
	bitmapFont.add_kerning_pair(ord("m"),ord("i"),2)
	bitmapFont.add_kerning_pair(ord("e"),ord("l"),3)
	bitmapFont.add_kerning_pair(ord("Y"),ord("o"),3)
	bitmapFont.add_kerning_pair(ord("u"),ord("p"),1)
	bitmapFont.add_kerning_pair(ord("j"),ord("o"),2)
	bitmapFont.add_kerning_pair(ord("u"),ord("r"),3)
	bitmapFont.add_kerning_pair(ord("a"),ord("h"),2)
	bitmapFont.add_kerning_pair(ord("o"),ord("f"),2)
	bitmapFont.add_kerning_pair(ord("u"),ord("r"),2)
	bitmapFont.add_kerning_pair(ord("a"),ord("v"),1)
	bitmapFont.add_kerning_pair(ord("b"),ord("i"),4)
	bitmapFont.add_kerning_pair(ord("i"),ord("t"),4)
	bitmapFont.add_kerning_pair(ord("W"),ord("e"),1)
	bitmapFont.add_kerning_pair(ord("e"),ord("'"),4)
	bitmapFont.add_kerning_pair(ord("'"),ord("l"),5)
	
	bitmapFont.add_kerning_pair(ord("r"),ord("?"),3)
	
	bitmapFont.add_kerning_pair(ord("s"),ord("."),4)
	bitmapFont.add_kerning_pair(ord("l"),ord("."),4)
	bitmapFont.add_kerning_pair(ord("r"),ord("."),3)
	bitmapFont.add_kerning_pair(ord("."),ord("."),6)
	bitmapFont.add_kerning_pair(ord("t"),ord("."),7)
	bitmapFont.add_kerning_pair(ord("c"),ord("."),3)
	bitmapFont.add_kerning_pair(ord("d"),ord("."),4)
	bitmapFont.add_kerning_pair(ord("p"),ord("."),4)
	bitmapFont.add_kerning_pair(ord("u"),ord("."),4)
	
	bitmapFont.add_kerning_pair(ord("n"),ord(" "),4)
	bitmapFont.add_kerning_pair(ord("y"),ord(" "),4)
	bitmapFont.add_kerning_pair(ord("t"),ord(" "),7)
	bitmapFont.add_kerning_pair(ord("I"),ord(" "),5)
	bitmapFont.add_kerning_pair(ord("m"),ord(" "),5)
	bitmapFont.add_kerning_pair(ord("a"),ord(" "),6)
	bitmapFont.add_kerning_pair(ord("s"),ord(" "),6)
	bitmapFont.add_kerning_pair(ord("e"),ord(" "),7)
	bitmapFont.add_kerning_pair(ord("g"),ord(" "),6)
	bitmapFont.add_kerning_pair(ord("d"),ord(" "),3)
	bitmapFont.add_kerning_pair(ord("o"),ord(" "),6)
	bitmapFont.add_kerning_pair(ord("u"),ord(" "),6)
	bitmapFont.add_kerning_pair(ord("."),ord(" "),3)
	bitmapFont.add_kerning_pair(ord("l"),ord(" "),4)
	
	
	var resource_path: String = "res://MyBitMapFont.res"
	if(ResourceSaver.save(resource_path, bitmapFont) == OK): 
		theme = Theme.new()
		theme.default_font = load(resource_path)
		
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
