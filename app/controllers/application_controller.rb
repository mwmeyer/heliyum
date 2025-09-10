class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  helper_method :admin?

  private

  def admin?
    authenticate_with_http_basic do |username, password|
      username == (ENV['ADMIN_USERNAME'] || 'admin') &&
      password == (ENV['ADMIN_PASSWORD'] || 'password')
    end
  end
end
