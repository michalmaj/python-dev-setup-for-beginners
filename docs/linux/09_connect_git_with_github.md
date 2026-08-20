# Connect Git with GitHub

Now you have two things:

- a local Git repository on your computer,
- an empty repository on GitHub.

This section connects them and pushes your first commit to GitHub.

## What you will learn

In this section, you will learn how to:

- add a GitHub remote named `origin`,
- check the remote URL,
- push your `main` branch to GitHub,
- sign in when Git asks for GitHub authentication,
- confirm that your file appears on GitHub.

## Before you start

You should already have:

- a GitHub account,
- a local Git repository with one commit,
- an empty GitHub repository.

If not, read these sections first:

- [Create a GitHub Account](07_create_github_account.md)
- [Create a Local Git Repository](06_create_local_git_repository.md)
- [Create a Repository on GitHub](08_create_github_repository.md)

## Step 1: Open the terminal

Open a normal terminal window.

You do not need `sudo`.

## Step 2: Move to your local repository

Run:

```bash
cd ~/Projects/github-practice
```

Check where you are:

```bash
pwd
```

Your path should end with:

```text
github-practice
```

## Step 3: Check that you have a commit

Run:

```bash
git log --oneline
```

You should see one commit, such as:

```text
abc1234 docs: add README
```

If Git says that your current directory is not a Git repository, you are probably in the wrong folder.

## Step 4: Copy your GitHub repository URL

Open your empty repository on GitHub.

Copy the HTTPS URL.

It should look like this:

```text
https://github.com/YOUR-USERNAME/github-practice.git
```

Use your real GitHub username.

## Step 5: Add the remote

Run this command in the terminal.

Replace the URL with your real GitHub repository URL:

```bash
git remote add origin https://github.com/YOUR-USERNAME/github-practice.git
```

This connects your local repository to the GitHub repository.

The name `origin` is the common name for the main remote repository.

## Step 6: Check the remote

Run:

```bash
git remote -v
```

Expected result:

```text
origin  https://github.com/YOUR-USERNAME/github-practice.git (fetch)
origin  https://github.com/YOUR-USERNAME/github-practice.git (push)
```

Your username will be different.

## Step 7: Push your commit to GitHub

Run:

```bash
git push -u origin main
```

This sends your local `main` branch to GitHub.

The `-u` option remembers that your local `main` branch should push to `origin main` by default.

## Step 8: Sign in if Git asks

Git may ask you to authenticate with GitHub.

On Linux, the exact sign-in experience depends on how Git credentials are configured on your system.

You may see a browser sign-in flow, a Git Credential Manager prompt, or instructions to use another authentication method.

Follow the official GitHub prompt.

Do not type your GitHub password directly into random terminal prompts.

## Step 9: Check GitHub

Open your repository page on GitHub.

Refresh the page if needed.

You should see:

```text
README.md
```

This means your local commit was pushed to GitHub.

## Step 10: Try a shorter push command

After the first push, run:

```bash
git push
```

Git should know where to push because you used `-u` in the previous command.

If nothing changed, Git may say that everything is already up to date.

That is normal.

## Common problems

### Git says remote origin already exists

This means a remote named `origin` is already configured.

Check it:

```bash
git remote -v
```

If the URL is correct, continue to the push step.

If the URL is wrong, you can replace it:

```bash
git remote set-url origin https://github.com/YOUR-USERNAME/github-practice.git
```

### Git says repository not found

Check that:

- the GitHub repository exists,
- the URL is spelled correctly,
- you are signed in to the correct GitHub account,
- you have permission to access the repository.

### Git asks for authentication

That is expected the first time you push to GitHub over HTTPS.

Follow the browser or credential prompt.

If authentication fails, close the terminal and try the push command again.

### Git rejects the push

This can happen if the GitHub repository already has a README, license, or `.gitignore` file.

For this beginner practice, the simplest fix is to create a new empty GitHub repository and try again.

### I pushed to the wrong GitHub repository

Check the remote URL:

```bash
git remote -v
```

If needed, replace it:

```bash
git remote set-url origin https://github.com/YOUR-USERNAME/correct-repository.git
```

## Key idea

A remote connects your local Git repository to a repository on GitHub.

The first push usually looks like this:

```bash
git remote add origin https://github.com/YOUR-USERNAME/github-practice.git
git push -u origin main
```

## Next step

Next, this guide will continue with installing Visual Studio Code on Linux.
