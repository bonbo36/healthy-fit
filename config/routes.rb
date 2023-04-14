Rails.application.routes.draw do
  get 'meals/index'
root to: "meals#index"
resources :meals, only: [:index, :new]
end
