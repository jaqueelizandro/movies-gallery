class Review < ApplicationRecord
    belongs_to :movie, dependent: :destroy, optional: true
    belongs_to :user, dependent: :destroy, optional: true
end