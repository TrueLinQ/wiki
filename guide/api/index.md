---
layout: default
title: API Integration
description : 
nav_order: 2
has_children: true
---
# API Integration
Before you can integrate or access any of our APIs, you must first register  your business and create a **_NodeClient_**.
( For complete guide visit [Full Documentation](/docs/server-contak/public2/index.html#send-message) )

## NodeClient
_NodeClient_ is an application deployed locally in your enviroment to encrypt the outbound message from business end before it leaves your network and dispatched to our centralised routing server. 

#### Lets say your locally hosted instance is available at
> https://nodeclient.yourcompany.com

#### API URL
> https://nodeclient.yourcompany.com/entoc/send


##### For On-Cloud _NodeClient_ API URL
>  https://&lt;CLIENT_ID&gt;.otpalerts.com/entoc/send

#### Communication
> BusinessApplication &rarr; NodeClient &rarr; RoutingServer &rarr; Customer 


## Authorization
Currently, there is only 1 method of authorization available. 
 * API KEY (To create API Key [Visit](/docs/guide/api/1_create_api.html) )

Every request to the _NodeClient_ needs to be authorized using an API Key authentication. Adding **x-api-key** in the header with your unique API Key as a value will grant access.
Example for POST request with curl:
```bash
curl \
    -H "x-api-key: {{your-api-key}}" \
    -X POST \
    https://nodeclient.yourcompany.com/entoc/send \
    -H "Accept: application/json"
    ...
```


