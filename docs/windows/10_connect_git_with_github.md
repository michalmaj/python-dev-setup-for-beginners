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
- [Create a Local Git Repository](08_create_local_git_repository.md)
- [Create a Repository on GitHub](09_create_github_repository.md)

## Step 1: Open PowerShell

Open a normal PowerShell window.

You do not need Administrator PowerShell.

## Step 2: Move to your local repository

Run:

```powershell
cd $HOME\Documents\Projects\github-practice
```

Check where you are:

```powershell
Get-Location
```

Your path should end with:

```text
github-practice
```

## Step 3: Check that you have a commit

Run:

```powershell
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

Run this command in PowerShell.

Replace the URL with your real GitHub repository URL:

```powershell
git remote add origin https://github.com/YOUR-USERNAME/github-practice.git
```

This connects your local repository to the GitHub repository.

The name `origin` is the common name for the main remote repository.

## Step 6: Check the remote

Run:

```powershell
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

```powershell
git push -u origin main
```

This sends your local `main` branch to GitHub.

The `-u` option remembers that your local `main` branch should push to `origin main` by default.

## Step 8: Sign in if Git asks

Git may open a browser window or a Git Credential Manager sign-in prompt.

If that happens:

1. Sign in with your GitHub account.
2. Follow the prompts.
3. Return to PowerShell after authentication finishes.

Git for Windows includes Git Credential Manager, which can store your GitHub sign-in safely after you authenticate.

Do not type your GitHub password directly into random terminal prompts.

Follow the official browser or credential prompt.

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

```powershell
git push
```

Git should know where to push because you used `-u` in the previous command.

If nothing changed, Git may say that everything is already up to date.

That is normal.

## Common problems

### Git says remote origin already exists

This means a remote named `origin` is already configured.

Check it:

```powershell
git remote -v
```

If the URL is correct, continue to the push step.

If the URL is wrong, you can replace it:

```powershell
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

Follow the browser or Git Credential Manager prompt.

If authentication fails, close PowerShell and try the push command again.

### Git rejects the push

This can happen if the GitHub repository already has a README, license, or `.gitignore` file.

For this beginner practice, the simplest fix is to create a new empty GitHub repository and try again.

### I pushed to the wrong GitHub repository

Check the remote URL:

```powershell
git remote -v
```

If needed, replace it:

```powershell
git remote set-url origin https://github.com/YOUR-USERNAME/correct-repository.git
```

## Key idea

A remote connects your local Git repository to a repository on GitHub.

The first push usually looks like this:

```powershell
git remote add origin https://github.com/YOUR-USERNAME/github-practice.git
git push -u origin main
```

## Next step

Next, install Visual Studio Code.

- [Install Visual Studio Code](11_install_vscode.md)
