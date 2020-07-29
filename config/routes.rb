Rails.application.routes.draw do
  resources :gardens do
    resources :plants, only: [:new, :create]
  end

  root "gardens#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
