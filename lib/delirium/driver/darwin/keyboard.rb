module Delirium
  module Driver
    class Darwin
      class Keyboard < Base::Keyboard
        def key_press(string_or_symbol)
          case string_or_symbol
          when String
            `cliclick t:#{string_or_symbol}`
          when Symbol
            `cliclick kp:#{string_or_symbol}`
          end
        end

        def key_down(string_or_symbol)
          `cliclick kd:#{string_or_symbol}`
        end

        def key_up(string_or_symbol)
          `cliclick ku:#{string_or_symbol}`
        end

        def write(string)
          `cliclick t:#{string}`
        end
      end
    end
  end
end
