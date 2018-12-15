module Delirium
  module Platform
    class Windows < Base
    end
  end
end

require_relative "windows/mouse"
require_relative "windows/keyboard"
