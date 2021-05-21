function make_dice()
  local dice = {
    n=1,
    sp=16,
    throwing_dice=false,
    throwed_count=80
  }

  function dice.generate(self) 
    local sides = {
      1,
      2,
      3,
      4,
      5,
      6
    }
    self.n = rnd(sides)
    self.sp = 16 + (2 * self.n) -2 
  end

  function dice.throw(self)
    self:generate()
    if self.throwed_count > 0 then
      self.throwed_count -= 1
    else 
      self.throwing_dice = false
      self.throwed_count = 80
    end
  end

  function dice.draw(self, x, y)
    spr(self.sp, x, y, 2, 2)
  end

  return dice
end