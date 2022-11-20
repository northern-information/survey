include("lib/clocks")
include("lib/graphics")
include("lib/hid")

function init()
  map = {}
  map.png = "/home/we/dust/code/survey/map.png"
  map.x = 0
  map.y = 0
  scan = {}
  scan.png = "/home/we/dust/code/survey/scan.png"
  scan.x = 0
  scan.y = 0
  player = {}
  -- return 64 32
  player.x, player.y = c2n(0,0)
  player.level = 15
  player.frame = 0
  reticle = {}
  reticle.x, reticle.y = c2n(16, 16)
  reticle.shift = false
  movement = {}
  movement.destination_x = 0
  movement.destination_y = 0
  movement.current_x = 0
  movement.current_y = 0
  scan_clock_id = clock.run(scan_clock)
  player_clock_id = clock.run(player_clock)
  movement_clock_id = clock.run(movement_clock)
  redraw_clock_id = clock.run(redraw_clock)
  screen.aa(1)
  screen.font_face(1)
  screen.font_size(8)
end

-- state
function sail()
  ping_map(reticle.x, reticle.y)
  -- movement.destination_x = reticle.x
  -- movement.destination_y = reticle.y
end

function ping_map()
  print("left off here")
end