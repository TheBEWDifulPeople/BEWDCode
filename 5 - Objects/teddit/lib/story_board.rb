class StoryBoard
  attr_accessor :stories
  @stories = []
  def self.add_story(story)
    @stories << story
  end
  def self.stories
    @stories
  end
end
