Rails.application.routes.draw do
  resources :activity_records
  resources :activity_types do
    resources :activity_records
   end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  authenticated :user do
    root :to => 'activity_types#index'
  end
  
  root :to => redirect("/users/sign_in")
end
