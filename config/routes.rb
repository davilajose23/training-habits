Rails.application.routes.draw do
  resources :activity_records
  resources :activity_types do
    resources :activity_records
   end
  devise_for :users
  get 'main/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'activity_types#index'
end
