# pf-authentication-api-sample

Rudimentary example of using the PingFederate Authentication API.  Intended for a quick demonstration or for education - not for production.

Illustrates some of the flows described in this documentation: https://docs.pingidentity.com/bundle/integrations/page/fus1609884696127.html

# Supported flows

* Identifier First
* Username and Password Required
* Alternate Authentication Sources
* PingOne MFA Device Selection
* PingOne MFA OTP Required

# Installation

## deploy on your own web server

You could copy the contents of dist/ and throw them on your own web server for something quick and easy

## build image from source and run as a container locally (why are you doing this?)

``docker build --no-cache -t pf-authentication-api-sample .``

``docker run -p 80:80 pf-authentication-api-sample``

## deploy from docker hub locally (this is what you should be doing)

``docker run -p 80:80 michaeldeller/pf-authentication-api-sample``

## deploy from docker hub and expose with load balancer on kubernetes (even better)

``kubectl create deployment --image=michaeldeller/pf-authentication-api-sample friendlyname-pf-authentication-api-sample``

``kubectl expose deployment friendlyname-pf-authentication-api-sample --port=80 --target-port=80 --type=LoadBalancer --name=friendlyname-pf-authentication-api-sample``

# Configuration

* Edit index.html and specify your PingFederate Hostname
* Enable authentication api in your PingFederate instance and specify the URL where index.html is now hosted