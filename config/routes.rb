Rails.application.routes.draw do
  post "/otaku" => "otakus#new"
  get "/animes" => "otakus#all_anime"
  get "/search/:search" => "otakus#search_anime"
  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
