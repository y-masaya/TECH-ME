Rails.application.routes.draw do
  devise_for :users,
  controllers: {
    sessions: 'users/sessions' ,
    registrations: 'users/registrations',
    # omniauth_callbacks: 'users/omniauth_callbacks'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "articles#index"

  resources :articles do
    resources :article_comments, only: [:create, :destroy]
    collection do
      get :cafemap
      get :search
    end
  end

  resources :users do
    collection do
      get :user_logout
      get :user_signup
    end
  end

  resources :questions do
    resources :comments, only: [:create, :destroy]
  end
  
end
