class Mascotum < ApplicationRecord
  belongs_to :doctor
  belongs_to :duenio
  has_one_attached :image
end
