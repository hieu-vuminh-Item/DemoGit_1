Rails.application.routes.draw do
  get 'infor' => 'infor#infor_get'
  get 'singup' => 'signup#signup_get'
  get 'home/home'
  get 'login' => 'login#login_get'
  post 'login/login_post'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
