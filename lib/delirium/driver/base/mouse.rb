module Delirium
  module Driver
    class Base
      class Mouse
        def move(params)
          raise Delirium::Error, "not implemented"
        end
      end
    end
  end
end
