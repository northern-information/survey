-- hid

function keyboard.code(code, value)
  -- act on keydown and keyup
  if code == "RIGHTSHIFT" or code == "LEFTSHIFT" then
    reticle_shift(value)
  end

  -- only act on keydown
  if value == 0 then return end
  
  if code == "ENTER" then
    sail()
  end
  if code == "DOWN" then    
    reticle.y = reticle.y + (reticle.shift and 8 or 1)
  end
  if code == "UP" then
    reticle.y = reticle.y - (reticle.shift and 8 or 1)
  end
  if code == "RIGHT" then
    reticle.x = reticle.x + (reticle.shift and 8 or 1)
  end
  if code == "LEFT" then
    reticle.x = reticle.x - (reticle.shift and 8 or 1)
  end

end

function reticle_shift(value)
  if value == 0 then
    reticle.shift = false
  else
    reticle.shift = true
  end
end

function enc(e, d)
  if e == 1 then turn(e, d) end 
  if e == 2 then turn(e, d) end 
  if e == 3 then turn(e, d) end 
end

function turn(e, d)
  print("encoder " .. e .. ", delta " .. d)
end

function key(k, z)
  if z == 0 then return end
  if k == 2 then press_down(2) end
  if k == 3 then press_down(3) end
end

function press_down(i)
  print("press down " .. i)
end