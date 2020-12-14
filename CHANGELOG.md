# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog 1.0.0].

## [Unreleased]

- Add a Github action workflow to deploy the app to Heroku staging when a branch
  is merged into `develop`
- Add basic authentication with Auth0
- Add Webpacker
- Add GOV.UK frontend package and layout
- Reduce cookie size to avoid ActionDispatch::Cookies::CookieOverflow error
- Enable Rollbar and capture unknown errors from Auth0 using Rollbar
- Create Providers model and seed database with known providers

[unreleased]: TODO
[keep a changelog 1.0.0]: https://keepachangelog.com/en/1.0.0/
