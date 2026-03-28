# Developer Standards

Effective date: March 28th, 2026
Applies to: All Octovel GitHub repositories

---
## Introduction

These standards define the technical expectations that apply to all code written and maintained under the Octovel organization. They are intentionally language-agnostic and tool-agnostic, focusing on principles rather than implementation details. Each repository may extend these standards with language-specific or tooling-specific rules documented in its own `README.md` or `CONTRIBUTING.md`.

Adhering to these standards ensures that Octovel projects remain consistent, maintainable, and accessible to contributors regardless of which repository they work on.

These standards are to be read alongside our [Contribution Guidelines](https://developer.octovel.org/guidelines) and [Community Guidelines](https://community.octovel.org/guidelines).

---
## 1. Architecture & Project Structure

### 1.1 Clarity Over Cleverness

Code should be written to be read. Prefer straightforward, explicit solutions over compact or overly abstract ones. A contributor unfamiliar with the codebase should be able to understand the intent of a module or function without requiring deep context.

### 1.2 Separation of Concerns

Each module, package, or file should have a single, clearly defined responsibility. Avoid mixing unrelated concerns within the same unit. Business logic, data access, and presentation layers must remain clearly separated.

### 1.3 Consistency Within a Repository

Follow the structural conventions already established in the repository you are contributing to. If a pattern exists for how modules are organized, how files are named, or how dependencies are injected, maintain that pattern unless a refactor is explicitly intended and discussed.

### 1.4 Minimal Dependencies

Octovel projects favor lightweight, self-contained implementations. Avoid introducing external dependencies for functionality that can be reasonably implemented without them. Every new dependency must be justified by the value it provides relative to the maintenance cost it introduces.

### 1.5 Avoid Premature Abstraction

Do not abstract until the need for abstraction is clear and recurring. Premature abstractions add complexity without benefit and make codebases harder to navigate. Prefer duplication over the wrong abstraction.

### 1.6 File and Directory Naming

- Use lowercase names for files and directories.
- Use a consistent delimiter style (e.g., hyphens or underscores) as established by the repository.
- Name files after their primary export or responsibility. A file's name should make its contents predictable.

---
## 2. Code Style & Formatting

### 2.1 Automated Formatting

All code must be formatted using the formatting tool configured in the repository before being submitted. Do not submit code with formatting inconsistencies. Refer to the repository's documentation for the specific tool and configuration in use.

### 2.2 Linting

All code must pass the linting rules configured in the repository. Linting errors must be resolved before a pull request is opened. Suppressing linter rules inline is permitted only when strictly necessary and must be accompanied by a comment explaining the reason.

### 2.3 Naming Conventions

Names should be descriptive, unambiguous, and consistent with the conventions of the language and repository. Avoid abbreviations unless they are universally understood within the domain. Names should reveal intent without requiring a comment to explain them.

- Variables and functions should describe what they hold or do.
- Types, classes, and interfaces should describe what they represent.
- Boolean variables and functions should read as a question (e.g., `isValid`, `hasPermission`).
- Constants should clearly convey their fixed nature and purpose.

### 2.4 Function and Method Design

- Functions should do one thing and do it well. If a function requires a lengthy comment to explain what it does, it likely needs to be decomposed.
- Keep functions short. As a general guideline, a function that does not fit within a single screen of code is a candidate for refactoring.
- Limit the number of parameters. When a function requires many inputs, consider grouping related parameters into a structured object or type.
- Avoid side effects where possible. Functions that modify external state should make that intent explicit.

### 2.5 Error Handling

- All errors must be handled explicitly. Silently swallowing errors is not acceptable.
- Error messages must be clear, specific, and actionable. Include relevant context to aid debugging.
- Distinguish between expected errors (e.g., invalid input, not found) and unexpected errors (e.g., infrastructure failures), and handle them accordingly.
- Do not use errors for flow control in non-exceptional situations.

### 2.6 Comments and Inline Documentation

- Write comments to explain **why** something is done, not **what** is being done. The code itself should make the what self-evident.
- Remove commented-out code before submitting. Version control exists for that purpose.
- Keep comments up to date. An outdated comment is worse than no comment.
- Use the comment style and conventions established in the repository.

### 2.7 Magic Values

Do not use unexplained literal values (numbers, strings, or booleans) inline in logic. Extract them into named constants that convey their meaning and purpose.

---
## 3. Testing Standards

### 3.1 Tests Are Required

All non-trivial changes must be accompanied by tests. A pull request that introduces new functionality without tests will not be accepted unless the absence of tests is explicitly justified and agreed upon by a maintainer.

### 3.2 Test Scope

- **Unit tests** must cover individual functions or modules in isolation.
- **Integration tests** must cover interactions between components where applicable.
- Tests should cover both expected behavior and meaningful edge cases.

### 3.3 Test Clarity

Tests serve as living documentation. Each test must:

- Have a descriptive name that clearly states what behavior is being verified and under what conditions.
- Be self-contained and not depend on the execution order of other tests.
- Set up its own state and clean up after itself where applicable.

### 3.4 Test Coverage

Aim to maintain or improve the test coverage of any file you modify. Contributions that significantly reduce coverage without justification will be flagged during review. Coverage is a signal, not a goal in itself, prioritize meaningful tests over superficial ones.

### 3.5 Failing Tests

Never submit a pull request with failing tests. If an existing test fails due to an intentional behavioral change, update the test and document the reason in the pull request description.

---
## 4. Documentation Standards

### 4.1 Public APIs Must Be Documented

Every function, method, type, or module that is part of a public API must be documented. Documentation must describe:

- The purpose and behavior of the entity.
- The meaning and expected values of each parameter.
- The return value and its type.
- Any errors or exceptions that may be raised.
- Usage examples where the behavior is non-obvious.

### 4.2 README

Every repository must include a `README.md` at its root that covers at minimum:

- What the project does and who it is for.
- How to install or set up the project locally.
- Basic usage with a concrete example.
- A link to further documentation if applicable.

### 4.3 Changelog

Significant changes must be reflected in the repository's changelog, if one exists. Follow the format already established in the repository. If no changelog exists, maintainers may request one be introduced as part of a major contribution.

### 4.4 Keep Documentation Current

Documentation that is inaccurate is more harmful than no documentation. When modifying behavior, update the corresponding documentation as part of the same pull request. Documentation-only pull requests are equally welcome and valued.

---
## Reference

|Resource|URL|
|---|---|
|Contribution Guidelines|[https://developer.octovel.org/guidelines](https://developer.octovel.org/guidelines)|
|Community Guidelines|[https://community.octovel.org/guidelines](https://community.octovel.org/guidelines)|
|GitHub Organization|[https://github.com/octovel](https://github.com/octovel)|

---

_For questions about these standards, reach out in the `#discussion` channel on Discord or contact a maintainer directly._
