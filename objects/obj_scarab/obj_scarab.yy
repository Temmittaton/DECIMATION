{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_scarab",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":2,"eventType":3,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":1,"eventType":3,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":1,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"par_mob","path":"objects/par_mob/par_mob.yy",},"propertyId":{"name":"idleSprite","path":"objects/par_mob/par_mob.yy",},"value":"spr_scarab_wait",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"par_mob","path":"objects/par_mob/par_mob.yy",},"propertyId":{"name":"chaseSprite","path":"objects/par_mob/par_mob.yy",},"value":"spr_scarab_walk",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"par_mob","path":"objects/par_mob/par_mob.yy",},"propertyId":{"name":"chaseSpeed","path":"objects/par_mob/par_mob.yy",},"value":"0.2",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"par_mob","path":"objects/par_mob/par_mob.yy",},"propertyId":{"name":"jumpSprite","path":"objects/par_mob/par_mob.yy",},"value":"spr_scarab_walk",},
  ],
  "parent": {
    "name": "Ennemies",
    "path": "folders/Objets/Mobs/Ennemies.yy",
  },
  "parentObjectId": {
    "name": "par_ennemy",
    "path": "objects/par_ennemy/par_ennemy.yy",
  },
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"stunSprite","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"spr_scarab_stun","varType":0,},
  ],
  "solid": false,
  "spriteId": {
    "name": "spr_scarab_wait",
    "path": "sprites/spr_scarab_wait/spr_scarab_wait.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}