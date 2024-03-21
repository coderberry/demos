require "test_helper"

class Demos::DatatablesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get demos_datatables_index_url
    assert_response :success
  end
end
