# Student Completion Evidence

Use this page after completing the learning path for your operating system. It defines a small, consistent set of results you can show your instructor.

Your instructor may use a learning platform, form, or another submission method. Follow those course-specific instructions first.

## What to submit

Provide:

1. your operating system and version,
2. the version output for Git, VS Code, and `uv`,
3. the output from the first Python project,
4. a clean Git status,
5. the GitHub repository URL,
6. confirmation that `.venv` is not stored on GitHub.

Text output is usually easier to search and review than screenshots. Use screenshots only when the instructor asks for them or when a visual problem cannot be described clearly.

## Windows commands

Run these commands in PowerShell or the VS Code terminal:

```powershell
git --version
code --version
uv --version
cd $HOME\Documents\Projects\my-first-python-project
uv run my-first-python-project
git status
git remote -v
```

## Linux and macOS commands

Run these commands in the terminal or the VS Code terminal:

```bash
git --version
code --version
uv --version
cd ~/Projects/my-first-python-project
uv run my-first-python-project
git status
git remote -v
```

## Expected project results

The project should print:

```text
Hello from my first Python project!
```

Git should report:

```text
nothing to commit, working tree clean
```

The remote output should contain your GitHub repository URL for both fetch and push.

## Check GitHub

Open the repository in a browser. Confirm that it contains items such as:

```text
README.md
pyproject.toml
src
uv.lock
```

The `.venv` folder should not appear.

Do not change a private repository to public only to complete an assignment. Follow the instructor's method for sharing private work.

## Submission template

Use this structure when the course does not provide another template:

```text
Operating system and version:
Git version:
VS Code version:
uv version:
Project output:
Git status:
Repository URL:
.venv absent from GitHub: yes
```

## Protect private information

Before submitting output or a screenshot:

- remove passwords, access tokens, and recovery codes,
- do not show unrelated browser tabs, messages, or personal files,
- check whether a path contains a real name you do not want to share publicly,
- share private repository access only through the method chosen by the instructor.

Git version output, project output, and a repository URL do not require your GitHub password or an access token.

## If a check fails

Return to the troubleshooting page for your system:

- [Windows Troubleshooting](windows/18_windows_troubleshooting.md)
- [Linux Troubleshooting](linux/17_linux_troubleshooting.md)
- [macOS Troubleshooting](macos/18_macos_troubleshooting.md)

When you need more help, keep the full error message and use the repository's [setup problem issue form](https://github.com/michalmaj/python-dev-setup-for-beginners/issues/new?template=setup-problem.yml).

## Next step

After the setup is accepted, continue with the course or the related `modern-python-project-guide` repository.
