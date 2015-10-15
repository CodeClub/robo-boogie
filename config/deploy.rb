# config valid only for current version of Capistrano
lock '3.4.0'

set :repo_url,      'git@github.com:CodeClub/robo-boogie.git'
set :user,          'deploy'
set :scm,           :git
set :format,        :pretty
set :log_level,     :info
set :keep_releases, 5

set :ssh_options, {
  forward_agent: true,
  keys:          %w(~/.ssh/id_rsa.pub),
  user:          'deploy'
}

set :repo_tree, 'build' # only deploy the contents of the build dir

set :linked_dirs, fetch(:linked_dirs, []).push('build/api/application/logs')
