class Category < ApplicationRecord
	has_many :quotecategories, dependent: :destroy
	has_many :quotes, through: :quotecategories
end
