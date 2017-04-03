return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.18.2",
  orientation = "orthogonal",
  renderorder = "left-down",
  width = 10,
  height = 10,
  tilewidth = 64,
  tileheight = 64,
  nextobjectid = 6,
  properties = {},
  tilesets = {
    {
      name = "pause",
      firstgid = 1,
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "../pause.png",
      imagewidth = 640,
      imageheight = 640,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 100,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "liv",
      x = 0,
      y = 0,
      width = 10,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
        11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
        41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
        51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
        61, 62, 63, 64, 65, 66, 67, 68, 69, 70,
        71, 72, 73, 74, 75, 76, 77, 78, 79, 80,
        81, 82, 83, 84, 85, 86, 87, 88, 89, 90,
        91, 92, 93, 94, 95, 96, 97, 98, 99, 100
      }
    },
    {
      type = "objectgroup",
      name = "impassable",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 2,
          name = "",
          type = "",
          shape = "rectangle",
          x = -1,
          y = 0,
          width = 641,
          height = 11,
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
          x = -1,
          y = 1,
          width = 11,
          height = 639,
          rotation = 0,
          visible = true,
          properties = {
            ["Impassable"] = true
          }
        },
        {
          id = 4,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 634,
          width = 638,
          height = 7,
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
