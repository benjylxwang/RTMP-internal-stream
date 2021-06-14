#!/bin/bash

HOST=192.168.1.167
KEY=test

cvlc --fullscreen rtmp://$HOST/live/$KEY
