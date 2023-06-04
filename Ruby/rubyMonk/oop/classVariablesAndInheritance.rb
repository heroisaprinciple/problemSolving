# frozen_string_literal: true
'''
The fact is that any change in any either ApplicationConfiguration,
ERPApplicationConfiguration or WebApplicationConfiguration will affect the other two.
They all share the same copy of the class variable @@configuration.
This is how inheritance of class variables work.
'''

class ApplicationConfiguration
  @@configuration = {}

  def self.set(property, value)
    @@configuration[property] = value
  end

  def self.get(property)
    @@configuration[property]
  end
end

class ERPApplicationConfiguration < ApplicationConfiguration
end

class WebApplicationConfiguration < ApplicationConfiguration
end

ERPApplicationConfiguration.set("name", "ERP Application")
WebApplicationConfiguration.set("name", "Web Application")

p ERPApplicationConfiguration.get("name")
p WebApplicationConfiguration.get("name")

p ApplicationConfiguration.get("name")

