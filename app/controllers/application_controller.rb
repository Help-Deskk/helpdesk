class ApplicationController < ActionController::API
  include Pundit::Authorization

  before_action :authenticate_devise_api_token!

  rescue_from Pundit::NotAuthorizedError, with: :render_unauthorized

  def render_unauthorized(message = "Unauthorized")
    render json: { error: message }, status: :unauthorized
  end

  def current_user
    current_devise_api_user
  end
end
