class Post < ApplicationRecord
    has_many :likes, dependent: :destroy
    has_many :users, through: :likes
    
    has_many :comments
end
