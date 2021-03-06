# releans_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require_relative 'controller_test_base'

class MessageControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def self.startup
    self.controller = @@api_client.message
  end

  # List all messages sent by the account.
  def test_get_all_messages()
    # Parameters for the API call
    accept = '*/*'

    # Perform the API call through the SDK function
    result = self.class.controller.get_all_messages(accept)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)
  end

  # Return the details of the message.
  def test_view_message()
    # Parameters for the API call
    id = 'id'
    accept = '*/*'

    # Perform the API call through the SDK function
    result = self.class.controller.get_view_message(id, accept)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)
  end

end
