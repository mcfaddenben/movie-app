class ActorsController < ApplicationController
    def index
        actors = Actor.all.order(age: :desc)
        render json: actors
    end
    def show
        actor = Actor.find(params[:id])
        render json: actor
    end
    def create
        actor = Actor.new(
            first_name:  params[:first_name],
            last_name:  params[:price],
            known_for: params[:known_for],
            movie_id: params[:movie_id]
        )
        actor.save
        render json: actor
    end
    def update
        actor = Actor.find(params[:id])
        actor.first_name = params[:first_name] || actor.first_name
        actor.last_name = params[:last_name] || actor.last_name
        actor.known_for = params[:known_for] || actor.known_for
        actor.age = params[:age] || actor.age
        actor.gender = params[:gender] || actor.gender
        actor.movie_id = params[:movie_id] || actor.movie_id
        actor.save
        render json: actor
    end
    def destroy
        actor = Actor.find(params[:id])
        actor.destroy
        render json: {message: "Actor deleted"}
    end
end
