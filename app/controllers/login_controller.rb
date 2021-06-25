class LoginController < ApplicationController
  def login_get

  end

  def login_post
    user = params[:user]
    pass = params[:pass]
    @a = Account.where(:username =>  user, :password => pass).first
    if @a == nil
      flash[:notice] = "Account doesn't exist"
      redirect_to login_path
    elsif @a.status_id == 2
      flash[:notice] = "Your account was inactive by admin"
      redirect_to login_path
    else
      session[:user] = @a.username
      redirect_to infor_path
    end
  end
end
