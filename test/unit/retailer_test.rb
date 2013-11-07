require 'test_helper'

class RetailerTest < ActiveSupport::TestCase

  def setup
    @retailer = retailers(:one)
  end

  test "should return retailer types" do
    assert_equal @retailer.retailer_types, ["grocery"]
  end

  test "should return distance between a retailer location and a lat and long" do
    assert_equal @retailer.distance_from_origin([38.7999723, -77.0506896]), {:dist=>452.98, :unit=>"mi"}
  end

  test "should return a googe safe address" do
    assert_equal @retailer.google_safe_address, "3603+Maybank+Hwy+Johns+Island+SC+29455"
  end

  test "should return a retailers address" do
    assert_equal @retailer.address, "3603 Maybank Hwy Johns Island SC 29455"
  end

end
