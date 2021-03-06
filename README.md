# SixArm.com → Ruby → <br> Equal instance variables

<!--header-open-->

[![Gem Version](https://badge.fury.io/rb/sixarm_ruby_equal_instance_variables.svg)](http://badge.fury.io/rb/sixarm_ruby_equal_instance_variables)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_equal_instance_variables.png)](https://travis-ci.org/SixArm/sixarm_ruby_equal_instance_variables)
[![Code Climate](https://api.codeclimate.com/v1/badges/d4fbc1f26882a200a1ca/maintainability)](https://codeclimate.com/github/SixArm/sixarm_ruby_equal_instance_variables/maintainability)

* Git: <https://github.com/SixArm/sixarm_ruby_equal_instance_variables>
* Doc: <http://sixarm.com/sixarm_ruby_equal_instance_variables/doc>
* Gem: <https://rubygems.org/gems/sixarm_ruby_equal_instance_variables>
* Contact: Joel Parker Henderson, <joel@sixarm.com>
* Project: [changes](CHANGES.md), [license](LICENSE.md), [contributing](CONTRIBUTING.md).

<!--header-shut-->

## Introduction

The gem provides a module with one method `equal_instance_variables`. 

This is the entire code:

    def ==(other)
      self.class == other.class && 
      self.instance_variables == other.instance_variables &&
      self.instance_variables.all?{|var|
        self.instance_variable_get(var) == other.instance_variable_get(var)
      }
    end

The code is typically useful for a simple equality test of your own objects, such as:

    class MyClass
      include EqualInstanceVariables
      attr_accessor :foo
      ...
    end

    x = MyClass.new
    x.foo = "goo"

    y = MyClass.new
    y.foo = "different"

    x == y 
    ==> false (because the instance variables' values are not equal)


<!--install-open-->

## Install

### Gem

To install this gem in your shell or terminal:

    gem install sixarm_ruby_equal_instance_variables

### Gemfile

To add this gem to your Gemfile:

    gem 'sixarm_ruby_equal_instance_variables'

### Require

To require the gem in your code:

    require 'sixarm_ruby_equal_instance_variables'

<!--install-shut-->

## Tracking

* Package: sixarm_ruby_equal_instance_variables
* Version: 1.0.0
* Created: 2018-02-15
* Updated: 2018-02-15
* License: Open source as described in the file LICENSE.md
* Contact: Joel Parker Henderson (joel@joelparkerhenderson.com)

