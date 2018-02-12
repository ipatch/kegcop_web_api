# require "bundler/capistrano"

set :stages, ["staging", "production"]
set :default_stage, "production"

# config valid only for current version of Capistrano
lock '3.10.1'

# server '107.170.40.252', port: '4321', user: 'deploy', roles: [:web, :app, :db], primary: true

# set :application, 'Kegcop'
# set :deploy_user, 'deploy'
# set :deploy_to, "/home/#{user}/apps/#{application}"
# set :deploy_via, :remote_cache
# set :use_sudo, false
# set :port, "4321"

# set :log_level, :debug

# setup repo details

# Note: the below setting is not required anymore.

# set :scm, :git


# set :repo_url, 'git@github.com:ipatch/kegcop-web.git'



# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, '/var/www/my_app_name'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')

# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
