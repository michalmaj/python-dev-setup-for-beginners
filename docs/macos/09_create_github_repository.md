# Create a Repository on GitHub

Your practice project already has a local Git history. You will now create an empty online repository for it.

## What you will learn

You will learn how to:

- create a GitHub repository,
- choose its visibility,
- avoid conflicting starter files,
- copy its HTTPS address.

## Before you start

You should already have:

- a GitHub account,
- the local `github-practice` repository with one commit.

Return to these pages if needed:

- [Create a Local Git Repository](07_create_local_git_repository.md)
- [Create a GitHub Account](08_create_github_account.md)

## Step 1: Open the new repository page

Sign in to GitHub in your browser, then go to:

```text
https://github.com/new
```

## Step 2: Choose the owner and name

For `Owner`, choose your personal account.

For `Repository name`, enter:

```text
github-practice
```

This matches the local folder created earlier.

## Step 3: Choose visibility

Choose `Private` if you want only invited people to see the repository.

Choose `Public` only if you are comfortable making the practice project visible on the internet.

Either option works for this guide.

## Step 4: Leave the repository empty

Do not add a README, `.gitignore`, or license on GitHub.

Your local repository already has a README and a commit. Adding starter files online would create a separate history and make the first push more complicated.

## Step 5: Create the repository

Select `Create repository`.

GitHub should open the new empty repository and show setup instructions.

## Step 6: Copy the HTTPS URL

Copy the address that looks like:

```text
https://github.com/YOUR-USERNAME/github-practice.git
```

Use the `HTTPS` option, not `SSH`, for this first workflow.

## Common problems

### The repository name already exists

Choose a variation such as `github-practice-1`. Use that same name in the URL on the next page.

### I added a starter file

For this first exercise, the simplest option is to create another empty repository with a different name. Handling two existing histories is useful later, but not necessary here.

### I chose the wrong visibility

Repository visibility can be changed later in GitHub settings. A private repository is a comfortable default for practice.

## Next step

Connect the local and online repositories:

- [Connect Git with GitHub](10_connect_git_with_github.md)
