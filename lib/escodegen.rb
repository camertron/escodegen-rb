# encoding: UTF-8

require 'v8'
require 'commonjs'

require 'escodegen/generator'

module Escodegen
  def self.load_path
    @load_path ||= File.expand_path(File.join(File.dirname(__FILE__), "../vendor"))
  end

  def self.new_environment
    context = V8::Context.new
    env = CommonJS::Environment.new(context, :path => Escodegen.load_path)
    env.require("escodegen")
  end
end
