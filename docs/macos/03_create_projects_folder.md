# Create a Projects Folder

A dedicated projects folder keeps your programming work organized and easy to find.

## What you will learn

You will create this folder:

```text
/Users/yourname/Projects
```

In Terminal, the same location can be written as `~/Projects`.

## Step 1: Move to your home folder

Open Terminal and run:

```bash
cd ~
```

This moves Terminal to your home folder.

Check the location:

```bash
pwd
```

The result should look like `/Users/yourname`.

## Step 2: Create the folder

Run:

```bash
mkdir Projects
```

This creates a folder named `Projects`.

If Terminal says `File exists`, the folder is already there and you can continue.

## Step 3: Move into Projects

Run:

```bash
cd Projects
```

Check the location:

```bash
pwd
```

Expected result:

```text
/Users/yourname/Projects
```

## Step 4: Practice with a test folder

Create a temporary project folder:

```bash
mkdir test-project
```

Move into it and check the location:

```bash
cd test-project
pwd
```

The path should end with `Projects/test-project`.

Move back and remove the empty test folder:

```bash
cd ..
rmdir test-project
```

## Key idea

Before creating a project later, you will return to the projects folder with:

```bash
cd ~/Projects
```

Then use `pwd` to confirm the location.

## Next step

Install the package manager used in this path:

- [Install Homebrew](04_install_homebrew.md)
