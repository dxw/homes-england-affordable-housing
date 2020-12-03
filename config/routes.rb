# frozen_string_literal: true

Rails.application.routes.draw do
  get "health_check" => "application#health_check"
  root to: "visitors#index"

  get "dashboard" => "dashboard#show"

  get "auth/oauth2/callback" => "auth#callback"
  get "auth/failure" => "auth#failure"
  delete "logout" => "auth#logout", :as => :logout
end
