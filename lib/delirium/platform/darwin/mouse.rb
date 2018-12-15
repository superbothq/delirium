module Delirium
  module Platform
    class Darwin
      class Mouse < Base::Mouse
        def move(params)
          `cliclick m:+#{params[:x]},+#{params[:y]}`
        end
      end
    end
  end
end
