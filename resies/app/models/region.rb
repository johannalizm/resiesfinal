class Region < ApplicationRecord
  has_many :instituciones
  belongs_to :paise
end
