class User < ApplicationRecord
  has_many :otakus, class_name: "Anime"
end
