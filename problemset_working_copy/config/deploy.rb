# config valid only for current version of Capistrano
lock '3.6.1'

set :application, 'problemset'
set :deploy_to, '/home/deploy/problemset'
set :repo_url, 'https://github.com/mamilkew/wae-problemset.git'
set :passenger_restart_with_touch, true
set :'rbenv_ruby', '2.3.1'

set :default_env, {
    'http_proxy'  =>'http://192.41.170.23:3128',
    'ftp_proxy'   =>'http://192.41.170.23:3128',
    'https_proxy' =>'http://192.41.170.23:3128'

}

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, '/var/www/my_app_name'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: 'log/capistrano.log', color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, 'config/database.yml', 'config/secrets.yml'

# Default value for linked_dirs is []
# append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system'

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5
