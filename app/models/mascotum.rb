class Mascotum < ApplicationRecord
  belongs_to :doctor,  optional: true
  belongs_to :duenio,  optional: true
  has_one_attached :image, :dependent => :delete_all

end
