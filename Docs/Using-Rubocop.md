## Example of Using RuboCop
RuboCop is a Ruby static code analyzer and formatter. Below is an example of how to install, configure, and use RuboCop for linting and styling your Ruby application.

---

**1. Installation**
Add rubocop to your project's Gemfile:
```
# Gemfile
group :development, :test do
  gem 'rubocop', require: false
end
```
Then install the dependencies:
```bash
bundle install
```

---

**2. Running Robocop**
Run RuboCop from the command line:
```bash
bundle exec rubocop
```

---

**3. Example Output**
If your Ruby code has issues, RuboCop will display them:
```text
app.rb:2:3: C: Layout/IndentationWidth: Use 2 (not 4) spaces for indentation.
    def self.greet(name)
  ^^^^
```