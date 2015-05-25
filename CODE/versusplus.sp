#include <sourcemod>
#include <sdktools>
 
#define PLUGIN_VERSION "1.0"
 
#define CLASS_SMOKER 1
#define CLASS_BOOMER 2
#define CLASS_HUNTER 3
#define CLASS_SPITTER 4
#define CLASS_JOCKEY 5
#define CLASS_CHARGER 6
#define CLASS_TANK 7
#define CLASS_WITCH 8
#define CLASS_COMMON 9
 
#define SOUND_COMMON_B1                 "npc/infected/idle/breathing/breathing01.wav"
#define SOUND_COMMON_B2                 "npc/infected/idle/breathing/breathing08.wav"
#define SOUND_COMMON_B3                 "npc/infected/idle/breathing/breathing09.wav"
#define SOUND_COMMON_B4                 "npc/infected/idle/breathing/breathing10.wav"
#define SOUND_COMMON_B5                 "npc/infected/idle/breathing/breathing13.wav"
#define SOUND_COMMON_B6                 "npc/infected/idle/breathing/breathing16.wav"
#define SOUND_COMMON_B7                 "npc/infected/idle/breathing/breathing18.wav"
#define SOUND_COMMON_B8                 "npc/infected/idle/breathing/breathing25.wav"
#define SOUND_COMMON_B9                 "npc/infected/idle/breathing/breathing26.wav"
#define SOUND_COMMON_R10			"npc/infected/idle/breathing/idle_breath_01.wav"
#define SOUND_COMMON_R11			"npc/infected/idle/breathing/idle_breath_02.wav"
#define SOUND_COMMON_R12			"npc/infected/idle/breathing/idle_breath_03.wav"
#define SOUND_COMMON_R13			"npc/infected/idle/breathing/idle_breath_04.wav"
#define SOUND_COMMON_R14			"npc/infected/idle/breathing/idle_breath_05.wav"
#define SOUND_COMMON_R15			"npc/infected/idle/breathing/idle_breath_06.wav"
 
#define SOUND_COMMON_R1                 "npc/infected/idle/alert/becomeenraged/become_enraged01.wav"
#define SOUND_COMMON_R2                 "npc/infected/idle/alert/becomeenraged/become_enraged02.wav"
#define SOUND_COMMON_R3                 "npc/infected/idle/alert/becomeenraged/become_enraged03.wav"
#define SOUND_COMMON_R4                 "npc/infected/idle/alert/becomeenraged/become_enraged06.wav"
#define SOUND_COMMON_R5                 "npc/infected/idle/alert/becomeenraged/become_enraged07.wav"
#define SOUND_COMMON_R6                 "npc/infected/idle/alert/becomeenraged/become_enraged09.wav"
#define SOUND_COMMON_R7                 "npc/infected/idle/alert/becomeenraged/become_enraged10.wav"
#define SOUND_COMMON_R8                 "npc/infected/idle/alert/becomeenraged/become_enraged11.wav"
#define SOUND_COMMON_R9                 "npc/infected/idle/alert/becomeenraged/become_enraged30.wav"

 
#define SOUND_COMMON_D1                 "npc/infected/action/die/death_14.wav"
#define SOUND_COMMON_D2                 "npc/infected/action/die/death_17.wav"
#define SOUND_COMMON_D3                 "npc/infected/action/die/death_18.wav"
#define SOUND_COMMON_D4                 "npc/infected/action/die/death_19.wav"
 
#define SOUND_COMMON_H1                 "npc/infected/hit/hit_punch01.wav"
#define SOUND_COMMON_H2                 "npc/infected/hit/hit_punch02.wav"
#define SOUND_COMMON_H3                 "npc/infected/hit/hit_punch03.wav"
#define SOUND_COMMON_H4                 "npc/infected/hit/hit_punch04.wav"
#define SOUND_COMMON_H5                 "npc/infected/hit/hit_punch05.wav"
#define SOUND_COMMON_H6                 "npc/infected/hit/hit_punch06.wav"
#define SOUND_COMMON_H7                 "npc/infected/hit/hit_punch07.wav"
#define SOUND_COMMON_H8                 "npc/infected/hit/hit_punch08.wav"
 
#define SOUND_WITCH_S1                  "npc/witch/voice/idle/female_cry_1.wav"
#define SOUND_WITCH_S2                  "npc/witch/voice/idle/female_cry_2.wav"
#define SOUND_WITCH_S3                  "npc/witch/voice/idle/female_cry_3.wav"
#define SOUND_WITCH_S4                  "npc/witch/voice/idle/female_cry_4.wav"
 
#define SOUND_WITCH_W1                  "npc/witch/voice/idle/walking_cry07.wav"
#define SOUND_WITCH_W2                  "npc/witch/voice/idle/walking_cry10.wav"
#define SOUND_WITCH_W3                  "npc/witch/voice/idle/walking_cry11.wav"
#define SOUND_WITCH_W4                  "npc/witch/voice/idle/walking_cry12.wav"
 
#define SOUND_WITCH_M1                  "npc/witch/voice/mad/zombiefemale_growl1.wav"
#define SOUND_WITCH_M2                  "npc/witch/voice/mad/zombiefemale_growl2.wav"
 
#define SOUND_WITCH_G1                  "npc/witch/voice/mad/female_Is_d_madscream01.wav"
#define SOUND_WITCH_G2                  "npc/witch/voice/mad/female_Is_d_madscream02.wav"
#define SOUND_WITCH_G3                  "npc/witch/voice/mad/female_Is_d_madscream03.wav"
 
#define SOUND_WITCH_I1                  "npc/witch/voice/attack/female_distantscream1.wav"
#define SOUND_WITCH_I2                  "npc/witch/voice/attack/female_distantscream2.wav"
 
#define SOUND_WITCH_M1                  "npc/witch/voice/attack/female_shriek_1.wav"
#define SOUND_WITCH_M2                  "npc/witch/voice/attack/female_shriek_2.wav"
 
#define SOUND_WITCH_A1                  "npc/witch/voice/attack/witch_before_kill_01.wav"
 
#define SOUND_WITCH_H1                  "npc/witch/voice/pain/witch_pain_1.wav"
#define SOUND_WITCH_H2                  "npc/witch/voice/pain/witch_pain_2.wav"
#define SOUND_WITCH_H3                  "npc/witch/voice/pain/witch_pain_3.wav"
 
#define SOUND_WITCH_R1                  "npc/witch/voice/retreat/horrified_1.wav"
#define SOUND_WITCH_R2                  "npc/witch/voice/retreat/horrified_2.wav"
#define SOUND_WITCH_R3                  "npc/witch/voice/retreat/horrified_3.wav"
#define SOUND_WITCH_R4                  "npc/witch/voice/retreat/horrified_4.wav"
 
#define SOUND_WITCH_D1                  "npc/witch/voice/die/female_death_1.wav"
#define SOUND_WITCH_D2                  "npc/witch/voice/die/headshot_death_1.wav"
#define SOUND_WITCH_D3                  "npc/witch/voice/die/headshot_death_2.wav"
#define SOUND_WITCH_D4                  "npc/witch/voice/die/headshot_death_3.wav"
 
#define SOUND_WITCH_L1                  "npc/witch/hit/hit_slimesplat3.wav"
#define SOUND_WITCH_L2                  "npc/witch/hit/hit_slimesplat4.wav"
#define SOUND_WITCH_L3                  "npc/witch/hit/hit_slimesplat5.wav"