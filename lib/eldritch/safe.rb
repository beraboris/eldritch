require 'eldritch/version'
require 'eldritch/task'
require 'eldritch/dsl'
require 'eldritch/ext_core/thread'
require 'eldritch/together'
require 'eldritch/interrupted_error'

module Eldritch
  def self.inject_dsl
    Object.include Eldritch::DSL
  end
end
