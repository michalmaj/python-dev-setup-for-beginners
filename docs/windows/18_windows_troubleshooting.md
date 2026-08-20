# Windows Troubleshooting

Use this page when something in the Windows path does not work.

Start with the exact error message. Then find the closest section below.

## PowerShell says a command is not recognized

Example:

```text
git : The term 'git' is not recognized
```

This usually means the tool is not installed or PowerShell has not refreshed its command list yet.

Try this first:

1. Close PowerShell.
2. Open PowerShell again.
3. Run the version command again.

Examples:

```powershell
git --version
```

```powershell
uv --version
```

If the command still fails, return to the installation page for that tool.

## PowerShell says access is denied

Some installation commands need Administrator PowerShell.

Close PowerShell.

Open it again as Administrator:

1. Press the Windows key.
2. Type `PowerShell`.
3. Right-click `Windows PowerShell`.
4. Choose `Run as administrator`.

Then run the installation command again.

Do this only for installation steps that need it.

## The terminal is in the wrong folder

Run:

```powershell
Get-Location
```

This prints the current folder.

For the first Python project, it should look similar to:

```text
C:\Users\YourName\Documents\Projects\my-first-python-project
```

If you are in the wrong folder, move to the project folder:

```powershell
cd $HOME\Documents\Projects\my-first-python-project
```

Then run your command again.

## VS Code opened the wrong folder

Close VS Code.

Open PowerShell.

Move into the project folder:

```powershell
cd $HOME\Documents\Projects\my-first-python-project
```

Open that exact folder:

```powershell
code .
```

In VS Code, check that the Explorer panel shows files such as:

```text
main.py
pyproject.toml
```

## git status says this is not a Git repository

You are either in the wrong folder or Git has not been initialized there.

First check the folder:

```powershell
Get-Location
```

If you are inside the project folder, initialize Git:

```powershell
git init
```

Then run:

```powershell
git status
```

## git push asks you to sign in

This is normal the first time you push to GitHub.

Follow the browser sign-in window or Git Credential Manager prompt.

After signing in, run:

```powershell
git push
```

again if Git did not finish the push automatically.

## git push says no configured push destination

Your local repository is not connected to GitHub yet.

Follow this guide:

- [Connect Git with GitHub](10_connect_git_with_github.md)

Then try:

```powershell
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

## main.py output did not change

Make sure you saved the file.

In VS Code, press:

```text
Ctrl+S
```

Then run:

```powershell
uv run main.py
```

again.

## When you are stuck

Collect three pieces of information:

```powershell
Get-Location
```

```powershell
git status
```

```powershell
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

Return to the Windows path:

- [Windows Path](00_windows_path.md)
