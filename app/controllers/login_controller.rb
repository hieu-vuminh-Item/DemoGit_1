class LoginController < ApplicationController
  def login_get

  end

  def login_post
    user = params[:user]
    pass = params[:pass]
    a = Account.where()
    redirect_to infor_path
  end
end
