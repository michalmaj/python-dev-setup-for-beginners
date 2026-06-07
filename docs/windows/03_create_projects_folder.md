# Create a Projects Folder

Before installing and using more developer tools, it is helpful to create one dedicated folder for programming projects.

This folder will keep your work organized.

Later in this guide, you will create your first Python project inside this folder.

## What you will learn

In this section, you will learn how to:

- choose a good location for your programming projects,
- create a `Projects` folder,
- move into that folder with PowerShell,
- check that you are in the correct place,
- understand why project location matters.

## Before you start

You should already know how to:

- open PowerShell,
- check the current folder,
- list files and folders,
- create folders,
- move between folders.

If not, read these sections first:

- [Open PowerShell](01_open_powershell.md)
- [Basic PowerShell Commands](02_basic_powershell_commands.md)

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
C:\Users\YourName\Documents\Projects
```

Your actual path will use your Windows username instead of `YourName`.

For example:

```text
C:\Users\alex\Documents\Projects
```

or:

```text
C:\Users\maria\Documents\Projects
```

## Step 1: Open PowerShell

Open PowerShell from the Start menu.

Then check your current folder:

```powershell
Get-Location
```

You may see something like:

```text
Path
----
C:\Users\YourName
```

The exact path on your computer may be different.

## Step 2: Move to your Documents folder

Run this command in PowerShell:

```powershell
cd $HOME\Documents
```

This command moves PowerShell into the `Documents` folder inside your user folder.

Now check your current folder:

```powershell
Get-Location
```

Expected result:

```text
Path
----
C:\Users\YourName\Documents
```

Your username will be different.

That is normal.

## Step 3: Create the Projects folder

Run this command:

```powershell
mkdir Projects
```

This creates a new folder named `Projects`.

Now list files and folders:

```powershell
Get-ChildItem
```

You should see `Projects` in the list.

## Step 4: Move into the Projects folder

Run:

```powershell
cd Projects
```

Now check your current folder:

```powershell
Get-Location
```

Expected result:

```text
Path
----
C:\Users\YourName\Documents\Projects
```

This means PowerShell is now inside your projects folder.

## Step 5: Create a small test folder

Create a practice folder:

```powershell
mkdir test-project
```

Move into it:

```powershell
cd test-project
```

Check your current folder:

```powershell
Get-Location
```

Expected result:

```text
Path
----
C:\Users\YourName\Documents\Projects\test-project
```

This confirms that you can create project folders inside `Projects`.

## Step 6: Move back to Projects

Run:

```powershell
cd ..
```

Now check your current folder:

```powershell
Get-Location
```

Expected result:

```text
Path
----
C:\Users\YourName\Documents\Projects
```

You are back inside the main `Projects` folder.

## Optional cleanup

The `test-project` folder was only created for practice.

You can leave it there or remove it.

To remove it, first make sure you are inside:

```text
C:\Users\YourName\Documents\Projects
```

Check with:

```powershell
Get-Location
```

Then list the folder content:

```powershell
Get-ChildItem
```

You should see:

```text
test-project
```

To remove the practice folder, run:

```powershell
Remove-Item test-project
```

PowerShell may ask for confirmation if the folder is not empty.

For now, only remove folders that you created for practice.

## Important: folder names

For beginner programming projects, use simple folder names.

Prefer lowercase names with hyphens:

```text
my-first-project
```

```text
python-practice
```

```text
hello-python
```

Avoid spaces at the beginning:

```text
My First Project
```

Spaces are allowed, but they can make terminal commands harder for beginners.

For this guide, project folders will use names like:

```text
my-first-python-project
```

## Why not use Desktop?

The Desktop is easy to find, but it can become messy.

It is also common to accidentally delete or move things from the Desktop.

For programming projects, a dedicated folder is usually cleaner:

```text
Documents\Projects
```

## Why not use Downloads?

The `Downloads` folder is usually for temporary files downloaded from the internet.

It is not a good place for long-term programming projects.

A project should live somewhere more intentional, such as:

```text
Documents\Projects
```

## How to return to Projects later

Any time you open PowerShell and want to go back to your projects folder, run:

```powershell
cd $HOME\Documents\Projects
```

Then check:

```powershell
Get-Location
```

You should see:

```text
C:\Users\YourName\Documents\Projects
```

## Common problems

### PowerShell says Documents does not exist

Run:

```powershell
cd $HOME
Get-ChildItem
```

Look for the correct name of your documents folder.

On some systems, the visible folder name may depend on language or OneDrive settings.

### I already have a Projects folder

That is fine.

You can use the existing folder.

Move into it with:

```powershell
cd $HOME\Documents\Projects
```

Then check:

```powershell
Get-Location
```

### PowerShell says Projects already exists

That means the folder is already there.

You can move into it:

```powershell
cd Projects
```

### I created Projects in the wrong place

First, check where you are:

```powershell
Get-Location
```

If you created `Projects` in the wrong folder, you can leave it for now and create the correct one in:

```text
C:\Users\YourName\Documents
```

Do not delete folders unless you are sure they are only practice folders.

### My path contains OneDrive

Some Windows systems store Documents inside OneDrive.

You may see a path like:

```text
C:\Users\YourName\OneDrive\Documents\Projects
```

That is okay.

The important thing is that you know where your `Projects` folder is.

## Key idea

Keep your programming projects in one dedicated folder.

In this guide, the recommended Windows location is:

```text
C:\Users\YourName\Documents\Projects
```

Later, you will create your first Python project inside this folder.

## Next step

Next, install Chocolatey:

- [Install Chocolatey](04_install_chocolatey.md)