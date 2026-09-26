# Commit and Publish the First Project

Complete the first full Python workflow:

```text
edit -> run -> review -> commit -> push
```

## What you will learn

You will learn how to:

- change the generated Python code,
- verify the result,
- review and commit the complete project,
- create its GitHub repository,
- push the project online.

## Step 1: Open the Python file

In VS Code, open:

```text
src/my_first_python_project/__init__.py
```

Find the line that prints the greeting and change it to:

```python
print("Hello from my first Python project!")
```

Save the file with `Command+S`.

## Step 2: Run the changed project

In the VS Code terminal, run:

```bash
uv run my-first-python-project
```

Expected result:

```text
Hello from my first Python project!
```

Commit code only after checking that it runs as expected.

## Step 3: Review the project status

Run:

```bash
git status
```

Git should list the generated project files as untracked. It may also show the edited source file as part of the untracked `src` folder.

Display the source file in the terminal:

```bash
cat src/my_first_python_project/__init__.py
```

`cat` prints the file so you can confirm that it contains the expected greeting before staging it.

## Step 4: Stage the complete project

Run:

```bash
git add .
```

The dot means all visible changes in the current project. This is appropriate here because `uv` created the folder and `.gitignore` excludes generated environment files.

Always check the staged files:

```bash
git status
```

You should see project files ready to commit, but not `.venv`.

## Step 5: Create the first project commit

Run:

```bash
git commit -m "feat: create first Python project"
```

Check the result:

```bash
git status
git log --oneline
```

The working tree should be clean and the new commit should appear in the log.

## Step 6: Create an empty GitHub repository

Open this page in your browser:

```text
https://github.com/new
```

Use this repository name:

```text
my-first-python-project
```

Choose public or private visibility. Do not add a README, `.gitignore`, or license because those files already exist locally.

Create the repository and copy its HTTPS URL.

## Step 7: Connect and push

Replace the username in this command and run it in the VS Code terminal:

```bash
git remote add origin https://github.com/YOUR-USERNAME/my-first-python-project.git
```

Check the address:

```bash
git remote -v
```

Push the project:

```bash
git push -u origin main
```

Complete the official GitHub sign-in prompt if it appears.

## Step 8: Verify the published project

Refresh the repository page on GitHub. You should see files including:

```text
README.md
pyproject.toml
src
uv.lock
```

The `.venv` folder should not appear.

## Common problems

### The changed output does not appear

Save the Python file with `Command+S`, check that the terminal is in the project folder, and run the application again.

### .venv appears in git status

Do not commit it. Check that `.gitignore` contains `.venv`. If you already staged it, run `git restore --staged .venv` before committing.

### origin already exists

Run `git remote -v`. If the URL is wrong, replace it with `git remote set-url origin` followed by the correct HTTPS URL.

### The push is rejected

Confirm that the GitHub repository is empty and that its name and owner match the remote URL.

## Next step

Use the completion checklist to verify the entire macOS setup:

- [macOS Completion Checklist](17_macos_completion_checklist.md)
