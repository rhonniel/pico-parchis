function make_dice()
  local dice = {
    n=1,
    sp=16,
    throwing_dice=false,
    throwed_count=80
  }
  return dice
end

function generate_dice(dice)
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


function throw_dice(dice)
  generate_dice(dice)
  if dice.throwed_count > 0 then
    dice.throwed_count -= 1
  else 
    dice.throwing_dice = false
    dice.throwed_count = 80
  end
end

function draw_dice(dice, x, y) 
 spr(dice.sp, x, y, 2, 2)
end