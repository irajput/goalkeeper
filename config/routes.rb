Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
  
  
    root "teams#index", as: "home"
    get 'about' => 'teams#about', as: 'about'
  
    resources :teams do
      resources :users
      resource :timeline
    end
  
  

end
