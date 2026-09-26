# macOS Troubleshooting

Use this page when a step in the macOS path does not work. Start with the exact error message.

## Terminal says command not found

Close Terminal and VS Code completely, then reopen them and retry the version command:

```bash
brew --version
git --version
code --version
uv --version
```

If only one command fails, return to that tool's installation page.

## brew is not found

Rerun the official Homebrew installer and read the `Next steps` section it prints.

Run the shell setup commands shown for your own Mac, then open a new Terminal window. Apple Silicon and Intel Macs use different default Homebrew locations.

## macOS blocks an application

Download applications only from their official websites.

Open the application from Finder's `Applications` folder and follow the macOS security prompt. Do not bypass security warnings for software from an unknown source.

## Terminal asks for a password but shows nothing

Type your macOS account password and press Return. Terminal normally displays no dots or stars while a password is entered.

## Terminal is in the wrong folder

Run:

```bash
pwd
```

For the Python project, the path should end with:

```text
/Projects/my-first-python-project
```

Move there with:

```bash
cd ~/Projects/my-first-python-project
```

## VS Code opened the wrong folder

Close the VS Code window. In Terminal, move into the project and open that exact folder:

```bash
cd ~/Projects/my-first-python-project
code .
```

The Explorer should show `pyproject.toml` and `src`.

## code is not found

Open VS Code, press `Command+Shift+P`, and run:

```text
Shell Command: Install 'code' command in PATH
```

Close and reopen Terminal before trying `code --version` again.

## Git says this is not a repository

Run `pwd` and `ls -a`. Make sure you are inside the project and that `.git` appears in the list.

If you are in the correct newly created project but `.git` is missing, run:

```bash
git init
```

## Git push asks you to sign in

Complete the browser or credential prompt provided by GitHub. GitHub does not accept your account password for Git operations over HTTPS.

If sign-in fails, confirm in your browser that you can access the repository with the same account.

## Git push has no destination

Check the remote:

```bash
git remote -v
```

If no output appears, repeat the connection steps from [Connect Git with GitHub](10_connect_git_with_github.md).

## uv run takes a long time

The first run can download Python, create `.venv`, install the project, and create `uv.lock`. Wait for the command to finish.

If it fails, check the network connection and confirm that Terminal is inside the project folder.

## The project output did not change

Save the Python file with `Command+S`, then run the project again:

```bash
uv run my-first-python-project
```

## .venv appears on GitHub

The virtual environment should not be committed. Confirm that `.gitignore` contains `.venv` before your next commit.

Removing an already published folder changes repository history and is outside this beginner setup path. Keep the repository private until you are comfortable correcting it.

## When you are stuck

Collect this information:

```bash
pwd
git status
git remote -v
uv --version
```

Also keep the full error message. Exact output is more useful than saying only that a command does not work.

## Next step

Return to:

- [macOS Path](00_macos_path.md)
- [macOS Completion Checklist](17_macos_completion_checklist.md)
