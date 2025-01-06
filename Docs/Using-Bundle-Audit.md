## Bundler-Audit
Bundler-Audit checks for known vulnerabilities in your Ruby dependencies.

Source: https://github.com/rubysec/bundler-audit

### Installation
Install Bundler-Audit (in your Gemfile or as a standalone gem):
```bash
gem install bundler-audit
```

### Running Bundler-Audit Locally
Run Bundler-Audit locally:
```bash
bundle-audit check
```

Update the vulnerability database before running checks:
```bash
bundle-audit update
```

### Adding Bundler-Audit to CI/CD Pipeline
Add Bundler-Audit to your CI/CD pipeline:

#### Example for GitHub Actions
Create a `.github/workflows/security.yml` file with the following content:
```yaml
steps:
  - name: Run Bundler-Audit
    run: |
      gem install bundler-audit
      bundle-audit update
      bundle-audit check
```

### Notes
- `bundle-audit check` will exit with a non-zero status if vulnerabilities are found, causing the pipeline to fail.
- Regularly update the vulnerability database to ensure accurate results.
- Consider integrating other security tools for comprehensive checks.