class Otaku < ApplicationRecord
  belongs_to :user
  has_many :animes
  include PgSearch::Model
  multisearchable against: [:title, :url]
end
