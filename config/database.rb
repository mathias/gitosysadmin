require 'rubygems'
require 'dm-core'
require 'models/User'
require 'models/AdminRepo'

DataMapper.setup(:default, "sqlite3:///#{Dir.pwd}/test.db")