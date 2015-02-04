require "newk/version"

module Newk
  def self.included(base)
    newk base
  end

  def self.newk(klass)
    class_name = klass.name

    return unless class_name

    method_name = class_name.to_sym

    return if \
      Kernel.private_method_defined?(method_name) ||
      Kernel.public_method_defined?(method_name)

    Kernel.send :define_method, method_name do |*args|
      klass.new(*args)
    end
  end
end
