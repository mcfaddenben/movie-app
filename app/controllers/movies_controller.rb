class MoviesController < ApplicationController
    def all_movies
        movies =  Movie.all
        render json: movies
    end
    def last_movie
        movie = Movie.last
        render json: movie
    end
end
