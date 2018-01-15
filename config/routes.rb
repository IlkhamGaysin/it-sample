Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'visitors/pages#home'

  scope :user, module: :users do
    root to: "pages#home", as: :user_root
  end

  scope :visitor, module: :visitors do
    root to: "pages#home", as: :visitor_root
  end
end
