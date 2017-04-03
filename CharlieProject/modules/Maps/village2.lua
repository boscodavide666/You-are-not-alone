return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.18.2",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 60,
  height = 60,
  tilewidth = 32,
  tileheight = 32,
  nextobjectid = 88,
  properties = {},
  tilesets = {
    {
      name = "Ground",
      firstgid = 1,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "../../assets/Image/terrain.png",
      imagewidth = 1024,
      imageheight = 1024,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {
        {
          name = "Road",
          tile = 97,
          properties = {}
        }
      },
      tilecount = 1024,
      tiles = {
        {
          id = 1,
          terrain = { 0, 0, 0, -1 }
        },
        {
          id = 2,
          terrain = { 0, 0, -1, 0 }
        },
        {
          id = 33,
          terrain = { 0, -1, 0, 0 }
        },
        {
          id = 34,
          terrain = { -1, 0, 0, 0 }
        },
        {
          id = 64,
          terrain = { -1, -1, -1, 0 }
        },
        {
          id = 65,
          terrain = { -1, -1, 0, 0 }
        },
        {
          id = 66,
          terrain = { -1, -1, 0, -1 }
        },
        {
          id = 96,
          terrain = { -1, 0, -1, 0 }
        },
        {
          id = 98,
          terrain = { 0, -1, 0, -1 }
        },
        {
          id = 128,
          terrain = { -1, 0, -1, -1 }
        },
        {
          id = 129,
          terrain = { 0, 0, -1, -1 }
        },
        {
          id = 130,
          terrain = { 0, -1, -1, -1 }
        },
        {
          id = 355,
          animation = {
            {
              tileid = 355,
              duration = 100
            },
            {
              tileid = 356,
              duration = 0
            },
            {
              tileid = 357,
              duration = 0
            },
            {
              tileid = 357,
              duration = 0
            },
            {
              tileid = 355,
              duration = 0
            },
            {
              tileid = 355,
              duration = 0
            }
          }
        },
        {
          id = 559,
          animation = {
            {
              tileid = 559,
              duration = 200
            },
            {
              tileid = 560,
              duration = 200
            },
            {
              tileid = 561,
              duration = 200
            }
          }
        }
      }
    },
    {
      name = "treetop",
      firstgid = 1025,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "../../assets/Image/LPC Base Assets/tiles/treetop.png",
      imagewidth = 192,
      imageheight = 224,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 42,
      tiles = {}
    },
    {
      name = "trunk",
      firstgid = 1067,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "../../assets/Image/LPC Base Assets/tiles/trunk.png",
      imagewidth = 192,
      imageheight = 96,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 18,
      tiles = {}
    },
    {
      name = "house",
      firstgid = 1085,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "../../assets/Image/LPC Base Assets/tiles/house.png",
      imagewidth = 288,
      imageheight = 224,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 63,
      tiles = {}
    },
    {
      name = "kitchen",
      firstgid = 1148,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "../../assets/Image/LPC Base Assets/tiles/kitchen.png",
      imagewidth = 64,
      imageheight = 128,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 8,
      tiles = {}
    },
    {
      name = "castle_lightsources",
      firstgid = 1156,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "../../assets/Image/LPC Base Assets/tiles/castle_lightsources.png",
      imagewidth = 160,
      imageheight = 128,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 20,
      tiles = {}
    },
    {
      name = "barrel",
      firstgid = 1176,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "../../assets/Image/LPC Base Assets/tiles/barrel.png",
      imagewidth = 128,
      imageheight = 64,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 8,
      tiles = {}
    },
    {
      name = "buckets",
      firstgid = 1184,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "../../assets/Image/LPC Base Assets/tiles/buckets.png",
      imagewidth = 96,
      imageheight = 64,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 6,
      tiles = {}
    },
    {
      name = "bridges",
      firstgid = 1190,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "../../assets/Image/LPC Base Assets/tiles/bridges.png",
      imagewidth = 192,
      imageheight = 224,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 42,
      tiles = {}
    },
    {
      name = "castlefloors",
      firstgid = 1232,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "../../assets/Image/LPC Base Assets/tiles/castlefloors.png",
      imagewidth = 320,
      imageheight = 320,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 100,
      tiles = {}
    },
    {
      name = "chests",
      firstgid = 1332,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "../../assets/Image/LPC Base Assets/tiles/chests.png",
      imagewidth = 64,
      imageheight = 96,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 6,
      tiles = {}
    }
  },
  layers = {
    {
      type = "imagelayer",
      name = "bg",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      image = "village2.png",
      properties = {}
    },
    {
      type = "tilelayer",
      name = "Alberi",
      x = 0,
      y = 0,
      width = 60,
      height = 60,
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1221, 1221, 1221, 1221, 1221, 1221, 1221, 1221, 1221, 1221, 1222, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1226, 1227, 1227, 1227, 1227, 1227, 1227, 1227, 1227, 1227, 1227, 1227, 1227, 1227, 1227, 1227, 1227, 1227, 1227, 1227, 1227, 1227, 1227, 1227, 1227, 1227, 1227, 1227, 1227, 1227, 1227, 1227, 1227, 1227, 1227, 1227, 1228, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1025, 1026, 1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1031, 1032, 1033, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1037, 1038, 1039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1206, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1025, 1026, 1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1031, 1032, 1033, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1037, 1038, 1039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1091, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1100, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1043, 1044, 1045, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1121, 1121, 1121, 1121, 0, 0, 0, 0, 1091, 1091, 1220, 1221, 1221, 1221, 1221, 1222, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1049, 1050, 1051, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1100, 1100, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1055, 1056, 1057, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1194, 1194, 1194, 1194, 1150, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 1200, 1200, 1200, 1150, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1043, 1044, 1045, 1158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1150, 0, 0, 0, 0, 0, 1150, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1049, 1050, 1051, 1163, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1150, 0, 0, 0, 0, 0, 1150, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1055, 1056, 1057, 1203, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1150, 0, 0, 0, 0, 0, 1150, 0, 620,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1209, 0, 1158, 0, 1106, 0, 1158, 0, 0, 588, 1150, 0, 0, 0, 0, 0, 1150, 0, 652,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1159, 1160, 1209, 0, 1163, 0, 0, 0, 1163, 0, 0, 0, 1150, 1159, 1160, 0, 0, 0, 1150, 0, 652,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1164, 1165, 1209, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1152, 1164, 1165, 0, 0, 0, 1152, 0, 652,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1169, 1170, 1209, 0, 0, 0, 590, 0, 0, 1184, 0, 0, 1154, 1169, 1170, 0, 0, 0, 1155, 0, 1184,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1025, 1026, 1027, 0, 1091, 1209, 1091, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1031, 1032, 1033, 1112, 1100, 1113, 1100, 1114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1091, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1037, 1038, 1039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1100, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 1043, 1044, 1045, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1043, 1044, 1045, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 1049, 1050, 1051, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1049, 1050, 1051, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1093, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 1055, 1056, 1057, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1055, 1056, 1057, 0, 0, 0, 0, 0, 0, 0, 1158, 1148, 1102, 0, 1158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1148,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1043, 1044, 1045, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1163, 1150, 0, 0, 1163, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1204, 0, 1150,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1028, 1029, 1030, 0, 0, 0, 0, 0, 0, 0, 1049, 1050, 1051, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1210, 1153, 1152,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1034, 1035, 1036, 0, 0, 0, 0, 0, 0, 0, 1055, 1056, 1057, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1210, 0, 1154,
        0, 0, 0, 0, 0, 0, 1028, 1029, 1030, 0, 0, 0, 0, 0, 0, 0, 0, 1040, 1041, 1042, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1210, 0, 0,
        0, 0, 0, 0, 0, 0, 1034, 1035, 1036, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1210, 0, 0,
        0, 0, 0, 0, 0, 0, 1040, 1041, 1042, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1210, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1210, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1210, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 542, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1210, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1043, 1044, 1045, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1049, 1050, 1051, 0, 0, 0, 0, 1025, 1026, 1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1094, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1055, 1056, 1057, 0, 0, 0, 0, 1031, 1032, 1033, 0, 0, 0, 0, 0, 0, 1025, 1026, 1027, 0, 0, 0, 0, 0, 0, 0, 1094, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 1043, 1044, 1045, 0, 0, 0, 0, 0, 0, 0, 0, 542, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1037, 1038, 1039, 0, 0, 0, 0, 0, 0, 1031, 1032, 1033, 0, 0, 0, 0, 0, 0, 0, 1094, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 1049, 1050, 1051, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1037, 1038, 1039, 0, 0, 0, 0, 0, 0, 0, 1103, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 1055, 1056, 1057, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1043, 1044, 1045, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1049, 1050, 1051, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1043, 1044, 1045, 1043, 1044, 1045, 1055, 1056, 1057, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1049, 1050, 1051, 1049, 1050, 1051, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1055, 1056, 1057, 1055, 1056, 1057, 1043, 1044, 1045, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1049, 1050, 1051, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1055, 1056, 1057, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      name = "Impassable",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["Impassable"] = true
      },
      objects = {
        {
          id = 1,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 352,
          width = 224,
          height = 512,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 3,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 1672,
          width = 1568,
          height = 448,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 5,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1576,
          y = 1832,
          width = 344,
          height = 152,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 6,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = -16,
          width = 568,
          height = 824,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 8,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1640,
          y = 1760,
          width = 16,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 9,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1736,
          y = 1760,
          width = 16,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 10,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1832,
          y = 1840,
          width = 16,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 11,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1831,
          y = 1696,
          width = 16,
          height = 56,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 13,
          name = "",
          type = "",
          shape = "rectangle",
          x = 232,
          y = 1184,
          width = 16,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 14,
          name = "",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 1008,
          width = 32,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 15,
          name = "",
          type = "",
          shape = "rectangle",
          x = 584,
          y = 1136,
          width = 16,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 16,
          name = "",
          type = "",
          shape = "rectangle",
          x = 328,
          y = 856,
          width = 48,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 17,
          name = "",
          type = "",
          shape = "rectangle",
          x = 544,
          y = 1008,
          width = 64,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 18,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 1200,
          width = 56,
          height = 152,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 19,
          name = "",
          type = "",
          shape = "rectangle",
          x = -8,
          y = 1256,
          width = 24,
          height = 136,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 20,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 1216,
          width = 120,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 21,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1176,
          width = 32,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 22,
          name = "",
          type = "",
          shape = "rectangle",
          x = 328,
          y = 1536,
          width = 16,
          height = 56,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 23,
          name = "",
          type = "",
          shape = "rectangle",
          x = 968,
          y = 1440,
          width = 16,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 25,
          name = "",
          type = "",
          shape = "rectangle",
          x = 864,
          y = 1160,
          width = 32,
          height = 56,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 26,
          name = "",
          type = "",
          shape = "rectangle",
          x = 864,
          y = 1328,
          width = 32,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 27,
          name = "",
          type = "",
          shape = "rectangle",
          x = 896,
          y = 1088,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 28,
          name = "",
          type = "",
          shape = "rectangle",
          x = 960,
          y = 992,
          width = 24,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 29,
          name = "",
          type = "",
          shape = "rectangle",
          x = 648,
          y = 1560,
          width = 48,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 30,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1000,
          y = 544,
          width = 16,
          height = 56,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 31,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1256,
          y = 680,
          width = 24,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 33,
          name = "",
          type = "",
          shape = "rectangle",
          x = 520,
          y = -64,
          width = 264,
          height = 392,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 34,
          name = "",
          type = "",
          shape = "rectangle",
          x = 592,
          y = 344,
          width = 192,
          height = 224,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 35,
          name = "",
          type = "",
          shape = "rectangle",
          x = 688,
          y = 472,
          width = 96,
          height = 432,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 36,
          name = "",
          type = "",
          shape = "rectangle",
          x = 616,
          y = 600,
          width = 88,
          height = 312,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 37,
          name = "",
          type = "",
          shape = "rectangle",
          x = 552,
          y = 688,
          width = 88,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 38,
          name = "",
          type = "",
          shape = "rectangle",
          x = 784,
          y = 472,
          width = 80,
          height = 488,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 39,
          name = "",
          type = "",
          shape = "rectangle",
          x = 840,
          y = 712,
          width = 72,
          height = 304,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 41,
          name = "",
          type = "",
          shape = "rectangle",
          x = 904,
          y = 744,
          width = 72,
          height = 200,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 43,
          name = "",
          type = "",
          shape = "rectangle",
          x = 752,
          y = -32,
          width = 128,
          height = 56,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 44,
          name = "",
          type = "",
          shape = "rectangle",
          x = 992,
          y = -32,
          width = 1024,
          height = 56,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 46,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1904,
          y = -36,
          width = 128,
          height = 2040,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 47,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 1288,
          width = 160,
          height = 168,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 48,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 1256,
          width = 96,
          height = 136,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 49,
          name = "",
          type = "",
          shape = "rectangle",
          x = 432,
          y = 1392,
          width = 72,
          height = 128,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 50,
          name = "",
          type = "",
          shape = "rectangle",
          x = 504,
          y = 1416,
          width = 64,
          height = 112,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 51,
          name = "",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 1232,
          width = 72,
          height = 96,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 52,
          name = "",
          type = "",
          shape = "rectangle",
          x = 432,
          y = 1208,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 53,
          name = "",
          type = "",
          shape = "rectangle",
          x = 440,
          y = 1168,
          width = 96,
          height = 72,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 54,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1248,
          y = 896,
          width = 160,
          height = 192,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 55,
          name = "",
          type = "",
          shape = "rectangle",
          x = 800,
          y = 104,
          width = 72,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 56,
          name = "",
          type = "",
          shape = "rectangle",
          x = 992,
          y = 320,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 57,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1056,
          y = 192,
          width = 32,
          height = 72,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 58,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1000,
          y = 440,
          width = 56,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 59,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1088,
          y = -16,
          width = 312,
          height = 120,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 60,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1168,
          y = -16,
          width = 208,
          height = 296,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 61,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1064,
          y = 360,
          width = 152,
          height = 88,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 62,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1064,
          y = 360,
          width = 80,
          height = 208,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 63,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1008,
          y = 480,
          width = 128,
          height = 72,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 65,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1280,
          y = 360,
          width = 224,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 66,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1408,
          y = 224,
          width = 96,
          height = 216,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 67,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1424,
          y = -16,
          width = 64,
          height = 184,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 68,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1528,
          y = 8,
          width = 464,
          height = 384,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 69,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1712,
          y = 280,
          width = 224,
          height = 200,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 70,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1760,
          y = 1320,
          width = 184,
          height = 216,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 71,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1832,
          y = 1296,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 72,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1824,
          y = 864,
          width = 96,
          height = 248,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 73,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1312,
          y = 488,
          width = 384,
          height = 312,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 74,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1824,
          y = 456,
          width = 128,
          height = 424,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 75,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1192,
          y = 896,
          width = 16,
          height = 72,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = false
          }
        },
        {
          id = 76,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1192,
          y = 1480,
          width = 16,
          height = 56,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 77,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1472,
          y = 1512,
          width = 32,
          height = 56,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 78,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1064,
          y = 1104,
          width = 96,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 79,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1280,
          y = 1400,
          width = 112,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 80,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1600,
          y = 1448,
          width = 160,
          height = 88,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 81,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1704,
          y = 744,
          width = 120,
          height = 88,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 82,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1448,
          y = 1296,
          width = 184,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 83,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1672,
          y = 1384,
          width = 56,
          height = 24,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 84,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1440,
          y = 1104,
          width = 32,
          height = 24,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 85,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1280,
          y = 776,
          width = 32,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 86,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1592,
          y = 1064,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 87,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1344,
          y = 792,
          width = 344,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        }
      }
    }
  }
}
