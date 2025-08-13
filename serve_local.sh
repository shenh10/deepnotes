#!/bin/bash
# Local development script for Jekyll

# Temporarily modify baseurl for local development
sed -i.bak 's|baseurl: "/deepnotes"|baseurl: ""|' _config.yml

# Start Jekyll server
export PATH="/usr/local/opt/ruby/bin:$PATH"
bundle exec jekyll serve --livereload --port 4001

# Restore original baseurl when server stops
mv _config.yml.bak _config.yml 