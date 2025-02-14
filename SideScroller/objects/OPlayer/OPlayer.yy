{
  "$GMObject":"",
  "%Name":"OPlayer",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":64,"eventType":8,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"OPlayer",
  "overriddenProperties":[],
  "parent":{
    "name":"Player",
    "path":"folders/Objects/Player.yy",
  },
  "parentObjectId":null,
  "persistent":false,
  "physicsAngularDamping":0.1,
  "physicsDensity":0.5,
  "physicsFriction":0.2,
  "physicsGroup":1,
  "physicsKinematic":false,
  "physicsLinearDamping":0.1,
  "physicsObject":false,
  "physicsRestitution":0.1,
  "physicsSensor":false,
  "physicsShape":1,
  "physicsShapePoints":[],
  "physicsStartAwake":true,
  "properties":[
    {"$GMObjectProperty":"v1","%Name":"gravityForce","filters":[],"listItems":[],"multiselect":false,"name":"gravityForce","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0.1","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"YSpeed","filters":[],"listItems":[],"multiselect":false,"name":"YSpeed","rangeEnabled":true,"rangeMax":2.0,"rangeMin":-2.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"XSpeed","filters":[],"listItems":[],"multiselect":false,"name":"XSpeed","rangeEnabled":true,"rangeMax":2.0,"rangeMin":-2.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"maxSpeed","filters":[],"listItems":[],"multiselect":false,"name":"maxSpeed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"3","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"havePistol","filters":[],"listItems":[],"multiselect":false,"name":"havePistol","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"pistolEquip","filters":[],"listItems":[],"multiselect":false,"name":"pistolEquip","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"propulsX","filters":[],"listItems":[],"multiselect":false,"name":"propulsX","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"propulsY","filters":[],"listItems":[],"multiselect":false,"name":"propulsY","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"oxygen","filters":[],"listItems":[],"multiselect":false,"name":"oxygen","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"100","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"oxygenMax","filters":[],"listItems":[],"multiselect":false,"name":"oxygenMax","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"100","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"tempOxy","filters":[],"listItems":[],"multiselect":false,"name":"tempOxy","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"20","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"checkPointX","filters":[],"listItems":[],"multiselect":false,"name":"checkPointX","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"checkPointY","filters":[],"listItems":[],"multiselect":false,"name":"checkPointY","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"haveCombi","filters":[],"listItems":[],"multiselect":false,"name":"haveCombi","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"true","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"energyBank","filters":[],"listItems":[],"multiselect":false,"name":"energyBank","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"3","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"energyBankMax","filters":[],"listItems":[],"multiselect":false,"name":"energyBankMax","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"3","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"energy","filters":[],"listItems":[],"multiselect":false,"name":"energy","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"100","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"energyMax","filters":[],"listItems":[],"multiselect":false,"name":"energyMax","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"100","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"tempFrameOxy","filters":[],"listItems":[],"multiselect":false,"name":"tempFrameOxy","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"dive","filters":[],"listItems":[],"multiselect":false,"name":"dive","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"True","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"diving","filters":[],"listItems":[],"multiselect":false,"name":"diving","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"weapon","filters":[],"listItems":[],"multiselect":false,"name":"weapon","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"fire","filters":[],"listItems":[],"multiselect":false,"name":"fire","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"nextDestinationX","filters":[],"listItems":[],"multiselect":false,"name":"nextDestinationX","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"nextDestinationY","filters":[],"listItems":[],"multiselect":false,"name":"nextDestinationY","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"compass","filters":[],"listItems":[],"multiselect":false,"name":"compass","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"compassPointer","filters":[],"listItems":[],"multiselect":false,"name":"compassPointer","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"destination","filters":[],"listItems":[],"multiselect":false,"name":"destination","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"stamina","filters":[],"listItems":[],"multiselect":false,"name":"stamina","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"100","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"tempFrameStam","filters":[],"listItems":[],"multiselect":false,"name":"tempFrameStam","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0.0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"staminaMax","filters":[],"listItems":[],"multiselect":false,"name":"staminaMax","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"100","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"tempStam","filters":[],"listItems":[],"multiselect":false,"name":"tempStam","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"5","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"speedUp","filters":[],"listItems":[],"multiselect":false,"name":"speedUp","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"true","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"fast","filters":[],"listItems":[],"multiselect":false,"name":"fast","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"oxygenBar","filters":[],"listItems":[],"multiselect":false,"name":"oxygenBar","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"pistolX","filters":[],"listItems":[],"multiselect":false,"name":"pistolX","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"pistolY","filters":[],"listItems":[],"multiselect":false,"name":"pistolY","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":true,
  "spriteId":{
    "name":"AFastIdleOver",
    "path":"sprites/AFastIdleOver/AFastIdleOver.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}