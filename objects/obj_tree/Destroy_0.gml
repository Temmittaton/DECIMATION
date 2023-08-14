con_bossEnd.bossBeaten = true;
instance_create_layer (x, y, "Mobs", obj_tree_cadaver)
ennemyKilled (1250);
audio_play_sound (sfx_tree_die, 1, false);