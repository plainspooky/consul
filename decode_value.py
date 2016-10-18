#!/usr/bin/env python2
import base64, json, sys
print base64.b64decode(json.load(sys.stdin)[0]['Value'])
