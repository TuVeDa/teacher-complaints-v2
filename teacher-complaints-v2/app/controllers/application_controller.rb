class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    @issue = Issue.new
  end

  def confirmation
  end

end
