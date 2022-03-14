Rails.application.routes.draw do
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    # Defines the root path route ("/")
    # root "articles#index"

    resources :users do
        resources :emergencies, controller: :contacts, type: 'Emergency'
        resources :friends, controller: :contacts, type: 'Friend'
    end
    root to: 'users#index'
end
