module Delirium
  module Platform
    def self.class_for_current_platform
      case RUBY_PLATFORM.downcase
      when /darwin/
        Delirium::Platform::Darwin
      when /linux/
        Delirium::Platform::Linux
      when /cygwin|mswin|mingw|bccwin|wince|emx/
        Delirium::Platform::Windows
      else
        raise Delirium::Error, "Unsupported Platform: #{platform}"
      end
    end
  end
end

require_relative "platform/base"
require_relative "platform/darwin"
require_relative "platform/linux"
require_relative "platform/windows"
