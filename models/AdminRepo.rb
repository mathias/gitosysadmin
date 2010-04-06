require 'helpers/helpers'
require 'digest/sha1'
require 'dm-validations'
require 'date'

class AdminRepo
  include DataMapper::Resource
  
  property :id,           Serial,   :serial => true
  property :path,         String
  property :user,         String
  property :server,       String
  property :checked_out,  DateTime, :default => DateTime.now
  property :changed,      Boolean
  property :pushed,       Boolean
  
end