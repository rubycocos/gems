######
# NB: use rackup to startup Sinatra service (see config.ru)
#
#  e.g. config.ru:
#   require './boot'
#   run ActivityDb::Server


# 3rd party libs/gems

require 'sinatra/base'

# our own code

require 'logutils'


module ActivityDb

class Server < Sinatra::Base

  def self.banner
    "activitydb-server #{ActivityUtils::VERSION} on Ruby #{RUBY_VERSION} (#{RUBY_RELEASE_DATE}) [#{RUBY_PLATFORM}] on Sinatra/#{Sinatra::VERSION} (#{ENV['RACK_ENV']})"
  end

  def self.root
    "#{File.expand_path( File.dirname(File.dirname(File.dirname(__FILE__))) )}"
  end

  PUBLIC_FOLDER = "#{root}/lib/activityutils/server/public"
  VIEWS_FOLDER  = "#{root}/lib/activityutils/server/views"

  puts "[boot] activitydb - setting public folder to: #{PUBLIC_FOLDER}"
  puts "[boot] activitydb - setting views folder to: #{VIEWS_FOLDER}"
  
  set :public_folder, PUBLIC_FOLDER   # set up the static dir (with images/js/css inside)   
  set :views,         VIEWS_FOLDER    # set up the views dir

  set :static, true   # set up static file routing


  #####################
  # Models

  include ActivityDb::Models

  ##############################################
  # Controllers / Routing / Request Handlers

  get '/' do
    erb :index
  end

end # class Server
end #  module ActivityDb


# say hello
puts ActivityDb::Server.banner
