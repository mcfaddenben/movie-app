class MovieGenresController < ApplicationController
    def create
        movie_genre = MovieGenre.new(
        movie_id: params[:movie_id],
        genre_id:  params[:genre_id]
        )
        if movie_genre.save
            render json: {message: "saved successfully"}
        else
            render json: {message: "bad request"}
        end
    end
end
