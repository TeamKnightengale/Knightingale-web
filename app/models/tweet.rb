class Tweet < ActiveRecord::Base
	has_many :expanded_urls

	def self.search(query)
		if query
			self.where('text LIKE ?', "%#{query}%")
		else
			self.all
		end
	end
end
