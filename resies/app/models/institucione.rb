class Institucione < ApplicationRecord
  belongs_to :tipoinstitucione
  belongs_to :tiporelacione
  belongs_to :region

  has_attached_file :avatar, styles: { medium: "300x300", thumb: "50x50" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

end
