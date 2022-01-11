# gitleaks-pre-commit-hooks

### Pre-Commit
1. Install pre-commit from https://pre-commit.com/#install
2. Create a `.pre-commit-config.yaml` file at the root of your repository with the following content:
```
repos:
  - repo: https://github.com/vinothsparrow/gitleaks-pre-commit-hooks
    ref: v0.0.1
    hooks:
      - id: gitleaks
```
3. Install with `pre-commit install`
4. Now you're all set!
```
➜ git commit -m "this commit contains a secret"
Detect hardcoded secrets.................................................Failed
```
Note: to disable the gitleaks pre-commit hook you can prepend `SKIP=gitleaks` to the commit command
and it will skip running gitleaks
```
➜ SKIP=gitleaks git commit -m "skip gitleaks check"
Detect hardcoded secrets................................................Skipped
```
