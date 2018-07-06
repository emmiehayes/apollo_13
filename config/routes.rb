Rails.application.routes.draw do
  resources :astronauts
  resources :space_missions
  resources :astronaut_space_missions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
