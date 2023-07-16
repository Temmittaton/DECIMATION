{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "OptionsController",
  "creationCodeFile": "",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_6F18B78C_1","path":"rooms/OptionsController/OptionsController.yy",},
    {"name":"inst_13213EA4_1","path":"rooms/OptionsController/OptionsController.yy",},
    {"name":"inst_16AF0028_1","path":"rooms/OptionsController/OptionsController.yy",},
    {"name":"inst_1F9290D2_1","path":"rooms/OptionsController/OptionsController.yy",},
    {"name":"inst_3CF323A5_1","path":"rooms/OptionsController/OptionsController.yy",},
    {"name":"inst_54A018BF_1","path":"rooms/OptionsController/OptionsController.yy",},
    {"name":"inst_5B79326D_1","path":"rooms/OptionsController/OptionsController.yy",},
    {"name":"inst_50AAA3E4_1","path":"rooms/OptionsController/OptionsController.yy",},
    {"name":"inst_88FA79E_1","path":"rooms/OptionsController/OptionsController.yy",},
    {"name":"inst_54EBAFF8_1","path":"rooms/OptionsController/OptionsController.yy",},
    {"name":"inst_51CF4B4F_1","path":"rooms/OptionsController/OptionsController.yy",},
    {"name":"inst_4252D8CC_1","path":"rooms/OptionsController/OptionsController.yy",},
    {"name":"inst_6782304C_1","path":"rooms/OptionsController/OptionsController.yy",},
    {"name":"inst_B9FA09C","path":"rooms/OptionsController/OptionsController.yy",},
    {"name":"inst_5F86656","path":"rooms/OptionsController/OptionsController.yy",},
    {"name":"inst_1F466DA2","path":"rooms/OptionsController/OptionsController.yy",},
    {"name":"inst_180F0724","path":"rooms/OptionsController/OptionsController.yy",},
    {"name":"inst_29517DD6","path":"rooms/OptionsController/OptionsController.yy",},
    {"name":"inst_3D239453","path":"rooms/OptionsController/OptionsController.yy",},
    {"name":"inst_7C45F569","path":"rooms/OptionsController/OptionsController.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Controllers","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Buttons","depth":100,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_6F18B78C_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_button_return","path":"objects/obj_button_return/obj_button_return.yy",},"properties":[],"rotation":0.0,"scaleX":0.3,"scaleY":0.3,"x":16.0,"y":16.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_13213EA4_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_box_controller","path":"objects/obj_box_controller/obj_box_controller.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_real","path":"objects/obj_box_real/obj_box_real.yy",},"propertyId":{"name":"key","path":"objects/obj_box_real/obj_box_real.yy",},"value":"vk_enter",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_controller","path":"objects/obj_box_controller/obj_box_controller.yy",},"propertyId":{"name":"key","path":"objects/obj_box_controller/obj_box_controller.yy",},"value":"gp_face3",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_controller","path":"objects/obj_box_controller/obj_box_controller.yy",},"propertyId":{"name":"action","path":"objects/obj_box_controller/obj_box_controller.yy",},"value":"Attack",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_controller","path":"objects/obj_box_controller/obj_box_controller.yy",},"propertyId":{"name":"keyString","path":"objects/obj_box_controller/obj_box_controller.yy",},"value":"Left Button",},
          ],"rotation":0.0,"scaleX":10.666668,"scaleY":6.666667,"x":48.0,"y":176.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_16AF0028_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_box_controller","path":"objects/obj_box_controller/obj_box_controller.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_real","path":"objects/obj_box_real/obj_box_real.yy",},"propertyId":{"name":"action","path":"objects/obj_box_real/obj_box_real.yy",},"value":"Jump",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_real","path":"objects/obj_box_real/obj_box_real.yy",},"propertyId":{"name":"key","path":"objects/obj_box_real/obj_box_real.yy",},"value":"vk_space",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_real","path":"objects/obj_box_real/obj_box_real.yy",},"propertyId":{"name":"actionID","path":"objects/obj_box_real/obj_box_real.yy",},"value":"jump",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_real","path":"objects/obj_box_real/obj_box_real.yy",},"propertyId":{"name":"keyString","path":"objects/obj_box_real/obj_box_real.yy",},"value":"Space",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_controller","path":"objects/obj_box_controller/obj_box_controller.yy",},"propertyId":{"name":"key","path":"objects/obj_box_controller/obj_box_controller.yy",},"value":"gp_shoulderrb",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_controller","path":"objects/obj_box_controller/obj_box_controller.yy",},"propertyId":{"name":"action","path":"objects/obj_box_controller/obj_box_controller.yy",},"value":"Dash",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_controller","path":"objects/obj_box_controller/obj_box_controller.yy",},"propertyId":{"name":"keyString","path":"objects/obj_box_controller/obj_box_controller.yy",},"value":"Right Shoulder",},
          ],"rotation":0.0,"scaleX":10.666668,"scaleY":6.666667,"x":656.0,"y":176.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1F9290D2_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_box_controller","path":"objects/obj_box_controller/obj_box_controller.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_controller","path":"objects/obj_box_controller/obj_box_controller.yy",},"propertyId":{"name":"key","path":"objects/obj_box_controller/obj_box_controller.yy",},"value":"gp_face1",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_controller","path":"objects/obj_box_controller/obj_box_controller.yy",},"propertyId":{"name":"action","path":"objects/obj_box_controller/obj_box_controller.yy",},"value":"Jump",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_controller","path":"objects/obj_box_controller/obj_box_controller.yy",},"propertyId":{"name":"keyString","path":"objects/obj_box_controller/obj_box_controller.yy",},"value":"Down Button",},
          ],"rotation":0.0,"scaleX":10.666668,"scaleY":6.666667,"x":48.0,"y":272.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_3CF323A5_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_box_controller","path":"objects/obj_box_controller/obj_box_controller.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_string","path":"objects/obj_box_string/obj_box_string.yy",},"propertyId":{"name":"action","path":"objects/obj_box_string/obj_box_string.yy",},"value":"Right",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_string","path":"objects/obj_box_string/obj_box_string.yy",},"propertyId":{"name":"key","path":"objects/obj_box_string/obj_box_string.yy",},"value":"D",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_string","path":"objects/obj_box_string/obj_box_string.yy",},"propertyId":{"name":"actionID","path":"objects/obj_box_string/obj_box_string.yy",},"value":"right",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_controller","path":"objects/obj_box_controller/obj_box_controller.yy",},"propertyId":{"name":"key","path":"objects/obj_box_controller/obj_box_controller.yy",},"value":"gp_padr",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_controller","path":"objects/obj_box_controller/obj_box_controller.yy",},"propertyId":{"name":"action","path":"objects/obj_box_controller/obj_box_controller.yy",},"value":"Switch Weapons",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_controller","path":"objects/obj_box_controller/obj_box_controller.yy",},"propertyId":{"name":"keyString","path":"objects/obj_box_controller/obj_box_controller.yy",},"value":"Pad Right",},
          ],"rotation":0.0,"scaleX":10.666668,"scaleY":6.666667,"x":656.0,"y":368.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_54A018BF_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_box_controller","path":"objects/obj_box_controller/obj_box_controller.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_string","path":"objects/obj_box_string/obj_box_string.yy",},"propertyId":{"name":"action","path":"objects/obj_box_string/obj_box_string.yy",},"value":"Down",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_string","path":"objects/obj_box_string/obj_box_string.yy",},"propertyId":{"name":"key","path":"objects/obj_box_string/obj_box_string.yy",},"value":"S",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_string","path":"objects/obj_box_string/obj_box_string.yy",},"propertyId":{"name":"actionID","path":"objects/obj_box_string/obj_box_string.yy",},"value":"crouch",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_controller","path":"objects/obj_box_controller/obj_box_controller.yy",},"propertyId":{"name":"key","path":"objects/obj_box_controller/obj_box_controller.yy",},"value":"gp_padl",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_controller","path":"objects/obj_box_controller/obj_box_controller.yy",},"propertyId":{"name":"action","path":"objects/obj_box_controller/obj_box_controller.yy",},"value":"Switch Spells",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_controller","path":"objects/obj_box_controller/obj_box_controller.yy",},"propertyId":{"name":"keyString","path":"objects/obj_box_controller/obj_box_controller.yy",},"value":"Pad Left",},
          ],"rotation":0.0,"scaleX":10.666668,"scaleY":6.666667,"x":48.0,"y":368.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5B79326D_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_box_controller","path":"objects/obj_box_controller/obj_box_controller.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_string","path":"objects/obj_box_string/obj_box_string.yy",},"propertyId":{"name":"action","path":"objects/obj_box_string/obj_box_string.yy",},"value":"Interact",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_string","path":"objects/obj_box_string/obj_box_string.yy",},"propertyId":{"name":"key","path":"objects/obj_box_string/obj_box_string.yy",},"value":"Z",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_string","path":"objects/obj_box_string/obj_box_string.yy",},"propertyId":{"name":"actionID","path":"objects/obj_box_string/obj_box_string.yy",},"value":"interact",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_controller","path":"objects/obj_box_controller/obj_box_controller.yy",},"propertyId":{"name":"key","path":"objects/obj_box_controller/obj_box_controller.yy",},"value":"gp_shoulderlb",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_controller","path":"objects/obj_box_controller/obj_box_controller.yy",},"propertyId":{"name":"action","path":"objects/obj_box_controller/obj_box_controller.yy",},"value":"Cast Spell",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_controller","path":"objects/obj_box_controller/obj_box_controller.yy",},"propertyId":{"name":"keyString","path":"objects/obj_box_controller/obj_box_controller.yy",},"value":"Left Shoulder",},
          ],"rotation":0.0,"scaleX":10.666668,"scaleY":6.666667,"x":656.0,"y":272.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_50AAA3E4_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_box_controller_stick","path":"objects/obj_box_controller_stick/obj_box_controller_stick.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_real","path":"objects/obj_box_real/obj_box_real.yy",},"propertyId":{"name":"action","path":"objects/obj_box_real/obj_box_real.yy",},"value":"Switch Weapon",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_real","path":"objects/obj_box_real/obj_box_real.yy",},"propertyId":{"name":"key","path":"objects/obj_box_real/obj_box_real.yy",},"value":"vk_tab",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_real","path":"objects/obj_box_real/obj_box_real.yy",},"propertyId":{"name":"keyString","path":"objects/obj_box_real/obj_box_real.yy",},"value":"Tab",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_real","path":"objects/obj_box_real/obj_box_real.yy",},"propertyId":{"name":"actionID","path":"objects/obj_box_real/obj_box_real.yy",},"value":"switch weapon",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_box_controller","path":"objects/obj_box_controller/obj_box_controller.yy",},"propertyId":{"name":"key","path":"objects/obj_box_controller/obj_box_controller.yy",},"value":"0",},
          ],"rotation":0.0,"scaleX":12.000001,"scaleY":6.666667,"x":336.0,"y":416.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Player","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4252D8CC_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":448.0,"y":288.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_6782304C_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"con_checkpoint","path":"objects/con_checkpoint/con_checkpoint.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":480.0,"y":288.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Projectiles","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Items","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"GroundTiles","depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":68,"SerialiseWidth":120,"TileCompressedData":[
-43,-2147483648,1,0,-1082,-2147483648,1,0,-333,-2147483648,-80,0,-40,-2147483648,-80,0,-40,-2147483648,-80,0,-40,-2147483648,-80,0,-40,-2147483648,-80,0,-40,-2147483648,-80,0,-40,-2147483648,-80,0,-40,-2147483648,-80,0,-40,-2147483648,-80,0,-40,-2147483648,-100,0,-20,-2147483648,-100,0,-20,-2147483648,-100,0,-20,-2147483648,-100,0,-20,-2147483648,-100,0,-20,-2147483648,-20,0,2,4,7,-36,0,2,4,7,-40,0,-20,-2147483648,-20,0,2,13,16,-36,0,2,13,16,-40,0,-20,-2147483648,-20,0,2,22,25,-36,0,2,22,25,-40,0,-20,-2147483648,-20,0,2,13,16,-36,0,2,13,16,-40,0,
-20,-2147483648,-20,0,2,22,25,-36,0,2,22,25,-40,0,-20,-2147483648,-20,0,2,13,16,-36,0,2,13,16,-40,0,-20,-2147483648,-20,0,2,22,25,-36,0,2,22,25,-40,0,-20,-2147483648,-20,0,2,13,16,-36,0,2,13,16,-40,0,-20,-2147483648,-20,0,2,22,25,-36,0,2,22,25,-40,0,-20,-2147483648,-20,0,2,13,16,-36,0,2,13,16,-40,0,-20,-2147483648,-20,0,2,22,25,-36,0,2,22,25,-40,0,-20,-2147483648,-20,0,2,13,16,-36,0,2,13,16,-40,0,-20,-2147483648,-20,0,2,22,25,-36,
0,2,22,25,-40,0,-20,-2147483648,-20,0,2,13,16,-36,0,2,13,16,-40,0,-20,-2147483648,-20,0,2,22,25,-36,0,2,22,25,-40,0,-20,-2147483648,-20,0,2,13,16,-36,0,2,13,16,-40,0,-20,-2147483648,-20,0,2,22,25,-36,0,2,22,25,-40,0,-20,-2147483648,-20,0,2,13,16,-36,0,2,13,16,-40,0,-20,-2147483648,-20,0,2,13,16,-36,0,2,22,25,-40,0,-20,-2147483648,-20,0,2,22,25,-36,0,2,13,16,-40,0,-20,-2147483648,-20,0,8,22,23,5,6,5,6,20,21,-9,0,6,
8,5,6,5,6,26,-9,0,8,2,3,5,6,5,6,15,16,-40,0,-20,-2147483648,-20,0,10,31,24,14,15,14,15,29,30,20,21,-6,0,8,8,17,14,15,14,15,35,26,-6,0,10,2,3,11,12,14,15,14,15,24,25,-40,0,-20,-2147483648,-20,0,40,536870914,536870915,536870923,536870924,23,24,23,24,23,24,5,6,5,6,5,6,23,24,23,24,23,24,23,24,5,6,5,6,5,6,23,24,23,24,23,24,536870941,536870942,536870932,536870933,-40,0,-20,-2147483648,-22,0,36,536870914,536870915,32,33,32,33,32,33,
32,33,32,33,32,33,32,33,32,33,32,33,32,33,32,33,32,33,32,33,32,33,32,33,32,33,536870932,536870933,-42,0,-20,-2147483648,-100,0,-20,-2147483648,-100,0,-39,-2147483648,-81,0,-39,-2147483648,-81,0,-39,-2147483648,-81,0,-39,-2147483648,-81,0,-39,-2147483648,-81,0,-39,-2147483648,-81,0,-44,-2147483648,-76,0,-44,-2147483648,-76,0,-44,-2147483648,-76,0,-44,-2147483648,-76,0,-44,-2147483648,-76,0,-44,-2147483648,-76,0,-44,-2147483648,-76,0,-44,-2147483648,-76,0,-44,-2147483648,-76,0,-48,-2147483648,-72,0,],"TileDataFormat":1,},"tilesetId":{"name":"tls_cave_ground","path":"tilesets/tls_cave_ground/tls_cave_ground.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Ground","depth":600,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_88FA79E_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"par_solid","path":"objects/par_solid/par_solid.yy",},"properties":[],"rotation":0.0,"scaleX":3.0,"scaleY":1.0,"x":320.0,"y":368.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_54EBAFF8_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"par_solid","path":"objects/par_solid/par_solid.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":10.0,"x":320.0,"y":208.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_51CF4B4F_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"par_solid","path":"objects/par_solid/par_solid.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":10.0,"x":624.0,"y":208.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_B9FA09C","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"par_solid","path":"objects/par_solid/par_solid.yy",},"properties":[],"rotation":0.0,"scaleX":3.0,"scaleY":1.0,"x":592.0,"y":368.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5F86656","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_slope","path":"objects/obj_slope/obj_slope.yy",},"properties":[],"rotation":0.0,"scaleX":2.0,"scaleY":1.0,"x":368.0,"y":368.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1F466DA2","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_slope","path":"objects/obj_slope/obj_slope.yy",},"properties":[],"rotation":0.0,"scaleX":-2.0,"scaleY":1.0,"x":592.0,"y":368.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_180F0724","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"par_solid","path":"objects/par_solid/par_solid.yy",},"properties":[],"rotation":0.0,"scaleX":16.0,"scaleY":1.0,"x":352.0,"y":384.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_29517DD6","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_slope","path":"objects/obj_slope/obj_slope.yy",},"properties":[],"rotation":0.0,"scaleX":-1.0,"scaleY":1.0,"x":464.0,"y":368.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_3D239453","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_slope","path":"objects/obj_slope/obj_slope.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":496.0,"y":368.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7C45F569","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"par_solid","path":"objects/par_solid/par_solid.yy",},"properties":[],"rotation":0.0,"scaleX":2.0,"scaleY":1.0,"x":464.0,"y":368.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":false,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Lights","depth":700,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":7.0,"animationSpeedType":0,"colour":4294967295,"depth":800,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"spr_options_background","path":"sprites/spr_options_background/spr_options_background.yy",},"stretch":true,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Menu",
    "path": "folders/Pièces/Menu.yy",
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 540,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 960,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": false,
    "inheritViewSettings": false,
  },
  "volume": 1.0,
}