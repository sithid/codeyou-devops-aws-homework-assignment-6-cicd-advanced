### Homework Assignment: Building a CI/CD Pipeline with GitHub Actions

#### **Objective**
Students will design and implement a CI/CD pipeline using **GitHub Actions** for a **Ruby application**. The pipeline will ensure code quality, security, and proper deployment practices by including steps for linting, vulnerability scanning, testing, and Docker image deployment.

---

#### **Prerequisites**
1. **Knowledge Required**:
   - Basics of GitHub Actions
   - Familiarity with Ruby, unit testing, Docker, and GitHub secrets

2. **Tools**:
   - A GitHub repository (students' own or a provided template)
   - A Docker Hub account (or any container registry)

---

#### **Assignment Tasks**

1. **Clone the Template Repository**:
   - A sample Ruby application with unit tests will be provided.
   - Students must clone the repository and set it up locally.

2. **Implement GitHub Actions Workflow**:
   - Create two workflow files:
     1. **`main.yml`** for pushes to the `main` branch.
     2. **`develop.yml`** for pushes to the `develop` branch.

3. **Pipeline Steps**:
   Each workflow should include the following steps:
   
   **Step 1: Setup**
   - Use the latest Ubuntu image for the runner.
   - Set up Ruby using a suitable GitHub Action.

   **Step 2: Linting and Styling**
   - Add a step to check for code styling and linting using `rubocop`.
   - **Hint:** Refer to the [docs here for how RuboCop is used](./Docs/Using-Rubocop.md).

   **Step 3: Vulnerability Checks**
   - Add a step to scan for code vulnerabilities using tools like `brakeman`.
   - Add a step to check for dependency vulnerabilities using `bundler-audit`.
   - **Hint:** Refer to the [docs here for how to use Brakeman](./Docs/Using-Brakeman.md)
   - **Hint:** Refer to the [docs here for how to use Bundle-Audit](./Docs/Using-Bundle-Audit.md)

   **Step 4: Unit Tests**
   - Execute unit tests for the Ruby application using `rspec`.
   - **Hint:** Refer to the [docs here for how to use rspec](./Docs/Using-Rspec.md)

   **Step 5: Docker Image Build and Push**
   - Build the Docker image for the Ruby application.
   - Push the image to a Docker registry (Docker Hub).
   - **Hint:** You will need to have an account on https://hub.docker.com, you will be pushing your image to your account.
   - ****WARNING: DO NOT Include your credentials in the pipeline file. Your account could be hijacked if you do this!**** Your credentials should only be referenced by using github secrets


4. **Environment Variables and Secrets**:
   - Configure GitHub repository secrets for:
     - Docker Hub credentials (`DOCKER_USERNAME`, `DOCKER_PASSWORD`)
     - Application-specific environment variables (e.g., `DATABASE_URL`, `RAILS_ENV`)

5. **Branch-Specific Behavior**:
   - Ensure `main.yml` workflow deploys the Docker image with the `latest` tag.
   - Ensure `develop.yml` workflow deploys the Docker image with the `develop` tag.

6. **Submit the Assignment**:
   - Submit the GitHub repository URL.
   - Submit the link to your Dockerhub repo with the image.


---

### **Grading Criteria**

1. **Correctness**:
   - All required steps are present and functional.
   - Workflows execute without errors.
   - Docker image can be pulled and executed.

2. **Best Practices**:
   - Proper use of GitHub Actions environment variables and secrets.
   - Clear and maintainable workflow files.
   - **Zero points if you hardcode your credentials in your pipeline file**

3. **Bonus**:
   - 10pts: In addition to tagging and pushing two images with the `develop` and `main` tags you can achieve bonus points by successfully tagging and pushing a docker image using the short version of the git commit hash that triggered the pipeline
        - **Outcome**: Have an image in your repo named/tagged as `<your username>/ruby-app:243883d`
