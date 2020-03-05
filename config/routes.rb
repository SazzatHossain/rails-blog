Rails.application.routes.draw do

  resources :welcome
  resources :posts do
    resources :comments

  end

end
