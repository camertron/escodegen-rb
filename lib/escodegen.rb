# encoding: UTF-8

if (RUBY_PLATFORM == 'java')
  require 'rhino'
else
  require 'v8'
end
require 'commonjs'

require 'escodegen/generator'

module Escodegen
  def self.load_path
    @load_path ||= File.expand_path(File.join(File.dirname(__FILE__), "../vendor"))
  end

  def self.new_environment
    if (RUBY_PLATFORM == 'java')
      context = Rhino::Context.new
    else
      context = V8::Context.new
    end
    env = CommonJS::Environment.new(context, :path => Escodegen.load_path)
    env.require("escodegen")
  end
end
