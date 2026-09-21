# AI App Builder

A reusable foundation for AI-led application development. It is ready to accept application briefs without precommitting the repository to a particular product, platform, or framework.

## Start a new application
1. Copy [`templates/application-brief.md`](templates/application-brief.md) into a tracked planning location and complete only the information you want to provide.
2. Review [`PROJECT_SPEC.md`](PROJECT_SPEC.md) for repository scope and [`PROJECT_STATE.md`](PROJECT_STATE.md) for the current status.
3. Use [`AGENTS.md`](AGENTS.md) as the development workflow and repository rules.

## Repository layout
- `templates/` — product-neutral templates for user-provided inputs.
- `docs/` — reusable workflow and architecture documentation.
- `scripts/` — portable validation and automation scripts.
- `.github/workflows/` — GitHub Actions CI/CD definitions.

## Foundation validation
Run:

```bash
bash scripts/validate-foundation.sh
```
