# Basic PowerShell Commands

This section introduces basic PowerShell commands used in the Windows path.

You do not need to memorize all commands immediately. The goal is to understand what they do and how to use them safely.

## What you will learn

In this section, you will learn how to:

- check the current folder,
- list files and folders,
- move between folders,
- create folders,
- create files,
- remove practice files,
- clear the terminal,
- use common PowerShell aliases.

## Before you start

You should already know how to open PowerShell.

If not, read this section first:

- [Open PowerShell](01_open_powershell.md)

You should also understand:

- what a terminal is,
- what files and folders are,
- what paths are,
- what the current folder means.

## PowerShell command names

PowerShell commands often use a `Verb-Noun` style.

Examples:

```powershell
Get-Location
Get-ChildItem
New-Item
Remove-Item
Clear-Host
```

At first, these names may look long.

The advantage is that they are descriptive.

For example:

```powershell
Get-Location
```

means:

```text
Get the current location.
```

In other words:

```text
Show the folder where PowerShell currently is.
```

## Check the current folder

Run this command in PowerShell:

```powershell
Get-Location
```

This command shows your current folder.

Example output:

```text
Path
----
C:\Users\YourName
```

Your exact path will be different.

That is normal.

## List files and folders

Run this command in PowerShell:

```powershell
Get-ChildItem
```

This command shows files and folders inside the current folder.

You may see output similar to this:

```text
Directory: C:\Users\YourName

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        01.01.2026     10:00                Desktop
d-----        01.01.2026     10:00                Documents
d-----        01.01.2026     10:00                Downloads
```

The exact output depends on your computer.

## Move into a folder

To move into a folder, use:

```powershell
cd folder-name
```

For example, to move into the `Documents` folder, run:

```powershell
cd Documents
```

Then check your current folder:

```powershell
Get-Location
```

You should see that your path now ends with:

```text
Documents
```

## Move to the parent folder

The parent folder is one level above the current folder.

Run:

```powershell
cd ..
```

The `..` symbol means:

```text
the folder above the current folder
```

Example:

```text
C:\Users\YourName\Documents
```

After running:

```powershell
cd ..
```

you move back to:

```text
C:\Users\YourName
```

## Move to your home folder

Run:

```powershell
cd $HOME
```

This moves PowerShell to your home folder.

Your home folder is usually:

```text
C:\Users\YourName
```

The `$HOME` value means:

```text
my user folder
```

## Create a folder

Run:

```powershell
mkdir powershell-practice
```

This creates a new folder named `powershell-practice`.

Now list files and folders:

```powershell
Get-ChildItem
```

You should see:

```text
powershell-practice
```

## Move into the new folder

Run:

```powershell
cd powershell-practice
```

Then check where you are:

```powershell
Get-Location
```

Your path should now end with:

```text
powershell-practice
```

## Create a file

Run:

```powershell
New-Item notes.txt -ItemType File
```

This creates a new file named `notes.txt`.

Now list files and folders:

```powershell
Get-ChildItem
```

You should see:

```text
notes.txt
```

## Create another file

Run:

```powershell
New-Item hello.txt -ItemType File
```

This creates another file named `hello.txt`.

List the folder again:

```powershell
Get-ChildItem
```

You should see:

```text
hello.txt
notes.txt
```

## Remove a practice file

Be careful with remove commands.

Only remove files that you created for practice.

Run:

```powershell
Remove-Item hello.txt
```

This removes the file named `hello.txt`.

Now list the folder again:

```powershell
Get-ChildItem
```

You should still see:

```text
notes.txt
```

But `hello.txt` should no longer be there.

## Clear the PowerShell screen

Run:

```powershell
Clear-Host
```

This clears the visible PowerShell screen.

It does not delete files.

It only removes old terminal output from the screen.

## Useful aliases

PowerShell has shorter aliases for some common commands.

An alias is a short alternative name for a command.

For example:

| Full PowerShell command | Common alias |
| --- | --- |
| `Get-Location` | `pwd` |
| `Get-ChildItem` | `ls` |
| `Set-Location` | `cd` |
| `Clear-Host` | `cls` |

This means that these commands are similar in PowerShell:

```powershell
Get-Location
```

and:

```powershell
pwd
```

They both show the current folder.

These commands are also similar:

```powershell
Get-ChildItem
```

and:

```powershell
ls
```

They both list files and folders.

This guide usually shows the full PowerShell command first because it is easier to understand.

## Practice sequence

Try this complete practice sequence in PowerShell:

```powershell
cd $HOME
mkdir powershell-practice
cd powershell-practice
Get-Location
New-Item notes.txt -ItemType File
Get-ChildItem
Remove-Item notes.txt
Get-ChildItem
cd ..
```

What this does:

1. Moves to your home folder.
2. Creates a folder named `powershell-practice`.
3. Moves into that folder.
4. Shows the current folder.
5. Creates a file named `notes.txt`.
6. Lists files and folders.
7. Removes the practice file.
8. Lists files and folders again.
9. Moves back to the parent folder.

## Command summary

| Goal | PowerShell command |
| --- | --- |
| Show current folder | `Get-Location` |
| List files and folders | `Get-ChildItem` |
| Move into a folder | `cd folder-name` |
| Move up one level | `cd ..` |
| Move to home folder | `cd $HOME` |
| Create a folder | `mkdir folder-name` |
| Create a file | `New-Item file.txt -ItemType File` |
| Remove a file | `Remove-Item file.txt` |
| Clear the screen | `Clear-Host` |

## Common problems

### PowerShell says the folder does not exist

You may see an error after running something like:

```powershell
cd folder-name
```

This usually means that the folder is not inside your current folder.

Check where you are:

```powershell
Get-Location
```

Then list files and folders:

```powershell
Get-ChildItem
```

Make sure the folder name appears in the list.

### I created a file but cannot find it

You may be in a different folder than expected.

Run:

```powershell
Get-Location
```

Then run:

```powershell
Get-ChildItem
```

The file was created in the folder where PowerShell was located when you ran `New-Item`.

### PowerShell says the file already exists

If you run:

```powershell
New-Item notes.txt -ItemType File
```

and `notes.txt` already exists, PowerShell may show an error.

That is okay.

It means the file is already there.

You can check with:

```powershell
Get-ChildItem
```

### I am afraid of deleting the wrong file

That is a good instinct.

Before using `Remove-Item`, always check:

```powershell
Get-Location
Get-ChildItem
```

Only remove files that you created for practice.

### The output looks different

That is normal.

PowerShell output can look different depending on:

- Windows version,
- PowerShell version,
- terminal window size,
- folder content,
- system language settings.

Focus on the command and the general result.

## Key idea

Most beginner PowerShell work follows this pattern:

1. Check where you are.
2. List what is there.
3. Move into the correct folder.
4. Create or run something.
5. Check the result.

You will use this pattern many times in this guide.

## Next step

Next, create a dedicated folder for programming projects:

- [Create a Projects Folder](03_create_projects_folder.md)