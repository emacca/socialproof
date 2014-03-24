class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :authenticate_user!

  protect_from_forgery with: :exception


  def after_sign_in_path_for(resource)
    if resource.sign_in_count == 1
      sociallinks_path
    else
      root_path
    end
  end


  protected
  def configure_permitted_parameters
    custom_fields = %i(twitter_login provider uid kind image name)
    devise_parameter_sanitizer.for(:sign_up) << custom_fields
    devise_parameter_sanitizer.for(:account_update) << custom_fields
  end


end
