class Telepath
  @@telepaths = []
  def initialize(name)
    @name = name
    @@telepaths << self
  end

  def telepaths
    @@telepaths
  end

  def to_s
    @name
  end    
end 

professor_x = Telepath.new("Professor Xavier")
jean_grey = Telepath.new("Jean Grey")

puts jean_grey.telepaths

