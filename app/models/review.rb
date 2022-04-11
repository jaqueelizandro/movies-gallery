class Review < ApplicationRecord
    belongs_to :movie, dependent: :destroy
    belongs_to :user, dependent: :destroy
end