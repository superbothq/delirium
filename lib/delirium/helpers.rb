module Delirium
  module Helpers
    def self.delay(d=0.0..0.0)
      case d.class.name
      when "Range"
        sleep rand(d) # gotta love ruby
      when "Integer", "Float"
        sleep d
      else
        raise Delirium::Error, "unknown delay: #{d.class.name}"
      end
    end
  end
end

