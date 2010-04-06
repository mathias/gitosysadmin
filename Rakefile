require 'rubygems'
require 'sinatra'
require 'dm-core'

namespace :db do
  require 'config/database'

  desc "Migrate the database"
  task :migrate do
    DataMapper.auto_migrate!
  end
  
  desc "Add some test users"
  task :testusers do
    us = User.new
    us.login = "admin"
    us.email = "asdf@asdf.de"
    us.password = "pw"
    us.save
  end
  
  desc "Add a test repo to administrate"
  task :testadminrepo do
    adm = AdminRepo.new
    adm.path = File.dirname(__FILE__) + "/gitosis-admin"
    adm.user = "git"
    adm.server = "localhost"
    adm.changed = true
    adm.pushed = false
  end
end
