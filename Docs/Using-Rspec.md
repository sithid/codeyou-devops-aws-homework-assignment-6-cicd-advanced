# RSpec Usage Guide

RSpec is a testing framework for Ruby, commonly used for behavior-driven development (BDD).

## Installation

Add RSpec to your Gemfile:
```ruby
gem 'rspec'
```

Then, install the gems:
```bash
bundle install
```

Initialize RSpec in your project:
```bash
bundle exec rspec --init
```
This will generate the following:
- A `.rspec` file for default configuration
- A `spec/` directory for your tests
- A `spec/spec_helper.rb` file for configuration

## Writing Tests

RSpec uses a `describe` and `it` syntax to define test cases.

### Basic Example
```ruby
# spec/example_spec.rb

RSpec.describe 'Math operations' do
  it 'adds two numbers correctly' do
    result = 1 + 1
    expect(result).to eq(2)
  end

  it 'multiplies two numbers correctly' do
    result = 2 * 3
    expect(result).to eq(6)
  end
end
```

### Using `before` and `let`
- `before` is used to set up test preconditions.
- `let` defines lazily-evaluated variables.

```ruby
RSpec.describe 'Array' do
  let(:array) { [1, 2, 3] }

  before do
    array.pop
  end

  it 'removes the last element' do
    expect(array).to eq([1, 2])
  end
end
```

### Test Doubles (Mocks and Stubs)
You can mock or stub methods using `double` or `allow`.

```ruby
RSpec.describe 'User' do
  it 'greets with a name' do
    user = double('User', name: 'Alice')
    allow(user).to receive(:greet).and_return("Hello, Alice!")

    expect(user.greet).to eq("Hello, Alice!")
  end
end
```

## Running Tests

Run all tests:
```bash
bundle exec rspec
```

Run a specific file:
```bash
bundle exec rspec spec/example_spec.rb
```

Run a specific test case by line number:
```bash
bundle exec rspec spec/example_spec.rb:5
```

## RSpec Matchers
RSpec provides a variety of matchers for expectations.

### Common Matchers
- `eq`: Check equality.
- `be`: Check object identity.
- `include`: Check for inclusion.
- `match`: Use regular expressions.
- `be_nil`: Check for `nil`.

Example:
```ruby
expect([1, 2, 3]).to include(2)
expect(nil).to be_nil
```

### Negation
Use `.not_to` for negation:
```ruby
expect(5).not_to eq(3)
```

## Configuration

Edit `spec/spec_helper.rb` for custom configuration.

### Example Configuration
```ruby
RSpec.configure do |config|
  config.before(:each) do
    # Code to run before each test
  end

  config.after(:suite) do
    # Code to run after all tests
  end

  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
```

## Additional Features

### Test Coverage
Use SimpleCov to track test coverage:

Add SimpleCov to your Gemfile:
```ruby
gem 'simplecov', require: false, group: :test
```

Configure SimpleCov in `spec/spec_helper.rb`:
```ruby
require 'simplecov'
SimpleCov.start
```

### Tags
Run specific tests with tags:
```ruby
RSpec.describe 'Tagged tests', :focus do
  it 'runs this test' do
    expect(1).to eq(1)
  end
end
```

Run only focused tests:
```bash
bundle exec rspec --tag focus
```

## Resources
- [RSpec Official Docs and Videos](https://rspec.info/)
- [RSpec Official Documentation](https://rspec.info/documentation/)
- [RSpec GitHub Repository](https://github.com/rspec/rspec)
