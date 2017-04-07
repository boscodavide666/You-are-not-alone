return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.18.2",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 20,
  height = 10,
  tilewidth = 64,
  tileheight = 64,
  nextobjectid = 4,
  properties = {},
  tilesets = {},
  layers = {
    {
      type = "imagelayer",
      name = "Livello immagine 1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      image = "../../assets/Image/main.png",
      properties = {}
    },
    {
      type = "objectgroup",
      name = "Livello di oggetti 1",
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
          x = 0,
          y = -16,
          width = 1280,
          height = 32,
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
          y = 608,
          width = 1280,
          height = 32,
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
