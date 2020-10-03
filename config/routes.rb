Rails.application.routes.draw do
  #処理をすすめる順番でroutingを記述
  root 'homes#top'
  get 'home/about' => 'homes#about', as: 'about'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
  
end