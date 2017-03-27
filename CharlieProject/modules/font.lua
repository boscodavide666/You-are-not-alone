
--tabella che contiene tutte le info sulla scritta del titolo
title = {
  font = love.graphics.newFont("assets/Font/8-bit pusab.ttf", 30),
  text = "You are       alone.",
  text2 = "not"
  }

  --tabella che contiene tutte le info sulle scritte delle opzioni(non fa vedere le freccine quindi vanno inserite
  -- come immagine)

  option = {
    font = love.graphics.newFont("assets/Font/8-bit pusab.ttf", 20),
    op1 = {
      txt = "◄ Quit",
      x = 0,
      y = 400,
    },
    op2 = {
      txt = "▼ Option",
      x = 0,
      y = 450,
    },
    op3 = {
      txt = "► Start game",
      x = 0,
      y = 400,
    }
  }

  villageText = {
    font = title.font,
    text = "Questo è il villaggio",
    }

  optionText = {
    font = title.font,
    text = "Queste sono le opzioni",
    }

  function drawText(int)
    if int == 1 then
      drawOption()
      drawTitle1()
    elseif int == 2 then
      drawVillageText()
    elseif int == 3 then
      drawOptionText()
    end
  end

  function drawNot(int)
    if int == 1 then
      drawTitle2()
    end
  end

  function drawTitle1()
    love.graphics.setFont(title.font)
    love.graphics.printf(title.text, 90, 100, love.graphics.getWidth(), "center")
  end

  function drawTitle2()
  love.graphics.setFont(title.font)
  love.graphics.setColor(10, 10, 10, 255)
  love.graphics.printf(title.text2, 123, 100, love.graphics.getWidth(), "center")
  end

  function drawOption()
      love.graphics.setFont(option.font)
      love.graphics.printf(option.op1.txt, option.op1.x, option.op1.y, love.graphics.getWidth(), "left")
      love.graphics.printf(option.op2.txt, option.op2.x, option.op2.y, love.graphics.getWidth(), "center")
      love.graphics.printf(option.op3.txt, option.op3.x, option.op3.y, love.graphics.getWidth(), "right")
      love.graphics.rectangle("fill", 0, 0, 0.1, 0.1)
  end

  function drawVillageText()
  love.graphics.setFont(title.font)
  love.graphics.printf(villageText.text, 10, 10, love.graphics.getWidth(), "left")
  end

  function drawOptionText()
  love.graphics.setFont(title.font)
  love.graphics.printf(optionText.text, 10, 10, love.graphics.getWidth(), "left")
  end
