module Delirium
  module Driver
    class Linux < Base
    end
  end
end

require_relative "linux/mouse"
require_relative "linux/keyboard"
