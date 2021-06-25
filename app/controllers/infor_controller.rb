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

  def edit_post
    user = params[:user]
    @item = Account.where(:username => user).first
    @listrole = Role.all
    @liststatus = Status.all
  end

  def edit_get
    redirect_to infor_path
  end

  def update
    user = params[:username]
    pass = params[:pass]
    role = params[:role]
    status = params[:status]
    a = Account.find_by(username: user)
    a.password = pass
    a.role_id = role
    a.status_id = status
    a.save
    flash[:notice] = "Update sucessful"
    redirect_to infor_path
  end
end
