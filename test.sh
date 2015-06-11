#!/usr/bin/env bash

echo error protocol:
echo =============
curl localhost:443
echo =============
echo less cert
curl https://localhost:443
echo =============
echo insecure test:
echo =============
curl -k https://localhost:443

