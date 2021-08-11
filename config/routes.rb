Rails.application.routes.draw do
  resources :gardens do
    resources :plants, only: [:create, :new]
  end
  resources :plants, only: :destroy
end
