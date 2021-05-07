Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/first_actor_path", controller: "actors", action: "first_actor_method"
  get "/all_movies" => "movies#all_movies"
  get "/last_movie" => "movies#last_movie"
end
