# 14. use-a-server-side-session-store

Date: 2020-12-08

## Status

Accepted

## Context

We have a CookieOverflow error that is prompting this work. It occurs when the
service is storing more than 4KB of data within the cookie. A user signing in
via Auth0 on production receives an error message.

A current work-around is to delete your cookie and sign in again.

Rails acknowledges [1] that the default cookie storage is fast but prone to this
error.

## Decision

Use Redis as a server-side session store.

## Consequences

This gem is maintained by Redis and is a popular choice for session management.

Redis will encrypt the session data at rest and serve the session back to the
users browser for them to decrypt. Not having it unencrypted at rest would
provide more defence in depth as Redis is already protected from public access
at a network level.

[1] https://guides.rubyonrails.org/security.html#session-storage
