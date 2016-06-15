class HomeController < ApplicationController
  def index
    if params[:access_token].present?
      session[:access_token] = params[:access_token]
      session[:refresh_token] = params[:refresh_token]
      session[:expires_in] = params[:expires_in]
    end


    #sandbox URL.
    @authorize_link="http://ppe-jurnal-app-2.elasticbeanstalk.com/authorize_apps/new"

    #this is the client_id of this sample app to the sandbox url
    @client_id =  "72873d74d5c741489e80a7302f7beb73"
  end

  def logout
    if params[:logout]
      reset_session
      redirect_to root_path
    end
  end
end