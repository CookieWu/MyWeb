# config valid only for current version of Capistrano
lock '3.4.0'

`ssh-add` # need this to make key-forwarding work

set :whenever_identifier, ->{ "#{fetch(:application)}_#{fetch(:stage)}" }

set :application, 'devops'
set :repo_url, 'ssh://git@github.com:CookieWu/MyWeb.git'

set :rbenv_type, :user 
set :rbenv_ruby, "2.2.2"
set :rbenv_path, "/home/john/.rbenv"
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w(rake gem bundle ruby rails)
set :rbenv_roles, :all 

set :deploy_to, '/home/john/MyWeb/'
set :log_level, :debug

set :linked_dirs, fetch(:linked_dirs, []).push("bin", "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system") 

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
