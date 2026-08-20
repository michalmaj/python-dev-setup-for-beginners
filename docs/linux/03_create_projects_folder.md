# Create a Projects Folder

Before installing and using more developer tools, it is helpful to create one dedicated folder for programming projects.

This folder will keep your work organized.

Later in this guide, you will create your first Python project inside this folder.

## What you will learn

In this section, you will learn how to:

- choose a good location for your programming projects,
- create a `Projects` folder,
- move into that folder from the terminal,
- check that you are in the correct place,
- understand why project location matters.

## Before you start

You should already know how to:

- open the terminal,
- check the current folder,
- list files and folders,
- create folders,
- move between folders.

If not, read these sections first:

- [Open the Terminal](01_open_terminal.md)
- [Basic Shell Commands](02_basic_shell_commands.md)

## Why create a Projects folder?

A programming project is usually a folder with files inside it.

If you create projects in random places, it becomes harder to find them later.

For example, beginners often accidentally create projects in:

- `Downloads`,
- `Desktop`,
- the user home folder,
- a temporary folder,
- a folder created by another tool.

This can become confusing quickly.

A dedicated `Projects` folder gives you one simple place for your programming work.

## Recommended location

In this guide, the recommended location is:

```text
/home/yourname/Projects
```

Your actual path will use your Linux username instead of `yourname`.

For example:

```text
/home/alex/Projects
```

or:

```text
/home/maria/Projects
```

## Step 1: Open the terminal

Open the terminal.

Then check your current folder:

```bash
pwd
```

You may see something like:

```text
/home/yourname
```

The exact path on your computer may be different.

## Step 2: Move to your home folder

Run this command:

```bash
cd ~
```

This command moves the terminal into your home folder.

Now check your current folder:

```bash
pwd
```

Expected result:

```text
/home/yourname
```

Your username will be different.

That is normal.

## Step 3: Create the Projects folder

Run this command:

```bash
mkdir Projects
```

This creates a new folder named `Projects`.

Now list files and folders:

```bash
ls
```

You should see `Projects` in the list.

## Step 4: Move into the Projects folder

Run:

```bash
cd Projects
```

Now check your current folder:

```bash
pwd
```

Expected result:

```text
/home/yourname/Projects
```

This means the terminal is now inside your projects folder.

## Step 5: Create a small test folder

Create a practice folder:

```bash
mkdir test-project
```

Move into it:

```bash
cd test-project
```

Check your current folder:

```bash
pwd
```

Expected result:

```text
/home/yourname/Projects/test-project
```

This confirms that you can create project folders inside `Projects`.

## Step 6: Move back to Projects

Run:

```bash
cd ..
```

Now check your current folder:

```bash
pwd
```

Expected result:

```text
/home/yourname/Projects
```

You are back inside the main `Projects` folder.

## Optional cleanup

The `test-project` folder was only created for practice.

You can leave it there or remove it.

To remove it, first make sure you are inside:

```text
/home/yourname/Projects
```

Check with:

```bash
pwd
```

Then remove the empty folder:

```bash
rmdir test-project
```

This removes the test folder.

## Common problems

### mkdir says file exists

This means a file or folder with that name already exists.

Run:

```bash
ls
```

If `Projects` already exists, you can use it.

Move into it:

```bash
cd Projects
```

### cd Projects does not work

Linux folder names are case-sensitive.

This means `Projects`, `projects`, and `PROJECTS` are different names.

Run:

```bash
ls
```

Then use the exact folder name shown in the output.

### I created Projects in the wrong place

Check where you are:

```bash
pwd
```

If you are not in your home folder, move there:

```bash
cd ~
```

Then create or use the `Projects` folder there.

## Key idea

Keep beginner programming projects in one predictable place:

```text
/home/yourname/Projects
```

This makes later commands easier to understand.

## Next step

Next, install Git on Linux:

- [Install Git on Linux](04_install_git.md)
