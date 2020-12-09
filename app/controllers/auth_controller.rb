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
    @error_message = I18n.t("errors.auth0.#{message.to_sym}", raise: true)
  rescue I18n::MissingTranslationData
    Rollbar.log(:info, "Unknown response from Auth0", message)
    @error_message = I18n.t("errors.auth0.generic")
  end

  def logout
    reset_session
    redirect_to logout_url.to_s
  end
end
