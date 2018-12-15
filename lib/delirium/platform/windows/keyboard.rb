module Delirium
  module Platform
    class Windows
      class Keyboard < Base::Keyboard
        def write(string:)
          string.split("").each do |c|
            `nircmd.exe sendkey #{c} press`
          end
        end

        def key_press(key:)
          case key
          when Symbol
            `nircmd.exe sendkey #{key} press`
          end
        end

        def key_down(key:)
          case key
          when Symbol
            `nircmd.exe sendkey #{key} down`
          end
        end

        def key_up(key:)
          case key
          when Symbol
            `nircmd.exe sendkey #{key} up`
          end
        end
      end
    end
  end
end
