class_name tracker extends Observer

var singleObserver: tracker

func _private_init(): #private constructor
	pass
	
func getTracker(): #returns the singleton object
	if(singleObserver==null):
		singleObserver=tracker.new()
	return singleObserver

func update(Inputs: String) -> void: #calls the display function
	display(Inputs) # Replace with function body.
 
func display(ouputs: String) -> void: #prints the output
	print(ouputs)
