class Story < ApplicationRecord
belongs_to :user, optional: true 
belongs_to :genre, optional: true
end
