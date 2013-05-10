class Story
  attr_accessor :title, :category
   def initialize (title, category)
     @title = title
     @category = category
     @upvotes = 1
   end
   def to_s
    puts "Story: #{@title}, Categort: #{@category}, Current Upvotes: #{@upvotes}"
  end
end
