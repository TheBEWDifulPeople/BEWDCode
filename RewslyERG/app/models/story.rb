class Story < ActiveRecord::Base
	validates :title, :link, :upvotes, :category, presence: true
	validates :link, :format => URI::regexp(%w(http https))
	validates :upvotes, numericality: {only_integer: true}
	validates :category, length: {minimum: 5}


	def self.search_for(query)
		where('title LIKE ? OR category LIKE ?  OR upvotes LIKE ?', "%#{query}%", "%#{query}%", "%#{query}%")
	end
end
