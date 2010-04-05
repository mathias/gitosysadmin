#!/usr/bin/env ruby -wKU

$LOAD_PATH.unshift File.dirname(__FILE__) + '/sinatra/lib'
require 'rubygems'
require 'sinatra'
require 'git'
require 'helpers/sinatra'
require 'config/database'

configure do
  VERSION = "0.01"
  set :sessions, true
  set :haml, {:format => :html5 } # default Haml format is :xhtml
end

before do
  if !logged_in? && ( request.path_info != '/login' )
    redirect '/login'
  end
end

get '/' do
    @u = session[:user]
    haml :index
end

get '/login' do
  haml :login, {:layout => :login}
end

post '/login' do
  if session[:user] = User.authenticate(params["login"], params["password"])
    flash("Login successful")
    redirect '/'
  else
    flash("Login failed - Try again")
    redirect '/login'
  end
end

get '/logout' do
  session[:user] = nil
  flash("Logout successful")
  redirect '/'
end

get '/about' do
  "Running Sinatra version " + Sinatra::VERSION + " and Gitosysadmin version " + VERSION
end

get '/checkout' do
  @u = session[:user]
  haml :checkout
end

post '/checkout' do
  
end

get '/groups' do
  @u = session[:user]
  haml :groups
end

get '/groups/delete/:name' do
  group = params[:name]
  "Stubbed"
end


get '/repos' do
  "Stubbed"
end

get '/users' do
  "Stubbed"
end