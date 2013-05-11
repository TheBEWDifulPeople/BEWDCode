class Story

#Need to make accessors

attr_accessor :title, :category, :upvotes

#initialize 

def initialize(title, category)
  #need instance variables
  @title = title
  @category = category
end

def to_s
	"Story: #{title}, Category: #{category}, Upvotes: #{upvotes}."
	end

def upvote
	@upvotes += 1
end

def downvote
	@downvotes -= 1
end


end
