### **Gem Installation Guide**

**`gem install`**:
- Installs the gem globally on your system.
- Typically used for standalone tools like `bundler-audit` or `brakeman` when you don’t want to include them in your project dependencies, e.g. `Gemfile`.
    - Example usage: `gem install brakeman && brakeman -p path/to/app`

**`bundle install`**:
- Installs the gems specified in your `Gemfile` into your project’s environment.
- Ensures all developers working on the project use the same gem versions.

**`bundle exec`**:
- Runs a command in the context of the gems installed by `bundle install`.
- Ensures that the correct versions of gems are used for the project.
    - Example usage: `bundle install && bundle exec brakeman path/to/app`
    - Above example assumes that `brakeman` is in your `Gemfile`