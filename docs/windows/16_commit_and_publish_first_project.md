# Commit and Publish the First Project

Complete the first full Python workflow:

```text
edit -> run -> review -> commit -> push
```

## What you will learn

You will learn how to change the generated code, commit the complete project, create its GitHub repository, and push it online.

## Step 1: Open the Python file

In VS Code, open:

```text
src\my_first_python_project\__init__.py
```

Change the generated greeting to:

```python
print("Hello from my first Python project!")
```

Save the file with `Ctrl+S`.

## Step 2: Run the changed project

In the VS Code terminal, run:

```powershell
uv run my-first-python-project
```

Expected result:

```text
Hello from my first Python project!
```

## Step 3: Review the project

Run:

```powershell
git status
```

Git should list the generated project files as untracked.

Display the source file before staging it:

```powershell
Get-Content src\my_first_python_project\__init__.py
```

Confirm that it contains the expected greeting.

## Step 4: Stage and commit the project

Run:

```powershell
git add .
```

The dot means all changes in the current project. This is appropriate here because `uv` created the folder and `.gitignore` excludes generated environment files.

Check the staged files with `git status`. You should not see `.venv` in the commit.

Create the commit:

```powershell
git commit -m "feat: create first Python project"
```

## Step 5: Create an empty GitHub repository

Open this page in your browser:

```text
https://github.com/new
```

Name the repository `my-first-python-project`. Choose public or private visibility.

Do not add a README, `.gitignore`, or license because those files already exist locally.

Create the repository and copy its HTTPS URL.

## Step 6: Connect and push

Replace the username and run:

```powershell
git remote add origin https://github.com/YOUR-USERNAME/my-first-python-project.git
```

Check the address with `git remote -v`, then push:

```powershell
git push -u origin main
```

Complete the official GitHub sign-in prompt if it appears.

## Step 7: Verify the published project

Refresh the repository page on GitHub. You should see `README.md`, `pyproject.toml`, `src`, and `uv.lock`.

The `.venv` folder should not appear.

## Common problems

### The changed output does not appear

Save the file with `Ctrl+S`, check the current folder, and run the application again.

### .venv appears in git status

Do not commit it. Check that `.gitignore` contains `.venv`. If it is staged, run:

```powershell
git restore --staged .venv
```

### origin already exists

Run `git remote -v`. If the URL is wrong, use `git remote set-url origin` followed by the correct HTTPS URL.

### The push is rejected

Confirm that the GitHub repository is empty and that its name and owner match the remote URL.

## Next step

Verify the entire Windows setup:

- [Windows Completion Checklist](17_windows_completion_checklist.md)
