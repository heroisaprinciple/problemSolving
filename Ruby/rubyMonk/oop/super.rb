# frozen_string_literal: true

class Base
  def initialize
    @foo = 10
    @bar = "Hello"
  end
end

class Specialization < Base
  def initialize
    super # make sure to use Base defaults
    @bar = "Welcome" # change some behaviour
  end
end

base = Base.new
p base #<Base:0x000001934f421560 @foo=10, @bar="Hello">
spec = Specialization.new
p spec # #<Specialization:0x000001934f421358 @foo=10, @bar="Welcome">
