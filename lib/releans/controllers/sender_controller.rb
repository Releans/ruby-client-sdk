# releans
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Releans
  # SenderController
  class SenderController < BaseController
    @instance = SenderController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Return the details of the sender name.
    # @param [String] id Required parameter: The sender id you want its
    # details
    # @return Mixed response from the API call
    def get_sender_name_details(id)
      begin
        @logger.info("get_sender_name_details called.")
        # Validate required parameters.
        @logger.info("Validating required parameters for get_sender_name_details.")
        validate_parameters(
          'id' => id
        )
        # Prepare query url.
        @logger.info("Preparing query URL for get_sender_name_details.")
        _path_url = '/sender/view/'
        _query_builder = Configuration.base_uri.dup
        _query_builder << _path_url
        _query_builder = APIHelper.append_url_with_query_parameters(
          _query_builder,
          {
            'id' => id
          },
          array_serialization: Configuration.array_serialization
        )
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare headers.
        @logger.info("Preparing headers for get_sender_name_details.")
        _headers = {
          'accept' => 'application/json'
        }
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for get_sender_name_details.')
        _request = @http_client.get(
          _query_url,
          headers: _headers
        )
        OAuth2.apply(_request)
        _context = execute_request(_request, name: 'get_sender_name_details')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for get_sender_name_details.")
        return nil if _context.response.status_code == 404
          @logger.info("Status code 404 received for get_sender_name_details. Returning nil.")
        validate_response(_context)
  
        # Return appropriate response type.
        @logger.info("Returning response for get_sender_name_details.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body) unless
          _context.response.raw_body.nil? ||
          _context.response.raw_body.to_s.strip.empty?
        decoded

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # Create a new sender id to send messages using it
    # @param [String] sender_name Required parameter: Name you want to register
    # as Sender Name
    # @return String response from the API call
    def create_sender_name(sender_name)
      begin
        @logger.info("create_sender_name called.")
        # Validate required parameters.
        @logger.info("Validating required parameters for create_sender_name.")
        validate_parameters(
          'sender_name' => sender_name
        )
        # Prepare query url.
        @logger.info("Preparing query URL for create_sender_name.")
        _path_url = '/sender/create'
        _query_builder = Configuration.base_uri.dup
        _query_builder << _path_url
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare headers.
        @logger.info("Preparing headers for create_sender_name.")
        _headers = {
          'content-type' => 'text/plain; charset=utf-8'
        }
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for create_sender_name.')
        _request = @http_client.post(
          _query_url,
          headers: _headers,
          parameters: sender_name
        )
        OAuth2.apply(_request)
        _context = execute_request(_request, name: 'create_sender_name')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for create_sender_name.")
        return nil if _context.response.status_code == 404
          @logger.info("Status code 404 received for create_sender_name. Returning nil.")
        validate_response(_context)
  
        # Return appropriate response type.
        @logger.info("Returning response for create_sender_name.")
        _context.response.raw_body

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # List all senders names associated with the account
    # @return Mixed response from the API call
    def get_all_senders
      begin
        @logger.info("get_all_senders called.")
        # Prepare query url.
        @logger.info("Preparing query URL for get_all_senders.")
        _path_url = '/sender'
        _query_builder = Configuration.base_uri.dup
        _query_builder << _path_url
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare headers.
        @logger.info("Preparing headers for get_all_senders.")
        _headers = {
          'accept' => 'application/json'
        }
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for get_all_senders.')
        _request = @http_client.get(
          _query_url,
          headers: _headers
        )
        OAuth2.apply(_request)
        _context = execute_request(_request, name: 'get_all_senders')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for get_all_senders.")
        return nil if _context.response.status_code == 404
          @logger.info("Status code 404 received for get_all_senders. Returning nil.")
        validate_response(_context)
  
        # Return appropriate response type.
        @logger.info("Returning response for get_all_senders.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body) unless
          _context.response.raw_body.nil? ||
          _context.response.raw_body.to_s.strip.empty?
        decoded

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end
  end
end