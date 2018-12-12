module Delirium
  module Driver
    class Darwin
      class Mouse < Base::Mouse
        def move(params)
          `cliclick m:+#{params[:x]},+#{params[:y]}`
        end
      end
    end
  end
end
