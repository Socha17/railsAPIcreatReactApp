Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  scope '/api' do
    resources :drinks
    resources :ingredients do
      collection do
        get 'ingredients_description'
      end
    end

  end
end
