# encoding: UTF-8

require File.join(File.dirname(__FILE__), "spec_helper")

EXPRESSION = "7 + 8;"
AST = {
  :type => "Program",
  :body => [{
    :type => "ExpressionStatement",
    :expression => {
      :left => {
        :type => "Literal",
        :value => 7
      },
      :type => "BinaryExpression",
      :right => {
        :type => "Literal",
        :value => 8
      },
      :operator => "+"
    }
  }]
}

describe Escodegen::Generator do
  describe "#generate" do
    it "should parse a basic js AST" do
      result = Escodegen::Generator.new.generate(AST)
      result.should == EXPRESSION
    end
  end
end