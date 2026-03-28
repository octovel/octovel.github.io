# Contribution Guidelines

Effective date: March 28th, 2026
Applies to: All Octovel GitHub repositories

---
## Introduction

Thank you for your interest in contributing to Octovel. Whether you are fixing a bug, proposing a new feature, improving documentation, or sharing feedback, your contribution is valued and appreciated.
These guidelines are designed to make the contribution process as clear and consistent as possible across all Octovel repositories. Please read them carefully before submitting any contribution.
By contributing to an Octovel project, you agree to abide by our [Community Guidelines](https://community.octovel.org/guidelines) and [Developer Standards](https://developer.octovel.org/standards).

---
## 1. Getting Started

### 1.1 Prerequisites

Before contributing, ensure you are familiar with:

- The purpose and scope of the repository you intend to contribute to. Read its `README.md` thoroughly.
- The technology stack used by the project (TypeScript/JavaScript, Go, or Python depending on the repository).
- Our [Developer Standards](https://developer.octovel.org/standards), which define the code quality, formatting, and architectural expectations that apply across all Octovel projects.

### 1.2 Setting Up Your Environment

1. **Fork** the repository to your own GitHub account.
2. **Clone** your fork locally:

```bash
   git clone https://github.com/<your-username>/<repository>.git
   cd <repository>
```

3. **Install dependencies** as described in the repository's `README.md` or `CONTRIBUTING.md` file.
4. **Create a branch** for your work.
5. Verify that existing tests pass before making any changes.

### 1.3 First-Time Contributors

If this is your first contribution to Octovel, we recommend starting with issues labeled `Help Wanted`. These are intentionally scoped to be approachable and well-documented.

Do not hesitate to ask questions in the `#discussion` channel on Discord or directly on the relevant GitHub issue.

---
## 2. Submitting Issues

### 2.1 Before Opening an Issue

Before submitting a new issue, please:

- Search existing issues (open and closed) to avoid duplicates.
- Verify that the issue is reproducible and not caused by a local configuration problem.
- Ensure the issue is within the scope of the repository.

### 2.2 Bug Reports

A good bug report enables maintainers to reproduce and diagnose the problem efficiently. Include the following:

- **A clear and descriptive title** summarizing the problem.
- **Steps to reproduce** the issue, as concisely as possible.
- **Expected behavior**, what you expected to happen.
- **Actual behavior**, what actually happened.
- **Environment details**, operating system, runtime version, package version, and any other relevant context.
- **Relevant logs or error messages**, formatted as code blocks.

Use the bug report template if one is provided in the repository.

### 2.3 Feature Requests

When proposing a new feature, please provide:

- **A clear and descriptive title.**
- **The problem or limitation** the feature would address.
- **A proposed solution**, even if high-level or preliminary.
- **Any alternatives considered**, and why the proposed solution is preferable.

Feature requests are reviewed by maintainers in the context of the project's roadmap and scope. Not all requests will be accepted, and a response may take time given our volunteer-based structure.

### 2.4 Issue Etiquette

- Keep issues focused on a single concern. Open separate issues for separate problems.
- Do not use issues for general support questions. Use the `#discussion` channel on Discord instead.
- Avoid adding comments that do not contribute new information (e.g., "+1" or "any update?"). Use GitHub reactions to express agreement.

---
## 3. Branching & Commit Conventions

### 3.1 Branching

All contributions must be made on a dedicated branch. Do not commit directly to `main` or any protected branch.

Branch names should follow this format:

```
<type>/<short-description>
```

Common types:

|Type|Purpose|
|---|---|
|`feat`|A new feature|
|`fix`|A bug fix|
|`docs`|Documentation changes only|
|`refactor`|Code restructuring without behavior change|
|`test`|Adding or updating tests|
|`chore`|Maintenance tasks (dependencies, config, etc.)|

**Examples:**

```
feat/user-authentication
fix/rate-limiter-overflow
docs/update-readme
```

### 3.2 Commit Messages

Commits must follow the [Conventional Commits](https://www.conventionalcommits.org/) specification:

```
<type>(<scope>?): <short description>
```

- The description must be written in lowercase and in the imperative mood (e.g., `add`, `fix`, `update`, not `added`, `fixed`, `updated`).
- Keep the subject line under 72 characters.
- Use the commit body to provide additional context when necessary.

**Examples:**

```
feat: add refresh token rotation
fix(middleware): resolve nil pointer in rate limiter
docs(readme): update installation instructions
```

Each commit should represent a single, logical change. Avoid bundling unrelated modifications into a single commit.

---
## 4. Pull Requests & Code Review

### 4.1 Opening a Pull Request

Before opening a pull request (PR), ensure the following:

- Your branch is up to date with the base branch (`stable` or the relevant release branch).
- All existing tests pass locally.
- New functionality is covered by appropriate tests.
- Your code adheres to the [Developer Standards](https://developer.octovel.org/standards).
- The PR is focused on a single concern. If your changes address multiple issues, consider splitting them into separate PRs.

When opening a PR, provide:

- **A clear and descriptive title** following the same convention as commit messages.
- **A description** explaining what the PR does, why it is needed, and how it was implemented.
- **A reference to the related issue**, if applicable (e.g., `Closes #42`).
- **Any relevant notes for reviewers**, such as areas requiring particular attention or known limitations.

Use the pull request template if one is provided in the repository.

### 4.2 Pull Request Standards

- Draft PRs are welcome for work in progress. Mark them as ready for review only when they meet the standards above.
- Keep PRs reasonably scoped. Large PRs are harder to review and more likely to introduce unintended regressions.
- Respond to review comments promptly and constructively. If you disagree with a suggestion, explain your reasoning clearly.
- Do not force-push to a branch once a review is in progress, unless explicitly requested by a reviewer.

### 4.3 Code Review

All pull requests require at least one approval from a maintainer before being merged. Reviewers are expected to:

- Provide feedback that is specific, objective, and constructive.
- Distinguish between required changes and optional suggestions.
- Approve a PR once all required changes have been addressed, without demanding stylistic perfection beyond the established standards.

Contributors are expected to:

- Address all required change requests before requesting a re-review.
- Not merge their own PRs unless they are a maintainer and no review is required by policy.

### 4.4 Merging

PRs are merged by maintainers. The preferred merge strategy may vary per repository and will be documented in the repository's `README.md` or `CONTRIBUTING.md`. In general:

- **Squash and merge** is preferred for feature branches to keep the history clean.
- **Merge commits** may be used for significant features or when preserving commit history is valuable.
- **Rebase and merge** may be used at the maintainer's discretion.

---
## 5. Additional Notes

### Documentation

Contributions that introduce new functionality must include corresponding documentation updates. This includes inline code comments, API documentation, and any relevant sections in the repository's `README.md`.

### Tests

All non-trivial changes are expected to include tests. Contributions that reduce test coverage without justification will not be accepted.

### Licensing

By submitting a contribution, you agree that your work will be licensed under the same license as the repository you are contributing to. Octovel projects are released under open-source licenses. Refer to the `LICENSE` file in the relevant repository for details.

---

## Reference

|Resource|URL|
|---|---|
|Community Guidelines|[https://community.octovel.org/guidelines](https://community.octovel.org/guidelines)|
|Developer Standards|[https://developer.octovel.org/standards](https://developer.octovel.org/standards)|
|GitHub Organization|[https://github.com/octovel](https://github.com/octovel)|
|Discord Server|Available via invite link|

---

_For questions about these guidelines, reach out in the `#discussion` channel on Discord or contact a maintainer directly._
