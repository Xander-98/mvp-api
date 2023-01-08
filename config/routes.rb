Rails.application.routes.draw do
  post "/otaku" => "otakus#new"
  get "/animes" => "otakus#all_anime"
  get "/search/:search" => "otakus#search_anime"
  post "/signup" => "users#create"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
