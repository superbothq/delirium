module Delirium
  module Driver
    class Base
      class Keyboard
        def type(sequence:, delay:0..0)
          sequence_with_delay = case sequence
          when String
            # type "hello"
            sequence.split ''
          when Array
            # type "hello", :enter
            # type [:ctrl, :c]
            # type [:alt, [:tab, :tab]]
            sequence
          when Symbol
            # type :enter
            [sequence]
          else
            raise Delirium::Error, "unknown class: #{sequence.class.name}"
          end

          sequence_with_delay.each do |s|
            already_delayed = false

            case s
            when String
              write_instead_of_key_press = case delay.class.name
              when Integer
                delay == 0
              when Float
                delay == 0.0
              when Range
                delay.first == 0 && delay.last == 0
              end

              if write_instead_of_key_press
                write s
              else
                s.split('').each do |k|
                  key_press k
                  ::Delirium::Helpers.delay(delay)
                  already_delayed = true
                end
              end
            when Array
              non_mods = s.pop
              for mod in s do
                key_down mod
              end
              case non_mods
              when String
                key_press non_mods
              when Array
                # [:alt, [:tab, :tab]]
                non_mods.each do |non_mod|
                  key_press non_mod
                  ::Delirium::Helpers.delay(delay)
                  already_delayed = true
                end
              end
              for mod in s do
                key_up mod
              end
            when Symbol
              key_press s
            end

            unless already_delayed
              ::Delirium::Helpers.delay(delay)
            end
          end
        end

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
