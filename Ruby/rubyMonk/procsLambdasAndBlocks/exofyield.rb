# frozen_string_literal: true

def call_proc
  puts "Before proc"
  my_proc = Proc.new { return 2 }
  my_proc.call
  puts "After proc"
end
p call_proc # Before proc # 2

def my_method
  puts "we are in the method"
  yield
  puts "we are back in the method"
end
my_method { puts "The block is called"} # everything is printed