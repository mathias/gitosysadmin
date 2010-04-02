#!/usr/bin/env ruby -wKU

$LOAD_PATH.unshift File.dirname(__FILE__) + '/sinatra/lib'
require 'rubygems'
require 'sinatra'
require 'grit'

configure do
  VERSION = "0.01"
end

get '/about' do
  "Running Sinatra version " + Sinatra::VERSION + " and Gitosysadmin version " + VERSION
end