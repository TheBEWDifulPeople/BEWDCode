class StoriesController < ApplicationController
  def index
    @stories = ["Dogs used to treat restless leg syndrome", "Story 2, just to make sure the loop works!"]
  end
end
