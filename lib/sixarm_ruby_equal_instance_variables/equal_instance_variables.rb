# -*- coding: utf-8 -*-
=begin rdoc
Please see README
=end

module EqualInstanceVariables
  def ==(other)
    self.class == other.class && 
    self.instance_variables == other.instance_variables &&
    self.instance_variables.all?{|var|
      self.instance_variable_get(var) == other.instance_variable_get(var)
    }
  end
end