class Workout < ApplicationRecord
    validates :wkname, presence: true, length: { minimum: 2 }
end
