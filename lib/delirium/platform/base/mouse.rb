module Delirium
  module Platform
    class Base
      class Mouse
        def move(params)
          raise Delirium::Error, "not implemented"
        end
      end
    end
  end
end
