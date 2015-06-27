Rails.application.routes.draw do
  root 'pedals#index'
  resources :pedals do
    get :autocomplete_pedal_name, on: :collection
    post :sell
  end
end
