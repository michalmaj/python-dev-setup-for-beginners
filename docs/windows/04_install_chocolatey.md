# Install Chocolatey

Chocolatey is a package manager for Windows.

A package manager helps you install developer tools from the terminal.

Instead of downloading installers manually from many websites, you can install some tools with commands.

For example, later you may use Chocolatey to install tools such as Git or Visual Studio Code.

## What you will learn

In this section, you will learn how to:

- understand what Chocolatey is,
- open PowerShell as Administrator,
- check the PowerShell execution policy,
- install Chocolatey,
- verify that Chocolatey works,
- understand common installation problems.

## Before you start

You should already know how to:

- open PowerShell,
- run basic PowerShell commands,
- check the current folder,
- understand normal PowerShell and Administrator PowerShell.

If not, read these sections first:

- [Open PowerShell](01_open_powershell.md)
- [Basic PowerShell Commands](02_basic_powershell_commands.md)

## What is Chocolatey?

Chocolatey is a command-line package manager for Windows.

In simple words, it helps you install software with commands.

For example, instead of manually searching for an installer in a browser, downloading it, clicking through setup windows, and checking where it was installed, a package manager can often do most of that work for you.

Chocolatey commands usually start with:

```powershell
choco
```

For example:

```powershell
choco --version
```

This command checks the installed Chocolatey version.

## Important safety note

Installing Chocolatey uses a PowerShell command that downloads and runs an installation script from the internet.

This is common for developer tools, but it is important to understand what is happening.

You should only run installation commands from official sources that you trust.

The official Chocolatey installation documentation is here:

```text
https://docs.chocolatey.org/en-us/choco/setup/
```

## Step 1: Open PowerShell as Administrator

Chocolatey should be installed from an administrative PowerShell window.

To open PowerShell as Administrator:

1. Open the Start menu.
2. Type `PowerShell`.
3. Right-click `Windows PowerShell`.
4. Choose `Run as administrator`.
5. Confirm the Windows security prompt if it appears.

You should now have an Administrator PowerShell window.

## Step 2: Check the execution policy

Run this command in Administrator PowerShell:

```powershell
Get-ExecutionPolicy
```

This command shows the current PowerShell execution policy.

You may see output such as:

```text
Restricted
```

or:

```text
RemoteSigned
```

or:

```text
Bypass
```

If the result is `Restricted`, the Chocolatey documentation recommends using `Bypass` for the current PowerShell process during installation.

## Step 3: Install Chocolatey

Run this command in Administrator PowerShell:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

What this command does:

1. Temporarily allows this PowerShell session to run the installation script.
2. Ensures the required security protocol is enabled.
3. Downloads the official Chocolatey installation script.
4. Runs the installation script.

Wait until the command finishes.

If you do not see errors, Chocolatey should be installed.

## Step 4: Close and reopen PowerShell

After installation, close the Administrator PowerShell window.

Then open a new normal PowerShell window from the Start menu.

This is useful because Windows may need a fresh terminal session to recognize the new `choco` command.

## Step 5: Verify the installation

Run this command in the new PowerShell window:

```powershell
choco --version
```

Expected result:

```text
2.x.x
```

The exact version number may be different.

That is fine.

The important part is that PowerShell recognizes the `choco` command and prints a version number.

You can also run:

```powershell
choco -?
```

This shows Chocolatey help.

## Step 6: Check where Chocolatey is installed

Run:

```powershell
Get-Command choco
```

This command shows where PowerShell finds the `choco` command.

Example output may include a path similar to:

```text
C:\ProgramData\chocolatey\bin\choco.exe
```

The exact output may be different.

## Do not install packages yet

At this point, Chocolatey is installed.

Do not install other tools yet unless the guide tells you to do so.

The next pages will use Chocolatey step by step.

## Common problems

### PowerShell says that running scripts is disabled

This usually means the execution policy blocks scripts.

Make sure you are running the official installation command from this guide in Administrator PowerShell.

The command uses:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force
```

This changes the execution policy only for the current PowerShell process.

### PowerShell says access is denied

You may not be using Administrator PowerShell.

Close the current PowerShell window and open PowerShell as Administrator.

Then try again.

### PowerShell does not recognize choco after installation

Close PowerShell completely.

Open a new PowerShell window.

Then run:

```powershell
choco --version
```

If it still does not work, restart your computer and try again.

### My computer is managed by school, university, or work

Some organizations block software installation.

If your computer is managed by an organization, you may not be able to install Chocolatey yourself.

You may need administrator permission or help from IT support.

### I am behind a proxy

A proxy can block installation scripts or package downloads.

This is more common on school, university, or company networks.

For now, try the installation on a regular home network if possible.

### The installation command looks scary

That reaction is reasonable.

The command downloads and runs a script from the internet, so it should not be treated as a random command copied from anywhere.

For this guide, use only the official Chocolatey installation command from the official documentation.

## Key idea

Chocolatey is a Windows package manager.

It lets you install some developer tools with commands that start with:

```powershell
choco
```

After installation, this command should print a version number:

```powershell
choco --version
```

## Next step

Next, install Git:

- [Install Git](05_install_git.md)