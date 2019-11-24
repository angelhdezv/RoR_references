class Duenio < ApplicationRecord
    has_one_attached :image, :dependent => :delete_all

end
