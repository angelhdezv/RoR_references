class Recetum < ApplicationRecord
  belongs_to :Doctor,  optional: true
  belongs_to :Mascota,  optional: true
end
