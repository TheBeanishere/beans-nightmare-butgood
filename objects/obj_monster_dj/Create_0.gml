image_xscale = 0.25
image_yscale = 0.25

randomize()
var _spot = instance_find(obj_djpoint,random(instance_number(obj_djpoint)))
originx = _spot.x
originy = _spot.y
x = _spot.x
y = _spot.y
spawntime = irandom_range(840, 1680)
movetime = irandom_range(300, 450)
stuntimer = 0

soundemitter = audio_emitter_create()
audio_emitter_falloff(soundemitter, 500, 1000, 1)

active = false
attacking = false

transanim = noone