Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :pages, defaults: { format: :json }
    end
  end
end
