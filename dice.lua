function make_dice()
  local dice = {
    n=1,
    sp=16
  }
  return dice
end

function throw_dice(dice)
  local sides = {
    1,
    2,
    3,
    4,
    5,
    6
  }
  dice.n = rnd(sides)
  dice.sp = 16 + (2 * dice.n) -2
end

function draw_dice(dice, x, y) 
 spr(dice.sp, x, y, 2, 2)
end