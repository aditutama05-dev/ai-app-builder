# Project Specification: Reusable AI App Builder

## Purpose
This repository is a reusable AI App Builder system for developing applications with AI acting as the primary developer. It is intentionally a foundation rather than an implementation of any particular end-user product.

## Inputs
For each future application, the user may provide:
- an application concept and goals;
- functional and non-functional requirements;
- target platforms, including Android where relevant;
- UI references, assets, workflows, and technical constraints; and
- acceptance criteria and other specifications.

No application-specific requirements are defined by this repository until the user provides them.

## Expected workflow
The system supports an iterative development loop in which AI:
1. reviews the supplied brief and repository context;
2. plans and writes code;
3. builds and tests the affected application targets;
4. detects, diagnoses, and fixes errors;
5. validates results against the supplied requirements; and
6. repeats the loop until the agreed work is complete.

## Source control and automation
GitHub is the source-control system. GitHub Actions should provide CI/CD automation where it is appropriate, reproducible, and supported by the target application.

## Platform scope
Android applications are an important target. The foundation must remain platform- and application-agnostic so it can support other application types and future projects as well.

## Out of scope for this foundation
- Selecting or implementing a specific end-user application.
- Inventing product requirements, UI designs, integrations, data models, or deployment targets.
- Creating the Live Chat Reader application.
