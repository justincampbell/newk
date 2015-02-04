require_relative 'spec_helper'

class Klass
  def worked?; true; end
end

describe Newk do
  before { cleanup_methods }

  it "defines the method when newk-ing" do
    Newk.newk Klass
    assert Klass().worked?
  end

  it "defines the method if included" do
    Klass.send :include, Newk
    assert Klass().worked?
  end

  describe 'everything' do
    before { require 'newk/everything' }

    it "defines methods for existing classes" do
      assert Klass().worked?
    end

    it "defines methods for future classes" do
      class Future; def worked?; true; end; end
      assert Future().worked?
    end

    it "defines methods for future structs" do
      NamedStruct = Struct.new(:value)
      assert NamedStruct(true).value
    end

    it "doesn't clobber existing methods" do
      assert_equal [], Array(nil)
      assert_equal [:foo], Array(:foo)
    end
  end
end

def cleanup_methods
  [:Future, :Klass, :NamedStruct].each do |klass|
    Kernel.send :undef, klass rescue nil
  end
end
