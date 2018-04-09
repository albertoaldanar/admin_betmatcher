class Salida < ApplicationRecord
   has_many :materials, dependent: :destroy
end
