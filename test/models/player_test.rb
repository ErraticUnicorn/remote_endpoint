require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  it "fails because no password" do
    User.new({:username => "hans"}).save.should be_false
  end

  it "fails because passwrod to short" do
    User.new({:username => "hans", :password => 'han'}).save.should be_false
  end

  it "succeeds because password is long enough" do
    User.new({:username => "hans", :password => 'hansohanso'}).save.should be_true
  end
end
