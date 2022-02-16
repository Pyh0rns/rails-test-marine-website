class Formation < ApplicationRecord
  validates :titre, presence: true
end

# , :prix, :nb_pax, :lieu, :date, :description
