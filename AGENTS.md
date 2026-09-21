# AI App Builder Development Guide

## Mission
This repository is a reusable foundation for AI-led application development. Do not treat it as a product repository until a user supplies a concrete application brief.

## Working rules
- Start each task by reading `PROJECT_SPEC.md`, `PROJECT_STATE.md`, and any more-specific `AGENTS.md` files in the path being changed.
- Implement only requirements explicitly supplied by the user. Record assumptions, open questions, and deferred decisions in `PROJECT_STATE.md`; do not silently invent product behavior, screens, data models, credentials, or integrations.
- Prefer small, modular, documented changes that can be reused across application types and platforms.
- Keep application-specific code, assets, and configuration isolated from reusable workflow tooling and templates.
- Never commit secrets, generated credentials, local environment files, or private user data. Provide documented environment-variable names and example placeholders when configuration is needed.
- Use clear names, consistent formatting, and tests appropriate to the changed language and tooling. Do not add exception handling around imports solely to hide missing dependencies.

## Development workflow
1. Capture the application concept, requirements, supported platforms, UI references, acceptance criteria, and constraints in a tracked brief or issue.
2. Inspect the existing implementation and update `PROJECT_STATE.md` with the plan, decisions, risks, and known issues.
3. Implement in focused increments with automated checks.
4. Build and test the affected targets; investigate and fix actionable errors before declaring work complete.
5. Validate the user-facing result iteratively against the supplied requirements. Capture screenshots for perceptible runnable web UI changes.
6. Review the diff, update documentation/state, and commit focused changes to Git.
7. Keep GitHub Actions aligned with the checks that can run reproducibly in CI.

## Repository conventions
- `templates/` contains reusable, product-neutral input templates.
- `docs/` contains workflow and architecture documentation.
- `scripts/` contains portable validation or automation scripts.
- `.github/workflows/` contains CI/CD automation.
- Android is a first-class target when requested, but no platform is assumed unless the application brief says so.

## Validation and reporting
- Run `bash scripts/validate-foundation.sh` after changing the project foundation.
- Run additional formatter, linter, unit-test, build, and platform checks whenever corresponding tooling exists.
- In completion reports, state created/changed files, commands run, results, and remaining limitations.
