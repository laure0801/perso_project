class Animal < ApplicationRecord
  SPECIE = ["Dog", "Cat"]
  belongs_to :refuge
  has_many :adoptions
end
