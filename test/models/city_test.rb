require './test/test_helper'

class CityTest < ActiveSupport::TestCase
   test "the truth" do
       city = City.new
  	   assert_not city.save, "DDD"
   end
end
