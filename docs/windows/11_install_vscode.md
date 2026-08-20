# Install Visual Studio Code

Visual Studio Code is a code editor.

In this guide, you will use it to open project folders, edit files, and run commands in the integrated terminal.

## What you will learn

In this section, you will learn how to:

- install Visual Studio Code with Chocolatey,
- reopen PowerShell after installation,
- check that the `code` command works,
- open Visual Studio Code from PowerShell.

## Before you start

You should already have Chocolatey installed.

If not, read this section first:

- [Install Chocolatey](04_install_chocolatey.md)

You should also know how to open PowerShell as Administrator:

- [Open PowerShell](01_open_powershell.md)

## Step 1: Open PowerShell as Administrator

Chocolatey usually needs administrator permissions to install software.

To open PowerShell as Administrator:

1. Open the Start menu.
2. Type `PowerShell`.
3. Right-click `Windows PowerShell`.
4. Choose `Run as administrator`.
5. Confirm the Windows security prompt if it appears.

## Step 2: Check that Chocolatey works

Run this command in Administrator PowerShell:

```powershell
choco --version
```

Expected result:

```text
2.x.x
```

The exact version number may be different.

## Step 3: Install Visual Studio Code

Run this command in Administrator PowerShell:

```powershell
choco install vscode -y
```

This tells Chocolatey to install Visual Studio Code.

The `-y` option answers yes to Chocolatey's confirmation prompts.

Wait until the installation finishes.

You may see a lot of output. That is normal.

## Step 4: Close and reopen PowerShell

Close the Administrator PowerShell window.

Then open a new normal PowerShell window.

This is important because Windows may need a fresh terminal session to recognize the new `code` command.

## Step 5: Check the code command

Run this command in the new PowerShell window:

```powershell
code --version
```

Expected result:

```text
1.x.x
```

The exact version number may be different.

The important part is that PowerShell recognizes the `code` command and prints version information.

## Step 6: Open Visual Studio Code

Run:

```powershell
code
```

This should open Visual Studio Code.

If VS Code opens, the installation worked.

You can close VS Code for now.

## Common problems

### PowerShell says choco is not recognized

Chocolatey may not be installed, or PowerShell may need to be reopened.

Return to:

- [Install Chocolatey](04_install_chocolatey.md)

### PowerShell says access is denied

You may not be using Administrator PowerShell.

Close the current window and open PowerShell as Administrator.

Then try the install command again.

### PowerShell says code is not recognized

Close PowerShell completely.

Open a new PowerShell window.

Then run:

```powershell
code --version
```

If that still does not work, restart your computer and try again.

### VS Code opens, but looks different

That is normal.

VS Code can look different depending on version, theme, installed extensions, and screen size.

Focus on the main ideas:

- the Explorer panel shows files,
- the editor area opens files,
- the terminal panel runs commands.

### My computer is managed by school, university, or work

Some organizations block software installation.

If installation fails on a managed computer, you may need help from IT support.

## Key idea

Visual Studio Code is the editor you will use for project files.

After installation, this command should work:

```powershell
code --version
```

## Next step

Next, open your practice project in VS Code:

- [Open a Folder in VS Code](12_open_project_in_vscode.md)
