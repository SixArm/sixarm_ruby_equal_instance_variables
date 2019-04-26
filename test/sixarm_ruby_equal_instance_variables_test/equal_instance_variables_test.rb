# -*- coding: utf-8 -*-
require "sixarm_ruby_equal_instance_variables_test"

describe EqualInstanceVariables do

  class C
    include EqualInstanceVariables
  end

  class D
    include EqualInstanceVariables
  end

  describe "==" do

    describe "with same class, same variables, same values" do

      before do 
        @a = C.new; @a.instance_variable_set("@name", "value")
        @b = C.new; @b.instance_variable_set("@name", "value")
      end

      it "return true" do
        expect(@a == @b).must_be_same_as true
        expect(@b == @a).must_be_same_as true
      end

    end

    describe "with different classes, same variables, same values" do

      before do
        @a = C.new; @a.instance_variable_set("@name", "value")
        @b = D.new; @b.instance_variable_set("@name", "value")
      end

      it "return false because the class is different" do
        expect(@a == @b).must_be_same_as false
        expect(@b == @a).must_be_same_as false
      end

    end
    
    describe "with same classes, different variables, same values" do 

      before do
        @a = C.new; @a.instance_variable_set("@name1", "value")
        @b = C.new; @b.instance_variable_set("@name2", "value")
      end

      it "return false because the variables are different" do
        expect(@a == @b).must_be_same_as false
        expect(@b == @a).must_be_same_as false
      end

    end

    describe "with same classes, same variables, different values" do

      before do
        @a = C.new; @a.instance_variable_set("@name", "value1")
        @b = C.new; @b.instance_variable_set("@name", "value2")
      end

      it "return false because the variables are different" do
        expect(@a == @b).must_be_same_as false
        expect(@b == @a).must_be_same_as false
      end

    end

  end

end