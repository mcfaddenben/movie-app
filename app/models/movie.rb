class Movie < ApplicationRecord
    validates :title, presense: true
    validates :year, length: 4, numericality: true
    validates :plot, presence: true
    validates :director, presence: true
end
