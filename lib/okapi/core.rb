module Okapi
  module ClassMethods
    def attr_hider(*attrs)
      define_method :attrs_to_hide do
        attrs
      end
    end
  end

  module InstanceMethods
    def inspect
      new_inspect = super

      if self.class.instance_methods.include?(:attrs_to_hide)
        attrs_to_hide.each do |attr_to_hide|
          new_inspect.gsub!(/,? @#{attr_to_hide}=".+"/, '')
        end
      end

      new_inspect
    end
  end
end

Object.extend Okapi::ClassMethods
Object.send(:include, Okapi::InstanceMethods)
