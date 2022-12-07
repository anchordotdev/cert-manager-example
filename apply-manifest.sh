#!/bin/sh

cat manifest.yaml |
  sed -e "s|\${ACME_HMAC_KEY}|${ACME_HMAC_KEY}|g" |
  sed -e "s|\${ACME_DIRECTORY_URL}|${ACME_DIRECTORY_URL}|g" |
  sed -e "s|\${ACME_KID}|${ACME_KID}|g" |
  sed -e "s|\${DOMAIN_NAME}|${DOMAIN_NAME}|g" |
  kubectl apply -f -
