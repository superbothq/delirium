module Delirium
  module Driver
    class Linux
      class Keyboard < Base::Keyboard
        def key_press(string_or_symbol)
          `xdotool type '#{string_or_symbol}'`
        end

        def key_down(string_or_symbol)
          `xdotool keydown '#{string_or_symbol}'`
        end

        def key_up(string_or_symbol)
          `xdotool keyup '#{string_or_symbol}'`
        end

        def write(string)
          `xdotool type '#{string_or_symbol}'`
        end
      end
    end
  end
end
