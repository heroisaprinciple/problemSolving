# frozen_string_literal: true

class Item

  class << self # same as def self.show
    def show
      puts "Class method show invoked"
    end
  end

end

Item.show