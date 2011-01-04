require 'rubygems'
require 'sinatra'
require 'redis'
require 'erb'
require 'yaml'
require 'fileutils'
require 'yajl/json_gem'

set :sessions, true

Dir.glob("lib/*.rb") { |filename| require filename  }

