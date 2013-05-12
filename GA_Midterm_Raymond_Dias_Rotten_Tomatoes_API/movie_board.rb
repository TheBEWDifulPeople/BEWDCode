class MovieBoard
  @@movies = []
  def self.add_movie(movie)
    @@movies << movie
  end

  def self.movies
    @@movies.map do |movie|
      "Movie Title: #{movie.title}
	Year: #{movie.year}
	MPAA Rating: #{movie.mpaa_rating}
	Starring: #{movie.abridged_cast}"
    end
  end
end

