class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include Pundit

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized


  private
  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end

  def user_not_authorized(exception)
    flash[:error] = "Access denied."
    redirect_to(request.referrer || root_path)
  end
end
