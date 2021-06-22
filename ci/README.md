# Continuous Integration
---

This project uses [Concourse](https://concourse-ci.org/) to perform Continuous Deployment.

## Parent Pipeline
This project uses common pipeline templates from the [parent pipeline project](https://stash.tools.deloitteinnovation.us/projects/DL/repos/parent-pipeline/browse)

Pipelines used are:

[ilab-service](https://stash.tools.deloitteinnovation.us/projects/DL/repos/parent-pipeline/browse/pipelines/ilab-service.md)


These parent pipelines require the following, project specific tasks:

| task | description |
| --- | --- |
| ci/tasks/qa-integration-tests.yml | This has not been implemented yet for IAS |
| ci/tasks/qa-functional-tests.yml | This has not been implemented yet for IAS |
| ci/tasks/validation/pre-build-validation-hook.yml | This task is invoked prior to performing a build.  Use it to perform validation not provided by the parent pipeline.  For IAS this is a no-op task. |

## Project Configuration

Project Specific parameters required by the parent pipeline are specified in `ci/pipeline-params.yml` and `ci/release-params.yml`

Extra parameters can be added in `ci/helm-params.yml` for helm configuration and `ci/jira-params.yml` for jira tickets escalation.

