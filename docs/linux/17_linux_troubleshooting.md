# Linux Troubleshooting

Use this page when something in the Linux path does not work.

Start with the exact error message. Then find the closest section below.

## The terminal says command not found

Example:

```text
git: command not found
```

This usually means the tool is not installed or the terminal has not refreshed its command list yet.

Try this first:

1. Close the terminal.
2. Open the terminal again.
3. Run the version command again.

Examples:

```bash
git --version
```

```bash
uv --version
```

If the command still fails, return to the installation page for that tool.

## sudo asks for a password

That is normal.

Type the password for your Linux user account and press Enter.

The terminal may not show dots or stars while you type.

## apt says unable to locate package

Run:

```bash
sudo apt update
```

Then try the install command again.

For example:

```bash
sudo apt install git
```

If the problem continues, check whether you are using Ubuntu, Debian, or a similar distribution.

## The terminal is in the wrong folder

Run:

```bash
pwd
```

This prints the current folder.

For the first Python project, it should look similar to:

```text
/home/yourname/Projects/my-first-python-project
```

If you are in the wrong folder, move to the project folder:

```bash
cd ~/Projects/my-first-python-project
```

Then run your command again.

## VS Code opened the wrong folder

Close VS Code.

Open the terminal.

Move into the project folder:

```bash
cd ~/Projects/my-first-python-project
```

Open that exact folder:

```bash
code .
```

In VS Code, check that the Explorer panel shows files and folders such as:

```text
pyproject.toml
src
```

## git status says this is not a Git repository

You are either in the wrong folder or Git has not been initialized there.

First check the folder:

```bash
pwd
```

If you are inside the project folder, initialize Git:

```bash
git init
```

Then run:

```bash
git status
```

## git push asks you to sign in

This is normal the first time you push to GitHub.

Follow the browser sign-in flow, credential prompt, or official GitHub instructions shown by Git.

After signing in, run:

```bash
git push
```

again if Git did not finish the push automatically.

## git push says no configured push destination

Your local repository is not connected to GitHub yet.

Follow this guide:

- [Connect Git with GitHub](09_connect_git_with_github.md)

Then try:

```bash
git push
```

again.

## uv run takes a long time

The first run may take longer.

`uv` may need to:

- prepare a virtual environment,
- download Python,
- create or update `uv.lock`.

Wait for the command to finish.

If it finishes with an error, read the error message and check whether you are in the correct project folder.

## The project output did not change

Make sure you saved the Python file.

In VS Code, press:

```text
Ctrl+S
```

Then run:

```bash
uv run my-first-python-project
```

again.

## uv says no such command or project

Check that you are inside the project folder:

```bash
pwd
ls
```

You should see:

```text
pyproject.toml
src
```

If you are outside the project folder, move into it:

```bash
cd ~/Projects/my-first-python-project
```

Then run the project again.

## When you are stuck

Collect three pieces of information:

```bash
pwd
```

```bash
git status
```

```bash
uv --version
```

Copy the exact error message too.

The exact message is more useful than a general description like "it does not work".

## Key idea

Most beginner setup problems come from one of three things:

```text
wrong folder
missing tool
unsaved file
```

Check those first.

## Next step

Return to the Linux path:

- [Linux Path](00_linux_path.md)
