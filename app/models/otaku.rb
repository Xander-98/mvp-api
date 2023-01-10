class Otaku < ApplicationRecord
  belongs_to :user
  has_many :animes
  validates :user_id, presence: true
  validates :anime_id, presence: true, uniqueness: true
end
