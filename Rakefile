require 'hoe'
require './lib/activityutils/version.rb'

Hoe.spec 'activityutils' do

  self.version = ActivityUtils::VERSION

  self.summary = 'activityutils - activity (timeline) utilities'
  self.description = summary

  self.urls    = ['https://github.com/rubylibs/activityutils']

  self.author  = 'Gerald Bauer'
  self.email   = 'wwwmake@googlegroups.com'

  # switch extension to .markdown for gihub formatting
  self.readme_file  = 'README.md'
  self.history_file = 'History.md'

  self.extra_deps = [
    ['logutils', '>= 0.5']
  ]

  self.licenses = ['Public Domain']

  self.spec_extras = {
   :required_ruby_version => '>= 2.3'
  }

end
