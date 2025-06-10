# Security Policy

## Reporting a Vulnerability

If you have a problem with this project, please register a Github issue.


## Performing security assessments

You are welcome to peruse the source code of KilalaCMS and to analyse it for security bugs.

Performing security assessments on any running / live instances of KilalaCMS may only be undertaken on your own systems.


## Current automated testing

To try and keep the KilalaCMS project as safe as possible I apply:

* Dependabot, via Github.
* Github alerting on leaked secrets.
* Gitleaks scanning in the git pre-commit hook.
* SAST scanning with Semgrep in the command line.

In the near future I will start including automated security tests and builds via Github Actions. 


