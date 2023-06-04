# frozen_string_literal: true
'''
As you can see, the values for @foo_count are different for both Foo and Bar.
This means that both classes are operating on different @foo_count.
Note that we have to initialize @foo_count in all inherited classes.
'''
class Foo
  @foo_count = 0

  def self.increment_counter
    @foo_count += 1
  end

  def self.current_count
    @foo_count
  end
end

class Bar < Foo
  @foo_count = 100
end

Foo.increment_counter
Bar.increment_counter
p Foo.current_count # 1
p Bar.current_count # 101
