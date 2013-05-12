class Movie
  attr_reader :title, :year, :mpaa_rating, :abridged_cast
  def initialize(title, year, mpaa_rating, abridged_cast)
	@title = title
	@year = year
	@mpaa_rating = mpaa_rating
	@abridged_cast = abridged_cast
  end
end
