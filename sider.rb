require 'rubygems'
require 'sinatra'
require 'redis'
require 'erb'
require 'yaml'
require 'fileutils'

Dir.glob("lib/*.rb") { |filename| require filename  }
