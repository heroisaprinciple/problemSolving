# frozen_string_literal: true

'''
The purpose of this kata is to work out just how many bottles of duty free whiskey you would have
to buy such that the saving over the normal high street price would effectively cover the cost of your holiday.

You will be given the high street price (normPrice), the duty free discount (discount)
and the cost of the holiday.

For example, if a bottle cost £10 normally and the discount in duty free was 10%,
you would save £1 per bottle. If your holiday cost £500, the answer you should return would be 500.
All inputs will be integers. Please return an integer. Round down.
'''

def duty_free(price, discount, holiday_cost)
  # price for one bottle
  after_discount = price * (discount / 100.to_f)
  # how much bottles do we need
  (holiday_cost / after_discount).floor
end

p duty_free(12, 50, 1000) # 166
p duty_free(17, 10, 500) # 294