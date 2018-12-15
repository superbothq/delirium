module Delirium
  module Platform
    class Windows
      class Mouse < Base::Mouse
        def move(params)
          `nircmd.exe sendmouse #{params}`
        end
      end
    end
  end
end
