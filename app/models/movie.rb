class Movie < ApplicationRecord
    # has_many :reviews, :dependent => :destroy
    has_many :reviews
    has_many :users, :through => :reviews
end


