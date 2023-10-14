class Philosopher < ApplicationRecord
	has_many :quotes, dependent: :destroy
end
