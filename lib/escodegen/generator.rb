# encoding: UTF-8

module Escodegen
  class Generator
    def initialize
      @escodegen = Escodegen.new_environment
    end

    def generate(ast, options = {})
      @escodegen.generate(ast, options)
    end
  end
end