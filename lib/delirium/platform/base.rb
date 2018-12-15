module Delirium
  module Platform
    class Base
      def initialize
        @mouse = eval "#{self.class.name}::Mouse.new"
        @keyboard = eval "#{self.class.name}::Keyboard.new"
      end

      def do(device:, action:, params:)
        case device
        when :mouse
          @mouse.send action, params
        when :keyboard
          @keyboard.send action, params
        else
          raise Delirium::Error, "unknown device: #{device}"
        end
        nil
      end
    end
  end
end

require_relative "base/mouse"
require_relative "base/keyboard"
