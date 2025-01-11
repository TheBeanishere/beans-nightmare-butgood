drawalpha = 1
lifetime = 0
amount = instance_number(obj_textpopup)
if (amount > 5){
	instance_destroy(self)
}