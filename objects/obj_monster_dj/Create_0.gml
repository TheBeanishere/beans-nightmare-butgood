image_xscale = 0.25
image_yscale = 0.25

originx = x
originy = y

spawntime = irandom_range(420, 840)

soundemitter = audio_emitter_create()
audio_emitter_falloff(soundemitter, 500, 1000, 1)

active = false
attacking = false

transanim = noone