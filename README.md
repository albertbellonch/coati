Okapi
======

Description
-----------

Okapi hides user-defined instance variables from being show when inspecting an instance of the class.

Imagine you have a simple class like:

    class TestClass
      def initialize(username, password)
        @username = username
        @password = password
      end
    end

Then when you inspect the instance of the class, the output will be something like:

    [1] pry(main)> instance = TestClass.new('Joe', 'supersecretpassword')
    => #<TestClass:0x007f9633ca87f0 @username="Joe", @password="supersecretpassword">

...even if we don't want the password value to be shown. This gem addresses this problem.

This gem is named after [an African mammal](https://en.wikipedia.org/wiki/Okapi).

Installation
------------

Simply do

    gem install okapi

Usage
------------

Firstly require it from the file:

    require 'okapi'

Then use the `attr_hider` method in the class:

    class TestClass
      attr_hider :password

      def initialize(username, password)
        @username = username
        @password = password
      end
    end

When inspecting an instance of the class, the ouput will be something like:

    [1] pry(main)> instance = TestClass.new('Joe', 'supersecretpassword')
    => #<TestClass:0x007f9633ca87f0 @username="Joe">
