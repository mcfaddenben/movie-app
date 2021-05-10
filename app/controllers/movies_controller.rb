class MoviesController < ApplicationController
    def all_movies
        movies =  Movie.all
        render json: movies
    end
    def last_movie
        movie = Movie.last
        render json: movie
    end
    def movie_id
        number = params[:id_number].to_i
        movie = Movie.find_by(id: number)
        render json: {output: movie.to_json}
    end
end
