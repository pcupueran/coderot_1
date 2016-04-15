Rails.application.routes.draw do
  root to: 'issues#index'
  resources :issues, only: [:index] do
  end
end
