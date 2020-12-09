class AuthController < ApplicationController
  include LogoutHelper

  def callback
    # Store the uid, name and email address only for now
    auth_response = request.env.fetch("omniauth.auth")
    userinfo = {
      "uid" => auth_response[:uid],
      "info" => {
        "name" => auth_response[:info][:name],
        "email" => auth_response[:info][:email]
      }
    }
    session[:userinfo] = userinfo

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
