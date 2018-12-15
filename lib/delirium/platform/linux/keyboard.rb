module Delirium
  module Platform
    class Linux
      class Keyboard < Base::Keyboard
        def key_press(key:)
          case key
          when Symbol
            `xdotool type '#{key}'`
          end
        end

        def key_down(key:)
          case key
          when Symbol
            `xdotool keydown '#{key}'`
          end
        end

        def key_up(key:)
          case key
          when Symbol
            `xdotool keyup '#{key}'`
          end
        end

        def write(string:)
          `xdotool type '#{string}'`
        end
      end
    end
  end
end
