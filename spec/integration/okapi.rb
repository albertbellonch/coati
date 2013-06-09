require 'spec_helper'

describe Okapi do
  class TestClass
    attr_accessor :username

    def initialize(username, password)
      @username = username
      @password = password
    end
  end

  it "should show the name and value of the username"

  it "should not show the name neither the value of the username"
end
