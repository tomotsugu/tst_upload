Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  root "sessions#new"
  resources :users
  resources :blogs do
    collection do
      post :confirm
    end
  end
  resources :favorites, only: [:create, :destroy]
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
