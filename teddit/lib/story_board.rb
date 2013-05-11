class StoryBoard
  @@stories = []
#define a method:
  def self.add_story(story)
  @@stories << story

end

def self.stories
	@@stories
end
end
