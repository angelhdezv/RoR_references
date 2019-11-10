class Tratamiento < ApplicationRecord
  belongs_to :receta
  belongs_to :medicamento
end
