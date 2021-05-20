-- Manages the game, the same as parchis but
-- in a different file to facilitate version control
function _init()
  first_dice=make_dice()
  second_dice=make_dice()
end

function _update()
  if btnp(5) then
    throw_dice(first_dice)
    throw_dice(second_dice)
  end
end

function _draw()
  cls()
  print("pico-parchis")
  draw_dice(first_dice, 45, 59)
  draw_dice(second_dice, 67, 59)
end