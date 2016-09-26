class Article < ApplicationRecord

	def self.search(search)
		if search
			where("title like ?","%#{search}%")
		else 
			all
		end
	end
end
