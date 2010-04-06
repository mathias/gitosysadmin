#!/usr/bin/env ruby -wKU

$LOAD_PATH.unshift File.dirname(__FILE__) + '/sinatra/lib'
require 'rubygems'
require 'sinatra'
require 'git'
require 'Haml'
require 'helpers/sinatra'
require 'config/database'

configure do
  set :sessions, true
  set :haml, {:format => :html5 } # default Haml format is :xhtml
end

before do
  if !logged_in? && ( request.path_info != '/login' ) && File.extname(request.path_info) != '.css' && File.extname(request.path_info) != ".png"
    redirect '/login'
  else
    @u = session[:user]
  end
end

get '/' do
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
    error("Login failed - Try again")
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
  haml :checkout
end

post '/checkout' do
  
end

get '/groups' do
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