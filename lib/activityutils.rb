

require 'activityutils/version'  # let it always go first

require 'activityutils/schema'
require 'activityutils/models'


module ActivityUtils

  def self.banner
    "activityutils/#{VERSION} on Ruby #{RUBY_VERSION} (#{RUBY_RELEASE_DATE}) [#{RUBY_PLATFORM}]"
  end

end  # module ActivityUtils


puts ActivityUtils.banner    # say hello
