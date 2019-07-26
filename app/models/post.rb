class Post < ApplicationRecord
    # dependent 필수
    has_many :likes, dependent: :destroy
    has_many :users, through: :likes
    
    # dependent 필수
    has_many :comments, dependent: :destroy
end
