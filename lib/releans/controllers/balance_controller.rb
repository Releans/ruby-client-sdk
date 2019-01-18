# releans
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Releans
  # BalanceController
  class BalanceController < BaseController
    @instance = BalanceController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Get your available balance
    # @return String response from the API call
    def get_balance
      begin
        @logger.info("get_balance called.")
        # Prepare query url.
        @logger.info("Preparing query URL for get_balance.")
        _path_url = '/balance'
        _query_builder = Configuration.base_uri.dup
        _query_builder << _path_url
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for get_balance.')
        _request = @http_client.get(
          _query_url
        )
        OAuth2.apply(_request)
        _context = execute_request(_request, name: 'get_balance')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for get_balance.")
        return nil if _context.response.status_code == 404
          @logger.info("Status code 404 received for get_balance. Returning nil.")
        validate_response(_context)
  
        # Return appropriate response type.
        @logger.info("Returning response for get_balance.")
        _context.response.raw_body

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end
  end
end