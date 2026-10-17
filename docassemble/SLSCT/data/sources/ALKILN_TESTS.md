# ALKiln end-to-end coverage

## Private dependency prerequisite

`LemmaLegalConsulting/docassemble-WorkflowDocs` is private (verified through the GitHub API). The interview requires `docassemble.WorkflowDocs`. Reference revision reviewed during this rollout: `98902b752b72f360fb017902225a8dd46d0c4eb5`. This pin includes the current-docassemble compatibility repairs in [WorkflowDocs PR #221](https://github.com/LemmaLegalConsulting/docassemble-WorkflowDocs/pull/221), whose standalone upload/print completion passed locally. Provision this exact revision; the older default branch lacks those repairs. A clean temporary server cannot resolve the `git+https` dependency anonymously.

Provision this dependency before the parent package install using a dedicated read-only `ALKILN_DEPENDENCY_TOKEN` with access only to the required dependency repository, or an accessible package distribution/mirror. Do not copy a developer's general GitHub CLI token. The current stock server-startup action installs the parent package immediately, so adding a token secret alone does not provision the dependency; an authenticated dependency checkout/install or a prepared image is needed before that install.

This PR stays draft until the private dependency is available and the enabled scenario passes isolated CI. No substitute dependency or disabled fixture is used.
