class InforController < ApplicationController
  def infor_get
    user = session[:user]
    if user == nil || user == ""
      redirect_to login_path
    else
      @a = Account.where(:username => user).first
      if @a.role_id == 1
        @listacc = Account.all
      end
    end
  end

  def logout
    session[:user] = nil
    redirect_to login_path
  end
end
