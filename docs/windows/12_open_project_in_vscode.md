# Open a Folder in VS Code

Visual Studio Code works best when you open a project folder.

In this section, you will open your `github-practice` folder in VS Code.

## What you will learn

In this section, you will learn how to:

- move to your project folder in PowerShell,
- open the folder with `code .`,
- recognize the Explorer panel,
- open `README.md` in the editor,
- avoid opening the wrong folder.

## Before you start

You should already have:

- Visual Studio Code installed,
- the `code` command working,
- a local `github-practice` repository.

If not, read these sections first:

- [Install Visual Studio Code](11_install_vscode.md)
- [Create a Local Git Repository](08_create_local_git_repository.md)

## Step 1: Open PowerShell

Open a normal PowerShell window.

You do not need Administrator PowerShell.

## Step 2: Move to your practice project

Run this command in PowerShell:

```powershell
cd $HOME\Documents\Projects\github-practice
```

Now check where you are:

```powershell
Get-Location
```

Your path should end with:

```text
github-practice
```

## Step 3: Check the folder content

Run:

```powershell
Get-ChildItem
```

You should see:

```text
README.md
```

This confirms that you are inside the practice project folder.

## Step 4: Open the folder in VS Code

Run:

```powershell
code .
```

The dot means:

```text
the current folder
```

So `code .` means:

```text
Open the current folder in Visual Studio Code.
```

VS Code should open.

## Step 5: Trust the folder if VS Code asks

VS Code may ask whether you trust the folder.

For this guide, you created the `github-practice` folder yourself.

It is safe to trust this folder.

If you are opening a folder from the internet or from someone else, be more careful.

## Step 6: Find the Explorer panel

In VS Code, look at the left side of the window.

You should see the Explorer panel.

The Explorer shows files and folders in the project.

You should see:

```text
README.md
```

## Step 7: Open README.md

Click `README.md` in the Explorer panel.

The file should open in the editor area.

You should see:

```text
# GitHub Practice
```

This confirms that VS Code opened the correct folder.

## Step 8: Understand the folder name

At the top of VS Code, or in the Explorer panel, you may see the folder name:

```text
github-practice
```

That is your project folder.

Later, when you create Python projects, you will open project folders in the same way.

## Common problems

### PowerShell says code is not recognized

Close PowerShell and open a new PowerShell window.

Then run:

```powershell
code --version
```

If it still does not work, return to:

- [Install Visual Studio Code](11_install_vscode.md)

### VS Code opens, but README.md is missing

You may have opened the wrong folder.

Close VS Code.

In PowerShell, run:

```powershell
Get-Location
Get-ChildItem
```

Make sure you are inside:

```text
github-practice
```

Then run:

```powershell
code .
```

### I opened a file instead of a folder

For this guide, open folders, not single files.

Opening a folder lets VS Code understand the whole project.

### VS Code asks about trust

VS Code uses workspace trust to protect you from unsafe project files.

For a folder you created yourself during this guide, choose to trust it.

Be more careful with folders downloaded from unknown sources.

## Key idea

Use this command from inside a project folder:

```powershell
code .
```

It opens the current folder in Visual Studio Code.

## Next step

Next, open the VS Code terminal:

- [Open the VS Code Terminal](13_open_vscode_terminal.md)
