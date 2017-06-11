class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    @issue = Issue.new
  end

  def confirmation
  end

  def login
  end

  def authenticate
    Rails.logger.info "authenticate_action"
    Rails.logger.info "user name is #{params[:name]}"
    Rails.logger.info "password is #{params[:password]}"
    user = User.find_by(name: params[:name])
    user = User.find_by(name: params[:name])
    if user.try(:authenticate, params[:password])
      Rails.logger.info user
      # logic stuff
      session[:jhs_user] = user.name
      redirect_to root_url
    else
      flash[:notice] = "FAILED password/user"
      redirect_to login_url
    end
  end

  def logout
    session[:jhs_user] = nil
    redirect_to login_url
  end

  def logged_in?
    if !session[:jhs_user]
      flash[:notice] = "Please log in"
      redirect_to login_url
    end
  end

end
