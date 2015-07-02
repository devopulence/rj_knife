

#set :ssh_options, :user => 'root', :keys => '/Users/johndesp/.ec3/default.pem',:port => 22

require 'serverspec'
require 'net/ssh'
current_dir = File.dirname(__FILE__)
set :backend, :ssh


set :host, 'localhost'



set :ssh_options, :user => 'vagrant', :keys => "#{current_dir}/../insecure_private_key",:port => 2222
