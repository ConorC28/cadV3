class Patient < ApplicationRecord
	has_many :requests, dependent: :destroy # Allows for destroy of patient with note FK conflictions
end
