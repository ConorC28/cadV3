class Patient < ApplicationRecord
	has_many :requests, dependent: :destroy  # Allows for destroy of patient with note FK conflictions

	def self.search(search)
		if search
			where(["firstname || secondname || illness || address ILIKE ?","%#{search}%"])  #	ILIKE to make it case insensitive		
		else
			all
		end
	end
end
