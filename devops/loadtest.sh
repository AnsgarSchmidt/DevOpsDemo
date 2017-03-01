#!/usr/bin/env bash
siege -v -c 100 -t 5M https://cebit2017-python.mybluemix.net/add/150
siege -v -c   1 -t 1M https://cebit2017-python.mybluemix.net/add/100
