Rails.application.routes.draw do
  get 'login/login_get'
  get 'home/home'
  get 'login' => 'login#login_get'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
