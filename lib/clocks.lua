-- clocks

function redraw_clock()
  while true do
    clock.sleep(1/15)
    redraw()
  end
end

function scan_clock()
  while true do
    clock.sleep(1/5)
    scan.x = math.random((-1024 + 128), 0)
    scan.y = math.random((-512 + 64), 0)
  end
end

function player_clock()
  while true do
    clock.sleep(1/15)
    player.frame = player.frame + 1
    player.level = util.clamp(player.frame % 15, 1, 15)
  end
end

function movement_clock()
  while true do
    clock.sleep(1/5)
    if map.x > movement.destination_x then
      map.x = map.x + 1
    end
    if map.x < movement.destination_x then
      map.x = map.x - 1
    end
    if map.y > movement.destination_y then
      map.y = map.x + 1
    end
    if map.y < movement.destination_y then
      map.y = map.y - 1
    end
  end
end

function cleanup()
  clock.cancel(redraw_clock_id)
  clock.cancel(scan_clock_id)
  clock.cancel(player_clock_id)
end
