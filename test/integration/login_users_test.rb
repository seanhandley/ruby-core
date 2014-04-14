require_relative '../test_helper'
require_relative '../integration_test_helper'

module Keybase::Core
  class LoginUsersIntegrationTest < Minitest::Test
    
    def test_login
      VCR.use_cassette('user_login') do
        user = User.login('seanhandley', 'secret')
        assert_equal "secret", user.private_keys.primary.bundle
        assert_equal "dude@testing.com", user.emails.primary.email
        assert_equal 'lgHZIGJmYmI4ZTQxMzE3YzU1N2VlYzc0MWZiMjE4ZDRjNjA4zlNMW3DOAAFRgMDEINPBJ1t4RDULa9V9gxQxmEfn31148DeUuyJJUI+pzS0A', TokenStore.csrf
        assert_equal 'guest=lgHZIGYzM2JhODcxNmI1MWIwNjEwMmRiYzJjZjYyZDc2MDA4zlNMW3HOAAFRgMDEIO5SxHNTXW6adHXLZAWVcKHEsRCENKrdX5ORk%2FZHSJ3r; Max-Age=604.8; Domain=.keybase.io; Path=/; Expires=Mon, 14 Apr 2014 22:14:37 GMT; HttpOnly; Secure, session=lgHZIGU3MjBmNWE0Y2NlOWM2MGY5NDUzOGQzMDk1OWU3MTAwzlNMW3HOAeEzgNkgNDhkZWI1ZTAxNjdkZWU2MjMzZjYyODUzYjA3NDk1MDLEIOpnJ3YjyYV0Ia1irJDYIvGrXhcj3sATBJsOeQiPzS%2FT; Max-Age=31536000; Domain=.keybase.io; Path=/; Expires=Tue, 14 Apr 2015 22:04:33 GMT; HttpOnly; Secure', TokenStore.cookie
        assert_equal true, user.logout
      end
    end

  end
end
