require 'rubygems'
require 'redis'
require 'erb'
require 'yaml'
require 'fileutils'

Dir.glob("lib/*.rb") { |filename| require filename  }

$Users ||= YAML::load(File.open('../secrets/credentials.yaml'))
p $Users
params = {:username => "admin"}

p $Users[params[:username]]['password']