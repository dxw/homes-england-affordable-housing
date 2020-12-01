class AuthController < ApplicationController
  include LogoutHelper

  def callback
    # This stores all the user information that came from Auth0
    # and the IdP
    session[:userinfo] = request.env.fetch("omniauth.auth")

    # Redirect to the URL you want after successful auth
    redirect_to dashboard_path
  end

  def failure
    message = request.params["message"]
    @error_message = t("errors.auth0.#{message.to_sym}")
  end

  def logout
    reset_session
    redirect_to logout_url.to_s
  end
end
