require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Path < OmniAuth::Strategies::OAuth2 

      option :name, 'path'

      option :client_options, {
        :site          => 'https://partner.path.com',
        :authorize_url => '/oauth2/authenticate',
        :token_url     => '/oauth2/access_token'
      }

      uid do
        raw_info['user']['id']
      end

      info do
        user = raw_info['user']
        {
          name: user['name'],
          email: user['email'],
          photo: user['photo']
        }
      end

      def raw_info
        @raw_info ||= access_token.get('https://partner.path.com/1/user/self').parsed
      end

    end
  end
end
