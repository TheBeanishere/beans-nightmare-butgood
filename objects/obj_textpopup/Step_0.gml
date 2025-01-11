lifetime += 1
if (lifetime > 90){
	drawalpha -= 0.025
}
if(drawalpha = 0){
	instance_destroy(self)
}