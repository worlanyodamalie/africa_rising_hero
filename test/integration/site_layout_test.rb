require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  #Tests the behaviour of a site/ template layout

  test "layout links" do
  	get root_path
  	assert_template 'static_pages/home'
  	assert_select "a[href=?]", root_path
  	assert_select "a[href=?]", home_path
  	assert_select "a[href=?]", help_path
  	assert_select "a[href=?]", about_path
  end

end
