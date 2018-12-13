module Delirium
  module Driver
    class Base
      class Keyboard
        def key_press(string_or_symbol)
          raise Delirium::Error, "not implemented"
        end

        def key_down(string_or_symbol)
          raise Delirium::Error, "not implemented"
        end

        def key_up(string_or_symbol)
          raise Delirium::Error, "not implemented"
        end

        def write(string)
          raise Delirium::Error, "not implemented"
        end
      end
    end
  end
end
