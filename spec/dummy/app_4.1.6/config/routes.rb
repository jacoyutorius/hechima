Rails.application.routes.draw do
  resources :users
  root "top#index"

  Hechima.load self
end
