require "rails_helper"

RSpec.describe "logging out of Auth0", type: :request do
  scenario "success" do
    host! "test.local"
    mock_successful_authentication
    delete "/logout"

    expect(request).to redirect_to("https://stand-in.local/v2/logout?returnTo=http%3A%2F%2Ftest.local%2F&client_id=stand-in")
  end
end
