#include <sourcemod>
#include <sdktools>

#define PLUGIN_VERSION "1.0"

//=================================
//	Infected Classes
//=================================
#define CLASS_SMOKER 1
#define CLASS_BOOMER 2
#define CLASS_HUNTER 3
#define CLASS_SPITTER 4
#define CLASS_JOCKEY 5
#define CLASS_CHARGER 6
#define CLASS_TANK 7
#define CLASS_WITCH 8
#define CLASS_COMMON 9


//=================================
//	Survivor Classes (L4D2)
//=================================
#define CLASS_SURVIVOR_NICK 1
#define CLASS_SURVIVOR_COACH 2
#define CLASS_SURVIVOR_ELLIS 3
#define CLASS_SURVIVOR_ROCHELLE 4

//=================================
//	Survivor Classes (L4D1)
//=================================
#define CLASS_SURVIVOR_BILL 1
#define CLASS_SURVIVOR_FRANCIS 2
#define CLASS_SURVIVOR_LOUIS 3
#define CLASS_SURVIVOR_ZOE 4

//=================================
//	Infected Sound Defines START
//=================================
#define SOUND_COMMON_B1			"npc/infected/idle/breathing/breathing01.wav"
#define SOUND_COMMON_B2			"npc/infected/idle/breathing/breathing08.wav"
#define SOUND_COMMON_B3			"npc/infected/idle/breathing/breathing09.wav"
#define SOUND_COMMON_B4			"npc/infected/idle/breathing/breathing10.wav"
#define SOUND_COMMON_B5			"npc/infected/idle/breathing/breathing13.wav"
#define SOUND_COMMON_B6			"npc/infected/idle/breathing/breathing16.wav"
#define SOUND_COMMON_B7			"npc/infected/idle/breathing/breathing18.wav"
#define SOUND_COMMON_B8			"npc/infected/idle/breathing/breathing25.wav"
#define SOUND_COMMON_B9			"npc/infected/idle/breathing/breathing26.wav"
#define SOUND_COMMON_B10		"npc/infected/idle/breathing/idle_breath_loop_01.wav"
#define SOUND_COMMON_B11		"npc/infected/idle/breathing/idle_breath_loop_02.wav"
#define SOUND_COMMON_B12		"npc/infected/idle/breathing/idle_breath_loop_03.wav"
#define SOUND_COMMON_B13		"npc/infected/idle/breathing/idle_breath_loop_04.wav"
#define SOUND_COMMON_B14		"npc/infected/idle/breathing/idle_breath_loop_05.wav"
#define SOUND_COMMON_B15		"npc/infected/idle/breathing/idle_breath_loop_06.wav"

#define SOUND_COMMON_R1			"npc/infected/idle/alert/becomeenraged/become_enraged01.wav"
#define SOUND_COMMON_R2			"npc/infected/idle/alert/becomeenraged/become_enraged02.wav"
#define SOUND_COMMON_R3			"npc/infected/idle/alert/becomeenraged/become_enraged03.wav"
#define SOUND_COMMON_R4			"npc/infected/idle/alert/becomeenraged/become_enraged06.wav"
#define SOUND_COMMON_R5			"npc/infected/idle/alert/becomeenraged/become_enraged07.wav"
#define SOUND_COMMON_R6			"npc/infected/idle/alert/becomeenraged/become_enraged09.wav"
#define SOUND_COMMON_R7			"npc/infected/idle/alert/becomeenraged/become_enraged10.wav"
#define SOUND_COMMON_R8			"npc/infected/idle/alert/becomeenraged/become_enraged11.wav"
#define SOUND_COMMON_R9			"npc/infected/idle/alert/becomeenraged/become_enraged30.wav"

#define SOUND_COMMON_D1			"npc/infected/action/die/death_14.wav"
#define SOUND_COMMON_D2			"npc/infected/action/die/death_17.wav"
#define SOUND_COMMON_D3			"npc/infected/action/die/death_18.wav"
#define SOUND_COMMON_D4			"npc/infected/action/die/death_19.wav"

#define SOUND_COMMON_H1			"npc/infected/hit/hit_punch01.wav"
#define SOUND_COMMON_H2			"npc/infected/hit/hit_punch02.wav"
#define SOUND_COMMON_H3			"npc/infected/hit/hit_punch03.wav"
#define SOUND_COMMON_H4			"npc/infected/hit/hit_punch04.wav"
#define SOUND_COMMON_H5			"npc/infected/hit/hit_punch05.wav"
#define SOUND_COMMON_H6			"npc/infected/hit/hit_punch06.wav"
#define SOUND_COMMON_H7			"npc/infected/hit/hit_punch07.wav"
#define SOUND_COMMON_H8			"npc/infected/hit/hit_punch08.wav"

#define SOUND_WITCH_S1			"npc/witch/voice/idle/female_cry_1.wav"
#define SOUND_WITCH_S2			"npc/witch/voice/idle/female_cry_2.wav"
#define SOUND_WITCH_S3			"npc/witch/voice/idle/female_cry_3.wav"
#define SOUND_WITCH_S4			"npc/witch/voice/idle/female_cry_4.wav"

#define SOUND_WITCH_W1			"npc/witch/voice/idle/walking_cry07.wav"
#define SOUND_WITCH_W2			"npc/witch/voice/idle/walking_cry10.wav"
#define SOUND_WITCH_W3			"npc/witch/voice/idle/walking_cry11.wav"
#define SOUND_WITCH_W4			"npc/witch/voice/idle/walking_cry12.wav"

#define SOUND_WITCH_M1			"npc/witch/voice/mad/zombiefemale_growl1.wav"
#define SOUND_WITCH_M2			"npc/witch/voice/mad/zombiefemale_growl2.wav"

#define SOUND_WITCH_G1			"npc/witch/voice/mad/female_Is_d_madscream01.wav"
#define SOUND_WITCH_G2			"npc/witch/voice/mad/female_Is_d_madscream02.wav"
#define SOUND_WITCH_G3			"npc/witch/voice/mad/female_Is_d_madscream03.wav"

#define SOUND_WITCH_I1			"npc/witch/voice/attack/female_distantscream1.wav"
#define SOUND_WITCH_I2			"npc/witch/voice/attack/female_distantscream2.wav"

#define SOUND_WITCH_M1			"npc/witch/voice/attack/female_shriek_1.wav"
#define SOUND_WITCH_M2			"npc/witch/voice/attack/female_shriek_2.wav"

#define SOUND_WITCH_A1			"npc/witch/voice/attack/witch_before_kill_01.wav"

#define SOUND_WITCH_H1			"npc/witch/voice/pain/witch_pain_1.wav"
#define SOUND_WITCH_H2			"npc/witch/voice/pain/witch_pain_2.wav"
#define SOUND_WITCH_H3			"npc/witch/voice/pain/witch_pain_3.wav"

#define SOUND_WITCH_R1			"npc/witch/voice/retreat/horrified_1.wav"
#define SOUND_WITCH_R2			"npc/witch/voice/retreat/horrified_2.wav"
#define SOUND_WITCH_R3			"npc/witch/voice/retreat/horrified_3.wav"
#define SOUND_WITCH_R4			"npc/witch/voice/retreat/horrified_4.wav"

#define SOUND_WITCH_D1			"npc/witch/voice/die/female_death_1.wav"
#define SOUND_WITCH_D2			"npc/witch/voice/die/headshot_death_1.wav"
#define SOUND_WITCH_D3			"npc/witch/voice/die/headshot_death_2.wav"
#define SOUND_WITCH_D4			"npc/witch/voice/die/headshot_death_3.wav"

#define SOUND_WITCH_L1			"npc/witch/hit/hit_slimesplat3.wav"
#define SOUND_WITCH_L2			"npc/witch/hit/hit_slimesplat4.wav"
#define SOUND_WITCH_L3			"npc/witch/hit/hit_slimesplat5.wav"

#define SOUND_TANK_B1			"player\tank\voice\idle\tank_breathe_01.wav"
#define SOUND_TANK_B2			"player\tank\voice\idle\tank_breathe_02.wav"
#define SOUND_TANK_B3			"player\tank\voice\idle\tank_breathe_03.wav"
#define SOUND_TANK_B4			"player\tank\voice\idle\tank_breathe_04.wav"
#define SOUND_TANK_B5			"player\tank\voice\idle\tank_breathe_05.wav"
#define SOUND_TANK_B6			"player\tank\voice\idle\tank_breathe_06.wav"
#define SOUND_TANK_B7			"player\tank\voice\idle\tank_breathe_07.wav"
#define SOUND_TANK_B8			"player\tank\voice\idle\tank_breathe_08.wav"

#define SOUND_TANK_G1			"player\tank\voice\idle\tank_growl_01.wav"
#define SOUND_TANK_G2			"player\tank\voice\idle\tank_growl_02.wav"
#define SOUND_TANK_G3			"player\tank\voice\idle\tank_growl_03.wav"
#define SOUND_TANK_G4			"player\tank\voice\idle\tank_growl_09.wav"
#define SOUND_TANK_G5			"player\tank\voice\idle\tank_growl_10.wav"
#define SOUND_TANK_G6			"player\tank\voice\idle\tank_growl_11.wav"
#define SOUND_TANK_G7			"player\tank\voice\idle\tank_growl_12.wav"

#define SOUND_TANK_V1			"player\tank\voice\idle\tank_voice_01.wav"
#define SOUND_TANK_V2			"player\tank\voice\idle\tank_voice_02.wav"
#define SOUND_TANK_V3			"player\tank\voice\idle\tank_voice_03.wav"
#define SOUND_TANK_V4			"player\tank\voice\idle\tank_voice_04.wav"
#define SOUND_TANK_V5			"player\tank\voice\idle\tank_voice_05.wav"
#define SOUND_TANK_V6			"player\tank\voice\idle\tank_voice_06.wav"
#define SOUND_TANK_V7			"player\tank\voice\idle\tank_voice_07.wav"
#define SOUND_TANK_V8			"player\tank\voice\idle\tank_voice_08.wav"
#define SOUND_TANK_V9			"player\tank\voice\idle\tank_voice_09.wav"

#define SOUND_TANK_H1			"player\tank\voice\pain\tank_pain_01.wav"
#define SOUND_TANK_H2			"player\tank\voice\pain\tank_pain_02.wav"
#define SOUND_TANK_H3			"player\tank\voice\pain\tank_pain_03.wav"
#define SOUND_TANK_H4			"player\tank\voice\pain\tank_pain_04.wav"
#define SOUND_TANK_H5			"player\tank\voice\pain\tank_pain_05.wav"
#define SOUND_TANK_H6			"player\tank\voice\pain\tank_pain_06.wav"
#define SOUND_TANK_H7			"player\tank\voice\pain\tank_pain_07.wav"
#define SOUND_TANK_H8			"player\tank\voice\pain\tank_pain_08.wav"
#define SOUND_TANK_H9			"player\tank\voice\pain\tank_pain_09.wav"
#define SOUND_TANK_H10			"player\tank\voice\pain\tank_pain_10.wav"

//=================================
//	Infected Sound Defines END
//=================================