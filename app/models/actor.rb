class Actor < ApplicationRecord

    belongs_to :movie

    def movie_title
        movie.plot
    end

    validates :first_name, length: {minimum: 2}
    validates :last_name, length: {minimum: 2}
    validates :known_for, presence: true
    validates :age, numericality: {greater_than_or_equal_to: 13}

end
