require 'newk'

ObjectSpace.each_object(Class) do |klass|
  Newk.newk klass
end

class Object
  def self.inherited(klass)
    Newk.newk klass
  end
end
