module AuthenticationHelpers
  def mock_successful_authentication(uid: "12345", name: "Sally Test", email: "test@example.com")
    OmniAuth.config.mock_auth[:auth0] = OmniAuth::AuthHash.new(
      provider: "auth",
      uid: uid,
      info: {
        name: name,
        email: email
      }
    )
  end

  def mock_invalid_credentials_failure
    OmniAuth.config.mock_auth[:auth0] = :invalid_credentials
  end

  def mock_unknown_error_failure
    OmniAuth.config.mock_auth[:auth0] = :unknown_error
  end
end
