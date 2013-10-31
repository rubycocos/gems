# ruby stdlibs

ENV['RACK_ENV'] ||= 'development'

puts "ENV['RACK_ENV'] = #{ENV['RACK_ENV']}"



require 'pp'

# 3rd party libs/gems

require 'active_record'

## add lib to load path

$LOAD_PATH << "./lib"

require './lib/activityutils.rb'
require './lib/activityutils/server.rb'



DB_CONFIG = {
  adapter:  'sqlite3',
  database: 'activity.db'
}

puts "DB_CONFIG:"
pp DB_CONFIG
ActiveRecord::Base.establish_connection( DB_CONFIG )

# ActiveRecord::Base.logger = Logger.new( STDOUT )

# first time? - auto-run db migratation, that is, create db tables
unless ActivityDb::Models::Activity.table_exists?
  ActivityDb::CreateDb.new.up  
end
