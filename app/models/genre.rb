class Genre < ApplicationRecord
    has_many :stories
    has_many :users, through: :stories, dependent: :destroy
end
