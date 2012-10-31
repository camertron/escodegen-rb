# encoding: UTF-8

require File.join(File.dirname(__FILE__), "spec_helper")

describe Escodegen do
  describe "#load_path" do
    it "escodegen.js should exist at the load path" do
      File.should exist(File.join(Escodegen.load_path, "escodegen.js"))
    end
  end
end