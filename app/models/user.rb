class User < ApplicationRecord
  has_many :otakus, class_name: "Anime"
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
