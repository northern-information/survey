-- graphics

function redraw()
  screen.clear()
  draw_map()
  draw_scan()
  draw_course()
  draw_player()
  draw_reticle()
  screen.update()
end

function draw_map()
  screen.display_png(map.png, map.x, map.y)
end

function draw_scan()
  screen.blend_mode('add')
  screen.display_png(scan.png, scan.x, scan.y)
  screen.blend_mode('over')
end

function draw_player()
  screen.level(0)
  screen.circle(player.x, player.y, 6)
  screen.fill()

  screen.level(player.level)
  screen.circle(player.x, player.y, 4)
  screen.fill()

  screen.level(0)
  screen.rect(69, 23, 13, 7)
  screen.fill()

  screen.level(15)
  screen.move(70, 29)
  screen.text("CCI")
end

function draw_reticle()
  local x, y = reticle.x, reticle.y
  -- black border
  screen.level(0)
  screen.rect(x - 6, y - 2, 13, 5)
  screen.rect(x - 2, y - 6, 5, 13)
  screen.fill()
  -- white
  screen.level(15)
  screen.rect(x - 5, y, 11, 1)
  screen.rect(x, y - 5, 1, 11)
  screen.fill()
end

function draw_course()
  screen.level(util.clamp(player.frame % 15, 1, 15))
  screen.move(player.x, player.y)
  screen.line(reticle.x, reticle.y)
  screen.stroke()
end


-- cartesian to norns
function c2n(cx, cy)
  return cx + 64, cy + 32
end

-- norns to cartesian
function n2c(nx, ny)
  return nx - 64, ny - 32
end