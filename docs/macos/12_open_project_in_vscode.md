# Open a Project in VS Code

VS Code works best when you open the whole project folder, not only one file.

## What you will learn

You will learn how to:

- move to a project in Terminal,
- open that folder in VS Code,
- recognize the Explorer panel,
- handle the Workspace Trust prompt.

## Before you start

The `code` command should work:

```bash
code --version
```

If it does not, return to [Install Visual Studio Code on macOS](11_install_vscode.md).

## Step 1: Open the project folder in Terminal

Run:

```bash
cd ~/Projects/github-practice
```

Check the location:

```bash
pwd
```

The path should end with `/Projects/github-practice`.

## Step 2: Open the folder in VS Code

Run:

```bash
code .
```

`code` starts VS Code. The dot means the current folder, so VS Code opens `github-practice` as the project.

## Step 3: Respond to Workspace Trust

VS Code may ask whether you trust the authors of the files in this folder.

You created this practice folder yourself, so select the option to trust it.

Be more careful with projects downloaded from people or websites you do not know.

## Step 4: Check the Explorer

The Explorer is the file panel on the left side of VS Code.

It should show the project name and:

```text
README.md
```

The hidden `.git` folder normally does not appear. That is expected.

If the Explorer is hidden, select its file icon in the Activity Bar or press `Command+Shift+E`.

## Step 5: Edit and save the README

Select `README.md` in the Explorer and add this line below the heading:

```text
My first repository opened in VS Code on macOS.
```

Save the file with `Command+S`.

The Source Control icon may show a badge, which means Git sees a changed file.

## Check that it worked

Return to Terminal and run this command inside the project folder:

```bash
git status
```

Git should show `README.md` as modified.

Leave this change uncommitted for now. You will use it while learning the integrated terminal.

## Common problems

### VS Code opens without the project files

Close the window, return to Terminal, run `pwd`, and make sure you are inside `github-practice` before running `code .` again.

### Only README.md is open

You may have opened the file instead of the folder. Use `code .` from inside the project folder.

### I do not see the Explorer

Press `Command+Shift+E` or select the Explorer icon on the left.

## Next step

Open a terminal without leaving VS Code:

- [Open the VS Code Terminal](13_open_vscode_terminal.md)
