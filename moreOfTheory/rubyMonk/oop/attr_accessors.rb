# frozen_string_literal: true

class Item
  attr_accessor :description
  attr_accessor :color
  def initialize(description, color)
    @description = description
    @color = color
  end
end

item = Item.new('desc', 'white')
p item.description  # "desc"
p item.color # "white"

item.description = 'asc'
item.color = 'black'
p item.description # asc
p item.color # black