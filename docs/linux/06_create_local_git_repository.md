# Create a Local Git Repository

Before sending code to GitHub, create a small local Git repository on your computer.

This practice repository will help you learn the first Git workflow safely.

## What you will learn

In this section, you will learn how to:

- create a practice folder,
- initialize a Git repository,
- create a README file,
- stage a file,
- create your first commit,
- check the repository status.

## Before you start

You should already have Git installed and configured.

If not, read these sections first:

- [Install Git on Linux](04_install_git.md)
- [Configure Git on Linux](05_configure_git.md)

You should also have a `Projects` folder:

- [Create a Projects Folder](03_create_projects_folder.md)

## Step 1: Open the terminal

Open a normal terminal window.

You do not need `sudo`.

## Step 2: Move to your Projects folder

Run this command:

```bash
cd ~/Projects
```

Now check where you are:

```bash
pwd
```

Expected result:

```text
/home/yourname/Projects
```

Your exact path may be different.

## Step 3: Create a practice folder

Run:

```bash
mkdir github-practice
```

This creates a folder named `github-practice`.

Move into it:

```bash
cd github-practice
```

Check your current folder:

```bash
pwd
```

Your path should end with:

```text
github-practice
```

## Step 4: Initialize Git

Run:

```bash
git init
```

This turns the current folder into a Git repository.

Expected result may include:

```text
Initialized empty Git repository
```

Git also creates a hidden folder named `.git`.

You do not need to edit that folder.

## Step 5: Create a README file

Run:

```bash
touch README.md
```

This creates an empty file named `README.md`.

Now run:

```bash
echo "# GitHub Practice" > README.md
```

This adds a title to the file.

The `>` symbol writes the text into the file.

## Step 6: Check Git status

Run:

```bash
git status
```

Git should show that `README.md` is untracked.

Untracked means:

```text
Git can see this file, but Git is not tracking it yet.
```

## Step 7: Stage the file

Run:

```bash
git add README.md
```

This stages `README.md`.

Staging means:

```text
prepare this file for the next commit
```

Check again:

```bash
git status
```

Git should show that `README.md` is ready to be committed.

## Step 8: Create the first commit

Run:

```bash
git commit -m "docs: add README"
```

This creates your first commit.

The message explains what changed.

## Step 9: Check the commit history

Run:

```bash
git log --oneline
```

You should see one commit.

Example:

```text
abc1234 docs: add README
```

The first part will be different on your computer.

## Common problems

### The Projects folder does not exist

You may not have created the `Projects` folder yet.

Return to:

- [Create a Projects Folder](03_create_projects_folder.md)

### Git asks who you are

Git may show a message about `user.name` or `user.email`.

That means Git is not configured yet.

Return to:

- [Configure Git on Linux](05_configure_git.md)

### Git says nothing added to commit

This usually means the file was not staged.

Run:

```bash
git status
git add README.md
git status
```

Then try the commit again.

### I created the folder in the wrong place

That is okay for practice.

Check where you are:

```bash
pwd
```

For the rest of this guide, try to use:

```text
/home/yourname/Projects/github-practice
```

## Key idea

A local Git repository is a project folder with Git history.

The first basic Git workflow is:

```text
create or edit files -> git add -> git commit
```

## Next step

Next, create a GitHub account:

- [Create a GitHub Account](07_create_github_account.md)
