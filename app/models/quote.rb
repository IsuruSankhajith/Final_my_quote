class Quote < ApplicationRecord
  belongs_to :user
  belongs_to :philosopher
  belongs_to :category
  
end
