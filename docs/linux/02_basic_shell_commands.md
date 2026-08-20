# Basic Shell Commands

This section introduces basic shell commands used in the Linux path.

You do not need to memorize all commands immediately. The goal is to understand what they do and how to use them safely.

## What you will learn

In this section, you will learn how to:

- check the current folder,
- list files and folders,
- move between folders,
- create folders,
- create files,
- remove practice files,
- clear the terminal.

## Before you start

You should already know how to open the terminal.

If not, read this section first:

- [Open the Terminal](01_open_terminal.md)

You should also understand:

- what a terminal is,
- what files and folders are,
- what paths are,
- what the current folder means.

## Check the current folder

Run this command in the terminal:

```bash
pwd
```

This command means:

```text
print working directory
```

In simple words, it shows the folder where the terminal currently is.

Example output:

```text
/home/yourname
```

Your exact path will be different.

That is normal.

## List files and folders

Run this command:

```bash
ls
```

This command shows files and folders inside the current folder.

You may see output similar to this:

```text
Desktop  Documents  Downloads  Pictures
```

The exact output depends on your computer.

## Move into a folder

To move into a folder, use:

```bash
cd folder-name
```

For example, to move into the `Documents` folder, run:

```bash
cd Documents
```

Then check your current folder:

```bash
pwd
```

You should see that your path now ends with:

```text
Documents
```

## Move to the parent folder

The parent folder is one level above the current folder.

Run:

```bash
cd ..
```

The `..` symbol means:

```text
the folder above the current folder
```

Example:

```text
/home/yourname/Documents
```

After running:

```bash
cd ..
```

you move back to:

```text
/home/yourname
```

## Move to your home folder

Run:

```bash
cd ~
```

This moves the terminal to your home folder.

Your home folder is usually:

```text
/home/yourname
```

You can also run:

```bash
cd
```

with nothing after it.

That also moves to your home folder.

## Create a folder

Run:

```bash
mkdir shell-practice
```

This creates a new folder named `shell-practice`.

Now list files and folders:

```bash
ls
```

You should see:

```text
shell-practice
```

## Move into the new folder

Run:

```bash
cd shell-practice
```

Then check where you are:

```bash
pwd
```

Your path should now end with:

```text
shell-practice
```

## Create a file

Run:

```bash
touch notes.txt
```

This creates a new empty file named `notes.txt`.

Now list files and folders:

```bash
ls
```

You should see:

```text
notes.txt
```

## Remove the practice file

Run:

```bash
rm notes.txt
```

This removes the file named `notes.txt`.

Use `rm` carefully. It deletes files.

Now list files again:

```bash
ls
```

The `notes.txt` file should be gone.

## Move back and remove the practice folder

First move back to your home folder:

```bash
cd ~
```

Then remove the practice folder:

```bash
rmdir shell-practice
```

This removes the folder only if it is empty.

That makes `rmdir` safer for beginner practice than removing a folder with `rm -r`.

## Clear the terminal

Run:

```bash
clear
```

This clears the terminal screen.

It does not delete your files.

It only makes the terminal easier to read.

## Common problems

### cd says no such file or directory

The folder name may be misspelled, or you may be in the wrong folder.

Run:

```bash
ls
```

Then use the exact folder name shown in the output.

### rmdir says directory not empty

This means the folder still contains files or folders.

Move into the folder and list its contents:

```bash
cd shell-practice
ls
```

Remove only the practice files you created.

### I used the wrong command

Stop and read the message printed by the terminal.

Many errors are just spelling, folder, or path mistakes.

## Key idea

The most important beginner shell commands are:

```text
pwd     show current folder
ls      list files and folders
cd      move between folders
mkdir   create a folder
touch   create a file
rm      remove a file
clear   clear the terminal screen
```

## Next step

Next, create a dedicated folder for programming projects:

- [Create a Projects Folder](03_create_projects_folder.md)
