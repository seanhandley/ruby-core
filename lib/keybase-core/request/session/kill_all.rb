# POST /session/killall.json
module Keybase::Core
  module Request
    class Session < Base
      def self.kill_all
        post('session/killall.json', csrf_token: TokenStore.csrf)
        true
      end
    end
  end
end
