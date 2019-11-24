class Tratamiento < ApplicationRecord
  belongs_to :receta,  optional: true
  belongs_to :medicamento,  optional: true
end
