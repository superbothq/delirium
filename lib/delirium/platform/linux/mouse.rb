module Delirium
  module Platform
    class Linux
      class Mouse < Base::Mouse
        def move(params)
          `xdotool`
        end
      end
    end
  end
end
