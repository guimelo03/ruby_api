Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  resources :kinds

  api_version(:module => "V1", :parameter => {:name => "version", :value => "1"}) do
    resources :contacts do
      resource :kind, only: [:show]
      resource :kind, only: [:show], path: 'relationship/kind'

      resource :phones, only: [:show]
      resource :phones, only: [:show], path: 'relationship/phones'
      
      resource :phone, only: [:update, :create, :destroy]
      resource :phone, only: [:update, :create, :destroy], path: 'relationship/phones'

      resource :address, only: [:show, :update]
      resource :address, only: [:show, :update], path: 'relationship/address'
    end
  end
  

  api_version(:module => "V2", :parameter => {:name => "version", :value => "2"}) do
    resources :contacts do
      resource :kind, only: [:show]
      resource :kind, only: [:show], path: 'relationship/kind'

      resource :phones, only: [:show]
      resource :phones, only: [:show], path: 'relationship/phones'
      
      resource :phone, only: [:update, :create, :destroy]
      resource :phone, only: [:update, :create, :destroy], path: 'relationship/phones'

      resource :address, only: [:show, :update]
      resource :address, only: [:show, :update], path: 'relationship/address'
    end
  end
  
  get "up" => "rails/health#show", as: :rails_health_check
end
