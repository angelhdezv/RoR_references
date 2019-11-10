class Recetum < ApplicationRecord
  belongs_to :Doctor
  belongs_to :Mascota
end
