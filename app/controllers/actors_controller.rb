class ActorsController < ApplicationController
    def first_actor_method
        actor = Actor.first

        render json: actor
    end
end
