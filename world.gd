extends Node


var point = 0

# Called when the node enters the scene tree for the first time.
func _ready():
#	$coin.connect("brain_keambil", self,"_on_TambahPoint")
 # Replace with function body.
	var kump_coins
	kump_coins = $coins.get_children()
	$Coinjml.UpdatePoint(point)
#	for i in range (0, kump_coins.size()):
#		print(kump_coins[i].name)

	for coin in kump_coins :
		coin.connect("brain_keambil",self,"_on_TambahPoint")



func _on_TambahPoint():
	point += 10
	$"/root/VarPoint".point = point
	$Coinjml.UpdatePoint(point)
	print(point) # Replace with function body.
