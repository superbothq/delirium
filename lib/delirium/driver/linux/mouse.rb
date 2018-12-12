module Delirium
  module Driver
    class Linux
      class Mouse < Base::Mouse
        def move(params)
          `xdotool`
        end
      end
    end
  end
end
