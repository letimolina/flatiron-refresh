require_relative './fancy_dance.rb'

class Kid
  include FancyDance::InstanceMethods
  extend FancyDance::ClassMethods

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end