require 'test_helper'
class MicropostTest < ActiveSupport::TestCase
def setup
@user = users(:michael)
@micropost = @user.microposts.build(content: "Lorem ipsum")
end
test "should be valid" do
assert @micropost.valid?
end
test "user id should be present" do
@micropost.user_id = nil
assert_not @micropost.valid?
end
test "order should be most recent first" do
assert_equal microposts(:most_recent), Micropost.first
end

end
