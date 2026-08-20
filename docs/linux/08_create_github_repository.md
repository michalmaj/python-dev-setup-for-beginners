# Create a Repository on GitHub

Now that you have a local Git repository, create an empty repository on GitHub.

This GitHub repository will receive the commit from your computer.

## What you will learn

In this section, you will learn how to:

- create a new repository on GitHub,
- choose a repository name,
- choose public or private visibility,
- avoid adding files on GitHub too early,
- copy the repository URL.

## Before you start

You should already have:

- a GitHub account,
- a local Git repository with one commit.

If not, read these sections first:

- [Create a GitHub Account](07_create_github_account.md)
- [Create a Local Git Repository](06_create_local_git_repository.md)

## Step 1: Open GitHub

Open your web browser.

Go to:

```text
https://github.com
```

Sign in if GitHub asks you to.

## Step 2: Open the new repository page

Open this page:

```text
https://github.com/new
```

This opens the form for creating a new repository.

You can also find it from GitHub's `+` menu by choosing `New repository`.

## Step 3: Choose the owner

GitHub may show an `Owner` field.

For this guide, choose your personal account.

If you are part of an organization, do not choose the organization unless a teacher or team lead tells you to.

## Step 4: Choose a repository name

In the repository name field, type:

```text
github-practice
```

Use the same name as your local practice folder.

This makes the connection easier to understand.

## Step 5: Choose visibility

GitHub usually lets you choose:

- public,
- private.

For practice, choose `private` if you do not want other people to see the repository.

Choose `public` only if you are comfortable making the practice repository visible on the internet.

## Step 6: Do not add starter files

This is important.

Do not add:

- a README,
- a `.gitignore`,
- a license.

Your local repository already has a `README.md` file and one commit.

If you add starter files on GitHub now, your local repository and GitHub repository will start with different history.

That can make the first push more confusing.

## Step 7: Create the repository

Click:

```text
Create repository
```

GitHub should open a page for your new empty repository.

Because the repository is empty, GitHub will show setup instructions.

## Step 8: Copy the repository URL

Look for the HTTPS repository URL.

It should look like this:

```text
https://github.com/YOUR-USERNAME/github-practice.git
```

Copy that URL.

You will use it on the next page.

## Common problems

### GitHub says the repository name already exists

You may already have a repository with that name.

Choose a small variation, such as:

```text
github-practice-1
```

If you use a different repository name, remember to use that same name in the repository URL later.

### I accidentally added a README on GitHub

That is a common mistake.

For now, the simplest fix is to create a new empty repository with a different name.

Later, you will learn how to handle repositories that already have history.

### I made the repository public by mistake

Open the repository settings on GitHub.

GitHub lets you change repository visibility.

If you are not sure what to choose, use a private repository for practice.

### I cannot find the repository URL

Open the repository page on GitHub.

Look for a button or field labeled `Code`, `HTTPS`, or `Quick setup`.

The HTTPS URL should contain your username and repository name.

## Key idea

To push an existing local repository to GitHub, create an empty GitHub repository first.

Do not add starter files on GitHub when your local repository already has a commit.

## Next step

Next, connect your local repository to GitHub:

- [Connect Git with GitHub](09_connect_git_with_github.md)
