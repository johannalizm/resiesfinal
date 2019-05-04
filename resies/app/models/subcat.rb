class Subcat < ApplicationRecord
  has_many :questions
  belongs_to :cat
end
