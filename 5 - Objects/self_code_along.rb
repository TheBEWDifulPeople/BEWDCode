puts "#{self} Outside of the class"

class TestingSelf
  puts "#{self} Inside of the class"
  def as_an_instance
    puts "#{self} As an instance"
  end
end

ts = TestingSelf.new
ts.as_an_instance


