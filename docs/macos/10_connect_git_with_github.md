# Connect Git with GitHub

You now have a local repository on your Mac and an empty repository on GitHub. This page connects them and publishes the first commit.

## What you will learn

You will learn how to:

- add a remote named `origin`,
- check its address,
- push the `main` branch,
- complete GitHub authentication,
- verify the result online.

## Before you start

Complete these pages first:

- [Create a Local Git Repository](07_create_local_git_repository.md)
- [Create a GitHub Account](08_create_github_account.md)
- [Create a Repository on GitHub](09_create_github_repository.md)

## Step 1: Open the local repository

Run this command in Terminal:

```bash
cd ~/Projects/github-practice
```

Check the location and history:

```bash
pwd
git log --oneline
```

The path should end with `github-practice`, and the log should contain your `Add README` commit.

## Step 2: Add the GitHub remote

Copy the HTTPS URL from your empty GitHub repository.

Replace the example username in this command, then run it in Terminal:

```bash
git remote add origin https://github.com/YOUR-USERNAME/github-practice.git
```

`origin` is the conventional name for the main online copy of a repository.

## Step 3: Check the connection

Run:

```bash
git remote -v
```

Expected result:

```text
origin  https://github.com/YOUR-USERNAME/github-practice.git (fetch)
origin  https://github.com/YOUR-USERNAME/github-practice.git (push)
```

Check the username and repository name carefully.

## Step 4: Push the commit

Run:

```bash
git push -u origin main
```

This uploads the local `main` branch. The `-u` option remembers its connection to `origin/main`, so later pushes can use the shorter `git push` command.

## Step 5: Complete authentication

The first push may ask you to sign in to GitHub in a browser or through a credential prompt.

Follow the official GitHub instructions shown on your Mac. GitHub does not accept your account password for Git operations over HTTPS.

Do not paste passwords, access tokens, or recovery codes into project files.

## Step 6: Check GitHub

Refresh the repository page in your browser.

You should see `README.md` and the `Add README` commit.

Run this in Terminal:

```bash
git status
```

Git should report a clean working tree and a branch that is up to date with `origin/main`.

## Common problems

### remote origin already exists

Check the existing address:

```bash
git remote -v
```

If it is wrong, replace it:

```bash
git remote set-url origin https://github.com/YOUR-USERNAME/github-practice.git
```

### Repository not found

Check that the repository exists, the URL is exact, and you are signed in to the account that owns it.

### The push is rejected

The GitHub repository may already contain a starter file. For this exercise, create a new empty repository and update `origin` to its URL.

### Authentication fails repeatedly

Open GitHub in your browser and confirm that you can sign in. Then follow GitHub's current HTTPS authentication instructions and retry `git push`.

## Key idea

The remote connects two copies of the repository:

```text
local repository on your Mac -> origin -> repository on GitHub
```

## Next step

The first GitHub workflow is complete. Next, install Visual Studio Code and open a project in it.
