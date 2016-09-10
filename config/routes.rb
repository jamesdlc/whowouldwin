Rails.application.routes.draw do
root to: "users#index"

get '/signup' => "users#new", as: "new_user"
post '/users' => "users#create"
get '/users/:id' => "users#show", as: "user"
get '/login' => "sessions#new", as: "login"
get '/logout' => "sessions#destroy"
post '/sessions' => "sessions#create"
get '/users/:id/edit' => "users#edit", as: "edit_user"
patch '/users/:id' => "users#update"

end
