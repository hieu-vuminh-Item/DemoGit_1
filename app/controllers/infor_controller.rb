class InforController < ApplicationController
  def infor_get
    user = session[:user]
    if user == nil || user == ""
      redirect_to login_path
    end
  end
end
