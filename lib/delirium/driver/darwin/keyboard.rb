module Delirium
  module Driver
    class Darwin
      class Keyboard < Base::Keyboard
        def key_press(key:)
          case key
          when String
            `cliclick t:#{key}`
          when Symbol
            cliclick_key = case key
            when :cmd
            when :volume_up
              "volume-up"
            when :volume_down
              "volume-down"
            else
              key
            end

            `cliclick kp:#{cliclick_key}` if cliclick_key
          end
        end

        def key_down(key:)
          `cliclick kd:#{key}`
        end

        def key_up(key:)
          `cliclick ku:#{key}`
        end

        def write(string:)
          `cliclick t:#{string}`
        end
      end
    end
  end
end
