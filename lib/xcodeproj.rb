module Xcodeproj

  class PlainInformative < StandardError
  end

  class Informative < PlainInformative
    def message
      super !~ /\[!\]/ ? "[!] #{super}\n".red : super
    end
  end

  autoload :Command,          'xcodeproj/command'
  autoload :Config,           'xcodeproj/config'
  autoload :Constants,        'xcodeproj/constants'
  autoload :Differ,           'xcodeproj/differ'
  autoload :Helper,           'xcodeproj/helper'
  autoload :Project,          'xcodeproj/project'
  autoload :UI,               'xcodeproj/user_interface'
  autoload :Workspace,        'xcodeproj/workspace'
  autoload :XCScheme,         'xcodeproj/scheme'
  autoload :XcodebuildHelper, 'xcodeproj/xcodebuild_helper'
end
