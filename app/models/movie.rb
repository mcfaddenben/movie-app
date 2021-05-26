class Movie < ApplicationRecord

    has_many :movie_genres
    has_many :genres, through: :movie_genres

    has_many :actors

    validates :title, presence: true
    validates :year, length: {is: 4}, numericality: true
    validates :plot, presence: true
    validates :director, presence: true

    def genre_names
        genres.map{|genre| genre.name}
    end
end
