# 12. deploy-to-heroku-with-github-actions

Date: 2020-11-25

## Status

Accepted

## Context

The application will be hosted on Heroku in pre-production (staging). We need to
keep the application up to date on Heroku.

## Decision

The application will be automatically deployed to the staging environment after
every merge to the `develop` branch using Github Actions.

## Consequences

The application will be continuously deployed to Heroku every time we merge to
`develop`. This makes deployment to staging a hands-off process for the
developers.
