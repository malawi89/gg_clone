Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :areas, except: [:destroy, :edit, :update] do
      get 'weekly_email', to: 'areas#weekly_email'
      resources :runners, except: [:destroy, :edit, :update]
  end
end
