require "test_helper"

class ShowPdfControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get show_pdf_index_url
    assert_response :success
  end
end
