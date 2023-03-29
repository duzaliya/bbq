# config valid for current version and patch releases of Capistrano
lock "~> 3.17.1"

set :application, 'www'
set :repo_url, 'git@github.com:duzaliya/bbq.git'
set :branch, 'main'
set :deploy_to, '/home/deploy/www'

append :linked_files, 'config/database.yml', 'config/master.key'
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads'
