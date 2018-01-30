module Lita
  module Handlers
    class Some < Handler
      route(/^some/, :some)

      def some(resp)
        resp.reply(resp.matches)
      end
    end

    Lita.register_handler(Some)
  end
end
