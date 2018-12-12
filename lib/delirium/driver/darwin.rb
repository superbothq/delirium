module Delirium
  module Driver
    class Darwin < Base
    end
  end
end

require_relative "darwin/mouse"
require_relative "darwin/keyboard"
