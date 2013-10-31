

require 'activityutils/version'  # let it always go first


module ActivityUtils

  def self.banner
    "activityutils/#{VERSION} on Ruby #{RUBY_VERSION} (#{RUBY_RELEASE_DATE}) [#{RUBY_PLATFORM}]"
  end

=begin
  def self.root
    "#{File.expand_path( File.dirname(File.dirname(__FILE__)) )}"
  end
=end

end  # module ActivityUtils


puts ActivityUtils.banner    # say hello
