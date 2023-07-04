def growing_plant(upSpeed, downSpeed, desiredHeight)
  num = 0
  days = 0

  while num < desiredHeight
    days += 1
    num += upSpeed
    break if num >= desiredHeight

    num -= downSpeed
  end
  days
end

p(growing_plant(100,10,910)) # 10
p(growing_plant(10,9,4)) # 1
p(growing_plant(5,2,5)) # 1
p(growing_plant(5,2,6)) # 2