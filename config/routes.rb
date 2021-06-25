Rails.application.routes.draw do
  get 'infor' => 'infor#infor_get'
  get 'signup' => 'signup#signup_get'
  get 'home/home'
  get 'login' => 'login#login_get'
  post 'login/login_post'
  post 'signup/signup_post'
  post 'infor/logout'
  post 'edit' => 'infor#edit_post'
  get 'edit' => 'infor#edit_get'
  post 'infor/update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
