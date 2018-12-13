module Delirium
  module Driver
    def self.class_for_current_platform
      case RUBY_PLATFORM.downcase
      when /darwin/
        Delirium::Driver::Darwin
      when /linux/
        Delirium::Driver::Linux
      else
      when /cygwin|mswin|mingw|bccwin|wince|emx/
        Delirium::Driver::Windows
      else
        raise Delirium::Error, "Unsupported Platform: #{platform}"
      end
    end
  end
end

require_relative "driver/base"
require_relative "driver/darwin"
require_relative "driver/linux"
require_relative "driver/windows"
