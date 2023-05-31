---
layout: default
parent: Sign In with trueLinQ
title : scops
nav_order: 5
has_children: true
---
# Possible values for scope
New members logging in to your service for the first time will need to follow the Authenticating with OAuth 2.0 Guide. When requesting an authorization code in Step 2 of the OAuth 2.0 Guide, make sure to request the *user.name, user.email, user.phone* scopes!

|Permission Name	| Description   |
|   -               |   -           |
| user.name         |   Public name of user on public profile         |
| user.email        |   Email Id  with user's consent             |
| user.phone        |   Phone number with user's consent            |

After successful authentication, you will acquire an access token that can be used in the next step of the sign-in process.

