# releans_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require_relative 'controller_test_base'

class BalanceControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def self.startup
    self.controller = @@api_client.balance
  end

  # Get your available balance
  def test_balance()
    # Parameters for the API call
    accept = 'text/plain'

    # Perform the API call through the SDK function
    result = self.class.controller.get_balance(accept)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = nil

    assert(TestHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    assert_equal('{"balance":100}', @response_catcher.response.raw_body)
  end

end
