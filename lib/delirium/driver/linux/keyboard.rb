module Delirium
  module Driver
    class Linux
      class Keyboard < Base::Keyboard
        def key_press(string_or_symbol)
          `xdotool`
        end

        def key_down(string_or_symbol)
          `xdotool`
        end

        def key_up(string_or_symbol)
          `xdotool`
        end

        def write(string)
          `xdotool`
        end
      end
    end
  end
end
