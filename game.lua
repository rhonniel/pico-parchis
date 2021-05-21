-- Manages the game, the same as parchis but
-- in a different file to facilitate version control
function _init()
  first_dice=make_dice()
  second_dice=make_dice()
end

function _update()
  if btnp(5) then
    first_dice.throwing_dice = true
    second_dice.throwing_dice = true
  end

  if first_dice.throwing_dice then
    first_dice:throw()
  end

  if second_dice.throwing_dice then
    second_dice:throw()
  end
end

function _draw()
  cls(1)
  -- print("pico-parchis")
  -- first_dice:draw(45, 59)
  -- second_dice:draw(67, 59)
  draw_board()
end