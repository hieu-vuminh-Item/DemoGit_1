class SignupController < ApplicationController
  def signup_get
  end

  def signup_post
    user = params[:user]
    pass = params[:pass]
    a = Account.where(:username => user).first
    if a != nil
      flash[:notice] = "Username has already used"
      redirect_to signup_path
    else
      Account.create(username: user, password: pass, role_id: 2, status_id: 1)
      flash[:notice] = "Signup sucessful"
      redirect_to login_path
    end
  end
end
