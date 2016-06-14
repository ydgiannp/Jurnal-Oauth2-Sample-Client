class HomeController < ApplicationController
  def index
    if params[:access_token].present?
      @access_token = params[:access_token]
      @refresh_token = params[:refresh_token]
      @refresh_in = params[:refresh_in]
    end

    # @access_token = "12312312"
    # @refresh_token = "12312"

    # https://54.251.142.144:8443
    @authorize_link="http://ppe-jurnal-app-2.elasticbeanstalk.com/authorize_apps/new"
    # @authorize_link="http://localhost:3000/authorize_apps/new"
    # @client_id =  "58b31de6d61a467786a447fc002fd1d1"
    @client_id =  "72873d74d5c741489e80a7302f7beb73"
  end
end