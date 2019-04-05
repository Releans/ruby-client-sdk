# releans_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ReleansApi
  # Utility class for OAuth 2 authorization and token management.
  class OAuth2
    # Add OAuth2 authentication to the http request.
    # @param [HttpRequest] The HttpRequest object to which authentication will
    # be added.
    def self.apply(http_request)
      token = Configuration.o_auth_access_token
      http_request.headers['Authorization'] = "Bearer #{token}"
    end

    # Checks if OAuth token has expired.
    def self.token_expired?
      Configuration.o_auth_token.expiry &&
        Configuration.o_auth_token.expiry < Time.now.to_i
    end
  end
end