# Open the VS Code Terminal

VS Code includes a terminal panel. It runs the same shell commands as the separate Terminal application without leaving the editor.

## What you will learn

You will learn how to:

- open the integrated terminal,
- confirm its current folder,
- inspect the README change,
- commit and push from inside VS Code.

## Before you start

Open the `github-practice` folder in VS Code and complete the README edit from the previous page.

## Step 1: Open the terminal panel

In the VS Code menu, choose:

```text
Terminal > New Terminal
```

A terminal panel should appear at the bottom of the window. On macOS, it will usually run Zsh.

## Step 2: Check the current folder

Run this command in the VS Code terminal:

```bash
pwd
```

The result should end with:

```text
/Projects/github-practice
```

VS Code starts the integrated terminal in the folder currently open in the editor.

## Step 3: Check the files and Git status

Run:

```bash
ls
```

You should see `README.md`.

Now run:

```bash
git status
```

Git should show `README.md` as modified.

## Step 4: Review the change

Run:

```bash
git diff
```

This displays the unsaved Git change before you commit it. You should see the line added in VS Code.

Press `q` if Git opens the output in a scrollable view.

## Step 5: Commit the change

Stage the README:

```bash
git add README.md
```

Create a commit:

```bash
git commit -m "Update README from VS Code"
```

Check the result:

```bash
git status
```

Git should report a clean working tree.

## Step 6: Push to GitHub

Run:

```bash
git push
```

The earlier `git push -u origin main` command saved the destination, so no remote or branch name is needed now.

Refresh the repository page on GitHub and confirm that the new commit appears.

## Common problems

### The terminal opens in the wrong folder

Check the top folder in the Explorer. Close the VS Code window, then reopen the project from the macOS Terminal:

```bash
cd ~/Projects/github-practice
code .
```

### Git shows no changes

Make sure you edited `README.md` and saved it with `Command+S`.

### Git says this is not a repository

Run `pwd`. The path must end with `github-practice`. If it does not, reopen the correct project folder.

### The push asks for authentication

Complete the official GitHub sign-in prompt. Do not enter your GitHub account password as a Git password.

## Key idea

The integrated terminal is a normal project terminal inside the editor. You can edit, run commands, commit, and push without switching applications.

## Next step

The VS Code workflow is ready. Next, install `uv` and create the first Python project.
