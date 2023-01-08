class Otaku < ApplicationRecord
  belongs_to :user
  has_many :animes
end
