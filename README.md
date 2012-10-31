## escodegen-rb  [![Build Status](https://secure.travis-ci.org/camertron/escodegen-rb.png?branch=master)](http://travis-ci.org/camertron/escodegen-rb)

escodegen (https://github.com/Constellation/escodegen) is an ECMAScript code generator that converts an abstract syntax tree (such as one created by Esprima) into ECMAScript.  This library wraps the escodegen JavaScript library for easy use within Ruby.

### Installation

Install the gem as you would any other:

```
gem install escodegen
```

Then, require it in your project:

```ruby
require 'escodegen'
```

### Generating JavaScript from an AST

Let's say you have an AST for the expression `7 + 8;`:

```ruby
ast = {
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
```

Here's how to use escodegen to generate the JavaScript from the AST:

```ruby
generator = Escodegen::Generator.new
generator.generate(ast)
```

This should output `7 + 8;`.

## Requirements

No external requirements.

## Running Tests

Run `bundle exec rake` or `bundle exec rspec`.

## Authors

* Cameron C. Dutro: https://github.com/camertron
* The escodegen team including Yusuke Suzuki: https://github.com/Constellation

## Links
* escodegen [https://github.com/Constellation/escodegen](https://github.com/Constellation/escodegen)

## License

Licensed under the Apache License, Version 2.0: http://www.apache.org/licenses/LICENSE-2.0