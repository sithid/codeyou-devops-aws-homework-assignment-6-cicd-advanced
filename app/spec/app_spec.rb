# spec/app_spec.rb
require_relative '../app'

describe App do
  it 'greets the user' do
    expect(App.greet('World')).to eq('Hello, World!')
  end
end