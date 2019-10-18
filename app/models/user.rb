class User < ApplicationRecord
    has_many :stories, dependent: :destroy
    has_many :genres, through: :stories, dependent: :destroy
end
