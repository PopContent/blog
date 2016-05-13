class ApplicationController < ActionController::Base
  before_action :set_locale

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  private

    def set_locale
      I18n.locale = params[:locale] || I18n.default_locale
    end

    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        render(:file => File.join(Rails.root, 'public/403.html'), :status => 403, :layout => false)
      end
    end

end
