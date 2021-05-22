function make_board() 
  local board={}
end

function draw_board()
  --draw_house(0, 0, "blue")
  --draw_house(128-(4*8), 0, "red")
  --draw_house(0, 128-(4*8), "orange")
  --draw_house(128-(4*8), 128-(4*8), "green")
  map(0,0,0,0,16,8)
  spr(100,20,10)
  spr(100,55,32)
end

-- house code
function draw_house(x, y, color)
  local o_fill = 12
  local o_outline = 1
  local h_fill = o_fill
  local h_outline = o_outline

  if color == "red" then
    h_fill=8
    h_outline=2
  elseif color == "green" then
    h_fill=11
    h_outline=3
  elseif color == "orange" then
    h_fill=9
    h_outline=4
  end

  pal(o_fill, h_fill)
  pal(o_outline, h_outline)
  spr(64, x, y, 4, 4)
end