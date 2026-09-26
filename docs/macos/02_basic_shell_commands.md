# Basic Shell Commands

This page introduces the small set of commands used throughout the macOS path.

## What you will learn

You will learn how to:

- check the current folder,
- list files and folders,
- move between folders,
- create and remove practice items,
- clear Terminal.

Run every command on this page in Terminal.

## Check the current folder

Run:

```bash
pwd
```

`pwd` prints the current folder. You will probably start in your home folder:

```text
/Users/yourname
```

## List files and folders

Run:

```bash
ls
```

`ls` lists items in the current folder. You may see `Desktop`, `Documents`, and `Downloads`.

## Move into and out of a folder

Run:

```bash
cd Documents
```

`cd` changes the current folder. Check the result with `pwd`.

Move one level back with:

```bash
cd ..
```

Move directly to your home folder with:

```bash
cd ~
```

## Create a practice folder and file

Create a folder:

```bash
mkdir shell-practice
```

Move into it:

```bash
cd shell-practice
```

Create an empty file:

```bash
touch notes.txt
```

Run `ls`. You should see `notes.txt`.

## Remove the practice items

Remove the file:

```bash
rm notes.txt
```

`rm` deletes a file immediately. Use it carefully.

Move back to your home folder:

```bash
cd ~
```

Remove the empty practice folder:

```bash
rmdir shell-practice
```

`rmdir` removes only an empty folder.

## Clear Terminal

Run:

```bash
clear
```

This clears visible output without deleting files or command history.

## Common problems

### No such file or directory

The name may be misspelled or you may be in the wrong folder. Run `pwd` and `ls`, then try again.

### Directory not empty

`rmdir` only removes empty folders. Run `ls` inside the folder and remove only the practice files you recognize.

## Next step

Create one place for your programming projects:

- [Create a Projects Folder](03_create_projects_folder.md)
