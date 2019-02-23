module Delirium
  module Platform
    class Linux
      class Keyboard < Base::Keyboard
        def key_press(key:)
          `xdotool type '#{key}'`
        end

        def key_down(key:)
          `xdotool keydown '#{key}'`
        end

        def key_up(key:)
          `xdotool keyup '#{key}'`
        end

        def write(string:)
          `xdotool type '#{string}'`
        end
      end
    end
  end
end
