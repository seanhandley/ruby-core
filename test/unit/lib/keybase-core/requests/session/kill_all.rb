require_relative '../../../../../test_helper'

module Keybase::Core
  module Request
    class SessionKillAllTest < Minitest::Test

      def setup
        @response = {  }
      end

      def test_session_kill_all_true
        Base.stub :post, @response do
          assert Request::Session.kill_all
        end
      end
      
    end
  end
end
