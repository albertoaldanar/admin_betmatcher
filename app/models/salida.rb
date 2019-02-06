class Salida < ApplicationRecord
   has_many :materials, dependent: :destroy

  def self.search(search)
      if search && search.length > 0
        salida = Salida.where(nombre: search)
      else
        Salida.where(terminada: nil).order('id DESC')
      end
  end

  def self.searchT(search)
      if search && search.length > 0
        salida = Salida.where(nombre: search)
      else
        Salida.where(terminada: true).order('id DESC')
      end
  end

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |product|
        csv << product.attributes.values_at(*column_names)
      end
    end
  end

end
