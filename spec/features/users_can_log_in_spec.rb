require "rails_helper"

feature "Log in" do
  scenario "A user can sign in" do
    mock_successful_authentication(email: "test@example.com")

    visit root_path
    click_button "Sign in"

    expect(page).to have_content("You are logged in as test@example.com")
    expect(page).to have_button("Sign out")
  end

  scenario "An unauthenticated user cannot access the dashboard" do
    visit dashboard_path
    expect(page).to_not have_content("You are logged in")
    expect(page).to have_button("Sign in")
  end

  scenario "A user with invalid credentials sees an error" do
    mock_invalid_credentials_failure

    visit root_path
    click_button "Sign in"

    expect(page).to_not have_content("You are logged in")
    expect(page).to have_content("Invalid credentials")
  end

  scenario "An unknown error from Auth0 is logged to Rollbar" do
    mock_unknown_error_failure
    allow(Rollbar).to receive(:log)

    visit root_path
    click_button "Sign in"

    expect(page).to_not have_content("You are logged in")
    expect(page).to have_content(I18n.t("errors.auth0.generic"))
    expect(Rollbar).to have_received(:log).with(:info, "Unknown response from Auth0", "unknown_error")
  end
end
