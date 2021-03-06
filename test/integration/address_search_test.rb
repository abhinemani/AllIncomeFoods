require 'test_helper'
require 'capybara/rails'

class AddressSearchTest < ActionDispatch::IntegrationTest
  fixtures :all

  test "should return retailers by zipcode" do
    visit '/'
    fill_in('addressfield', :with => '22314')
    find('#submitbutton').click
    assert_selector('ul li', :count => 2)
  end

  test "should return retailers by street address" do
    visit '/'
    fill_in('addressfield', :with => '601 Jefferson Street, Alexandria, VA')
    find('#submitbutton').click
    assert_selector('ul li', :count => 2)
  end

end
