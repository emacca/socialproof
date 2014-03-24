class PagesController < ActionController::Base
  def index
    @users = User.all
  end
  def socialhandles
    @users = User.all
  end
end
