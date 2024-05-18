extends Node3D

var xr_interface: XRInterface

# Called when the node enters the scene tree for the first time.
func _ready():
	xr_interface = XRServer.find_interface("Native mobile")
	
	if xr_interface and xr_interface.initialize():
		print("OpenXR initialized!")
		get_viewport().use_xr = true
	else:
		print("OpenXR NOT initialized!")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
