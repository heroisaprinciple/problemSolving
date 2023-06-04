# frozen_string_literal: true

class Base
  def initialize
    @foo = foo_default
    @bar = bar_default
  end

  private

  def foo_default
    10
  end

  def bar_default
    "Hello"
  end
end

class Specialization < Base
  # no need to override `initialize`

  private

  # we only override what we need to
  def bar_default
    "Welcome"
  end
end

base = Base.new
p base #<Base:0x000001934f421560 @foo=10, @bar="Hello">
spec = Specialization.new
p spec # #<Specialization:0x000001934f421358 @foo=10, @bar="Welcome">