class StoriesController < ApplicationController

	def index
		@stories = Story.all
	end

	def search
		query = params[:q]
 		@stories = Story.search_for(query)
	end


	def new
		@stories = Story.new
	end

	def show 
		@stories = Story.find(params[:id])
  		rescue 
  		redirect_to root_path
	end

	def create 
		 safe_params = params.require('story').permit(:title, :link, :upvotes, :category)
  	 	@stories = Story.create(safe_params)
  	 	if @stories.save
  	     redirect_to @stories
       else
        render 'new'
      end
	end

	def edit
    	@stories = Story.find(params[:id])
  	end

  	def update 
    safe_params = params.require('story').permit(:title, :link, :upvotes, :category)
    @stories = Story.find(params[:id])
    @stories.update params.require('story').permit(:title, :link, :upvotes, :category)
    redirect_to @stories
  end

end


