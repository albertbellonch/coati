require 'spec_helper'
require 'okapi'

describe Okapi do
  class TestClass
    attr_accessor :username
    attr_hider :password

    def initialize(username, password)
      @username = username
      @password = password
    end
  end

  before do
    @instance = TestClass.new('myusername', 'mypassword')
    @inspect = @instance.inspect
  end

  it "should show the name and value of the username" do
    @inspect.should =~ /@username=\"myusername\"/
  end

  it "should not show the name neither the value of the username" do
    @inspect.should_not =~ /@password=\"mypassword\"/
  end
end
