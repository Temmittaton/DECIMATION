{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_fox",
  "spriteId": {
    "name": "spr_fox_wait",
    "path": "sprites/spr_fox_wait/spr_fox_wait.yy",
  },
  "solid": false,
  "visible": true,
  "managed": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "par_mob",
    "path": "objects/par_mob/par_mob.yy",
  },
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":1,"eventType":3,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":1,"collisionObjectId":null,},
  ],
  "properties": [],
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"idleSprite","path":"objects/par_mob/par_mob.yy",},"objectId":{"name":"par_mob","path":"objects/par_mob/par_mob.yy",},"value":"spr_fox_wait",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"chaseSprite","path":"objects/par_mob/par_mob.yy",},"objectId":{"name":"par_mob","path":"objects/par_mob/par_mob.yy",},"value":"spr_fox_walk",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"chaseSpeed","path":"objects/par_mob/par_mob.yy",},"objectId":{"name":"par_mob","path":"objects/par_mob/par_mob.yy",},"value":"3.5",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"jumpSprite","path":"objects/par_mob/par_mob.yy",},"objectId":{"name":"par_mob","path":"objects/par_mob/par_mob.yy",},"value":"spr_fox_jump",},
  ],
  "parent": {
    "name": "Mobs",
    "path": "folders/Objets/Mobs.yy",
  },
}