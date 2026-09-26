# Create a Local Git Repository

You will now create a small practice folder and save its first version with Git.

## What you will learn

You will learn how to:

- initialize a repository,
- create a file,
- inspect and stage a change,
- create a commit,
- read a short commit history.

## Step 1: Go to Projects

Run this command in Terminal:

```bash
cd ~/Projects
```

Check the location:

```bash
pwd
```

The path should end with `/Projects`.

## Step 2: Create the practice repository

Run:

```bash
mkdir github-practice
```

This creates the project folder.

Move into it:

```bash
cd github-practice
```

## Step 3: Initialize Git

Run:

```bash
git init
```

This creates a hidden `.git` folder where Git stores the repository history.

Check the repository:

```bash
git status
```

Git should report that you are on branch `main` and have no commits yet.

## Step 4: Create a README

Run:

```bash
touch README.md
```

This creates an empty Markdown file.

Open it in the built-in TextEdit application:

```bash
open -e README.md
```

Type this line and save the file:

```text
# GitHub Practice
```

Close TextEdit and return to Terminal.

## Step 5: Inspect and stage the change

Run:

```bash
git status
```

Git should show `README.md` as an untracked file.

Stage it:

```bash
git add README.md
```

Staging selects the file for the next commit.

## Step 6: Create the first commit

Run:

```bash
git commit -m "Add README"
```

This saves the staged version with a short message.

Check the repository again:

```bash
git status
```

Expected result:

```text
nothing to commit, working tree clean
```

## Step 7: View the history

Run:

```bash
git log --oneline
```

You should see one line ending with `Add README`.

## Common problems

### The folder already exists

Move into it with `cd github-practice`, then run `ls` and `git status` before changing anything. Remove it only if you are certain it contains no work you need.

### Git asks who you are

Return to [Configure Git on macOS](06_configure_git.md), set your name and email, then run the commit command again.

### TextEdit adds unexpected formatting

In TextEdit, choose `Format > Make Plain Text`, save the file, and try again.

## Next step

The local repository is ready. Next, create or check your GitHub account:

- [Create a GitHub Account](08_create_github_account.md)
