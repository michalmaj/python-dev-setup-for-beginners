# Make the First Project Commit

After creating and running your first Python project, make a small change and save it with Git.

This is the first full project workflow:

```text
edit -> run -> check Git status -> commit
```

## What you will learn

In this section, you will learn how to:

- edit the generated Python code,
- run the project again,
- check changed files with Git,
- commit your change,
- push the commit if your project has a GitHub remote.

## Before you start

You should already have created your first `uv` project.

If not, read this section first:

- [Create the First Python Project](14_create_first_uv_project.md)

## Step 1: Open the project in VS Code

Open the terminal.

Move into your project folder:

```bash
cd ~/Projects/my-first-python-project
```

Open the folder in VS Code:

```bash
code .
```

## Step 2: Open the Python file

In VS Code, open the `src` folder.

Open the generated Python file inside the project package folder.

For this project, the path may look similar to:

```text
src/my_first_python_project/__init__.py
```

Find the line that prints a message.

It may look similar to:

```python
print("Hello from my-first-python-project!")
```

## Step 3: Change the message

Change the message to something simple:

```python
print("Hello from my first Python project!")
```

Save the file.

In VS Code, you can save with:

```text
Ctrl+S
```

## Step 4: Run the project again

Open the VS Code terminal.

Run:

```bash
uv run my-first-python-project
```

Expected result:

```text
Hello from my first Python project!
```

If you see your new message, the change worked.

## Step 5: Check Git status

Run:

```bash
git status
```

Git should show that your Python file changed.

You may also see files such as `uv.lock`.

That is normal. `uv` can create or update a lock file when it runs the project.

If Git says this is not a Git repository, run:

```bash
git init
```

Then run `git status` again.

## Step 6: Stage the changed files

Run:

```bash
git add src
```

This stages the changed Python file.

If `git status` shows another changed file, such as `uv.lock`, you can stage it too:

```bash
git add uv.lock
```

Only add files that Git shows in `git status`.

Now check again:

```bash
git status
```

Git should show files ready to be committed.

## Step 7: Commit the change

Run:

```bash
git commit -m "feat: update project greeting"
```

This creates a commit with your project change.

## Step 8: Check the commit history

Run:

```bash
git log --oneline
```

You should see your new commit near the top.

Example:

```text
abc1234 feat: update project greeting
```

## Step 9: Push if your project has a remote

If this project is connected to GitHub, run:

```bash
git push
```

If this project is not connected to GitHub yet, skip this step for now.

You already practiced connecting Git and GitHub with `github-practice`.

Later, you can repeat that same pattern for this Python project.

## Common problems

### The output did not change

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

### Git says nothing to commit

This usually means the file was not changed or not saved.

Run:

```bash
git status
```

Then open the Python file and check whether your new message is still there.

### Git says a file path did not match any files

You may have tried to add a file that does not exist in your project.

Use `git status` to see the actual changed files.

Then add the files Git lists.

Example:

```bash
git add src
```

### git push says no configured push destination

This project is not connected to GitHub yet.

That is okay.

You can connect it later using the same idea from:

- [Connect Git with GitHub](09_connect_git_with_github.md)

## Key idea

The basic project workflow is:

```text
edit a file
run the project
check git status
git add
git commit
git push when a remote exists
```

## Next step

You now have a working first Python project on Linux.

Next, check that your Linux setup is complete:

- [Linux Completion Checklist](16_linux_completion_checklist.md)
