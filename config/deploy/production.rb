server 'roboboogie.codeclub.org.uk', user: 'deploy', roles: [:web, :app, :db], primary: true

set :application,        'roboboogie.codeclub.org.uk'
set :branch,             'master'
set :deploy_to,          '/var/www/roboboogie.codeclub.org.uk'
