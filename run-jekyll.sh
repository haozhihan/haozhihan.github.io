#!/bin/bash
export PATH="/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/4.0.0/bin:$PATH"
export LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
unset HTTP_PROXY HTTPS_PROXY http_proxy https_proxy
cd /Users/northhan/programming/个人主页的探索/haozhihan.github.io
exec bundle exec jekyll serve --host 127.0.0.1 --port "${PORT:-4000}" --no-watch
