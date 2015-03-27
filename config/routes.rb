Rails.application.routes.draw do

  root :to => 'users#index'
  resources :users do
    resources :posts
  end
<<<<<<< HEAD

  resources :posts do
    resources :comments
  end
=======
>>>>>>> 2eea6d9d452ed3045f595a213d7604ac0ef8cd85
end
