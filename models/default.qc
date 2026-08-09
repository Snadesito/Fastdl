$cd "C:\Documents and Settings\Teh Snake\Рабочий стол\models"
$modelname "weapons\v_pist_glock18.mdl"
$model "studio" "glock18_reference.smd"
$model "hands" "hands_reference.smd"
$cdmaterials "models\weapons\v_models\pist_glock18\"
$cdmaterials "models\weapons\v_models\hands\"
$hboxset "default"
$hbox 0 "v_weapon.Glock_Parent" -3.440  -1.756  -0.838  2.715  3.514  0.751
$hbox 0 "v_weapon.Hands_parent" -4.654  -1.415  0.000  4.665  1.302  7.925
$hbox 0 "v_weapon.Left_Arm" -0.319  -1.833  -1.434  8.563  1.491  1.708
$hbox 0 "v_weapon.Left_Hand" -1.069  -1.856  -1.460  3.655  1.901  1.020
$hbox 0 "v_weapon.Left_Thumb01" -0.038  -0.957  -1.026  2.195  0.816  0.689
$hbox 0 "v_weapon.Left_Thumb_02" -0.557  -0.812  -0.925  1.705  0.536  0.541
$hbox 0 "v_weapon.Left_Pinky01" -0.563  -0.567  -0.680  1.253  1.426  0.518
$hbox 0 "v_weapon.Left_Ring01" -0.051  -0.398  -0.616  1.498  0.636  0.413
$hbox 0 "v_weapon.L_wrist_helper" -0.805  -6.918  -1.161  1.745  0.000  2.128
$hbox 0 "v_weapon.Right_Arm" -0.402  -1.437  -1.576  8.544  1.387  1.609
$hbox 0 "v_weapon.Right_Hand" -0.402  -1.775  -1.494  3.638  1.715  0.913
$hbox 0 "v_weapon.Right_Thumb01" -0.867  -1.013  -1.300  2.356  1.051  0.852
$hbox 0 "v_weapon.Right_Thumb02" -1.285  -0.580  -0.979  1.751  0.994  0.680
$hbox 0 "v_weapon.Right_Middle01" -0.061  -0.689  -0.475  1.376  0.379  0.545
$hbox 0 "v_weapon.Right_Ring01" -0.256  -0.648  -0.542  1.312  0.423  0.473
$hbox 0 "v_weapon.Right_Pinky01" -0.456  -1.085  -0.539  1.124  0.488  0.691
$hbox 0 "v_weapon.R_wrist_helper" -1.175  -7.124  -1.587  1.829  0.933  2.029
// Model uses material "Glock18.vmt"
// Model uses material "v_hands.vmt"
$attachment "1" "v_weapon.Glock_Parent" -6.50 4.00 -0.60 rotate -0.00 -0.00 0.00
$attachment "2" "v_weapon.Glock_Parent" -0.00 2.40 -0.50 rotate 80.00 180.00 -0.00
$surfaceprop "default"
$illumposition -2.486 4.839 -7.433
$sequence glock_idle "glock_idle" ACT_VM_IDLE 1 fps 30.00
$sequence glock_fireburst1 "glock_fireburst1" ACT_VM_SECONDARYATTACK 1 fps 40.00 {
  { event 5001 0 "1" }
  { event 5001 2 "1" }
  { event 5001 3 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 90" }
  { event AE_CLIENT_EFFECT_ATTACH 2 "EjectBrass_9mm 2 90" }
  { event AE_CLIENT_EFFECT_ATTACH 3 "EjectBrass_9mm 2 90" }
}

$sequence glock_fireburst2 "glock_fireburst2" ACT_VM_SECONDARYATTACK 1 fps 40.00 {
  { event 5001 0 "1" }
  { event 5001 2 "1" }
  { event 5001 3 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 90" }
  { event AE_CLIENT_EFFECT_ATTACH 2 "EjectBrass_9mm 2 90" }
  { event AE_CLIENT_EFFECT_ATTACH 3 "EjectBrass_9mm 2 90" }
}

$sequence glock_firesingle "glock_firesingle" ACT_VM_PRIMARYATTACK 1 fps 60.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 90" }
}

$sequence glock_firelast "glock_firelast" ACT_VM_DRYFIRE 1 fps 35.00 {
  { event 5001 0 "21" }
}

$sequence glock_draw "glock_draw" ACT_VM_DRAW 1 fps 45.00 {
  { event 5004 17 "Weapon_Glock.Sliderelease" }
}

$sequence glock_reload "glock_reload" ACT_VM_RELOAD 1 fps 35.00 {
  { event 5004 0 "Weapon_Glock.Slideback" }
  { event 5004 14 "Weapon_Glock.Clipout" }
  { event 5004 38 "Weapon_Glock.Clipin" }
  { event 5004 64 "Weapon_Glock.Sliderelease" }
}

