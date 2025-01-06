# Using `brakeman` and `bundler-audit` in CI/CD Pipeline

## Brakeman
Brakeman is a static analysis tool for finding security vulnerabilities in Ruby on Rails applications.

Source: https://github.com/presidentbeef/brakeman

### Installation
Install Brakeman (in your Gemfile or as a standalone gem):
```bash
gem install brakeman
```

### Running Brakeman Locally
Run Brakeman analysis locally:
```bash
brakeman
```

Run Brakeman with additional options:
- Exclude certain files or paths:
  ```bash
  brakeman --exclude vendor,config/initializers
  ```
- Generate a JSON report:
  ```bash
  brakeman --format json --output brakeman-report.json
  ```

### Adding Brakeman to CI/CD Pipeline
Add Brakeman to your CI/CD pipeline (e.g., GitHub Actions, Jenkins):

#### Example for GitHub Actions
Create a `.github/workflows/security.yml` file with the following content:
```yaml
steps:
  - name: Run Brakeman
    run: |
      gem install brakeman
      brakeman --exit-on-warn
```
`--exit-on-warn` ensures the pipeline fails if any warnings are found.


