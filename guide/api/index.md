---
layout: default
title: Sign In with trueLinQ
nav_order: 5
has_children: true
---
# Sign In with trueLinQ
**trueLinQ** provides login service using OAuth2.0 protocol. Leverage this power to enhance the sign-in experience of your sites and applications.

Use Sign In with trueLinQ to:
* Reduce friction and obtain more sign-ups by allowing members to Sign In with trueLinQ, without having the need to create a new account.
* Minimize the costs and time associated with implementing your own login, identity, profile management, and password management.
* Personalize your sites and applications with the latest member profiles.

## Getting Started

## Configure your application
Before we get started, you need to go to trueLinQ, and create new _Membership_ to get API keys, by clicking the _Create New Membership Program_ button. You can go to advanced settings and then generate _API Key_.

### Configure Redirect URLs
On this page, we need to add Redirect URLs. User is going to be redirected to one of these URLs (Specified in your Access Code request) after they are successfully logged in. 
Redirect (callback) URL must exists on your application server should be public and should accept POST method.


## Request an Authorization Code

To request an authorization code, you must direct the member's browser to trueLinQ's OAuth 2.0 authorization page, where the member either accepts or denies your application's permission request.

Once the request is made, one of the following occurs:

1. If it is a first-time request, the permission request timed out, or was manually revoked by the member: the browser is redirected to trueLinQ's authorization consent window.

2. If there is an existing permission grant from the member: the authorization screen is bypassed and the member is immediately redirected to the URL provided in the `redirect_uri` query parameter.

When the member completes the authorization process, the browser is redirected to the URL provided in the `redirect_uri` query parameter.

```
 GET https://app.truelinq.com/linq/oauth2/v1/authorize 
```

|   Parameter	    | Type      | Description                                       | Required  |
|   -               |   -       |   -                                               |   -       |
| response_type	| string    |	The value of this field should always be: code  |   Yes     |
| client_id	    | string    |	The API Key value generated when you registered your application.  |   Yes     |
| redirect_uri	| string    |	The URI your users are sent back to after authorization. This value must match one of the Redirect URLs defined in your application configuration. For example, https://dev.example.com/auth/truelinq/callback  |   Yes     |
| state	        | string    |	A unique string value of your choice that is hard to guess. Used to prevent CSRF. For example, state=DCEeFWf45A53sdfKef424.  |   Yes     |
| scope	| string    |	URL-encoded, space-delimited list of member permissions your application is requesting on behalf of the user. These must be explicitly requested. For example, scope=user.name,user.email,user.phone  |   Yes     |

### Sample Request
```
 GET https://app.truelinq.com/linq/oauth2/v1/authorize?response_type=code&client_id={your_client_id}&redirect_uri={your_callback_url}&state=foobar&scope=user.name,user.email,user.phone    
```

Once redirected, the member is presented with trueLinQ's authentication screen. This identifies your application and outlines the particular member permissions/scopes that your application is requesting.

## Member Approves Request
By providing valid truelinq credentials and clicking Allow, the member approves your application's request to access their member data and interact with truelinq on their behalf. This approval instructs truelinq to redirect the member to the redirect URL that you defined in your `redirect_uri` parameter.

```
 POST https://dev.example.com/auth/truelinq/callback?state=foobar&code=AQTQmah11lalyH65DAIivsjsAQV5P-1VTVVebnLl_SCiyMXoIjDmJ4s6rO1VBGP5Hx2542KaR_eNawkrWiCiAGxIaV-TCK-mkxDISDak08tdaBzgUYfnTJL1fHRoDWCcC2L6LXBCR_z2XHzeWSuqTkR1_jO8CeV9E_WshsJBgE-PWElyvsmfuEXLQbCLfj8CHasuLafFpGb0glO4d7M
```

Attached to the `redirect_uri`  are two important URL arguments that you need to read from the request:
|   Parameter	    | Type      | Description                                       | Required  |
|   -               |   -       |   -                                               |   -       |
| code	            | string    |	 The OAuth 2.0 authorization code.              |   Yes     |
| state	            | string    |	A value used to test for possible CSRF attacks. |   Yes     |

The `code` is a value that you exchange with trueLinQ for an OAuth 2.0 access token in the next step of the authentication process. For security reasons, the authorization code has a 30-minute lifespan and must be used immediately. If it expires, you must repeat all of the previous steps to request another authorization code.

{: .highlight-title }
> Warning
>
> Before you use the authorization code, your application should ensure that the value returned in the state parameter matches the state value from your original authorization code request. This ensures that you are dealing with the real member and not a malicious script. If the state values do not match, you are likely the victim of a CSRF attack and your application should return a 401 Unauthorized error code in response.