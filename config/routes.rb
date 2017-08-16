Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: 'accounts#index'
        resources :accounts, only: [:index, :new,:create] do
            member do
                  #get '/portfolios', to: 'portofolios#index'
                  
            resources :portfolios, only: [:new,:create] do
                member do
                      get '/', to: 'portfolios#index'
                end
        end
            end
        end
        
end
