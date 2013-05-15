require_relative '../lib/craigslist_source'

before_each do
end

describe Story do 
  it "Does not accept empty subdomain" do
    story = Story.new "Wombat sees dentist after 10 year hiatus", "Nature"
    story.title.must_equal "Wombat sees dentist after 10 year hiatus"
    story.category.must_equal "Nature"
  end

  it "has its upvotes set to 1 by default" do
    story = Story.new "Wombat sees dentist after 10 year hiatus", "Nature"
    story.upvotes.must_equal  1
  end

  it "can be upvoted and downvoted" do
    story = Story.new "Wombat sees dentist after 10 year hiatus", "Nature"
    story.upvote
    story.upvotes.must_equal 2

    story.downvote
    story.upvotes.must_equal 1
  end
end
