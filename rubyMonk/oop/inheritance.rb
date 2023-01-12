class Person
  def speak
    puts "Hey, Tj!"
  end
  def whisper_louder
    whisper
  end

  private
  def whisper
    puts "His name's not really 'Tj'."
  end

  protected
  def greet
    puts "Hey, wassup!"
  end
end

class Me < Person
  def be_nice
    greet
  end

  def not_really
    whisper
  end
end
tj = Me.new
tj.be_nice # "Hey, wassup!"
tj.not_really