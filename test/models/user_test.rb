require 'test_helper'

describe User do

  it "display full_name" do
    user = User.find(users(:seller).id)

    assert_equal "#{user.first_name} #{user.last_name}", user.full_name
  end

  before do
    @user = users(:seller)
  end

  it "returns false if role != admin" do
    assert_equal false, @user.is_admin?
  end

end
