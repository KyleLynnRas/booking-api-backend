class User < ApplicationRecord
    has_many :reviews 
    has_many :performances, through: :reviews
end
