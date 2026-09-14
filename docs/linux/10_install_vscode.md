# Install Visual Studio Code

Visual Studio Code is a code editor.

In this guide, you will use it to open project folders, edit files, and run commands in the integrated terminal.

## What you will learn

In this section, you will learn how to:

- download the official Linux `.deb` package,
- install Visual Studio Code with `apt`,
- check that the `code` command works,
- open Visual Studio Code from the terminal.

## Before you start

You should already know how to:

- open the terminal,
- install packages with `apt`,
- run commands with `sudo`.

If not, read these sections first:

- [Open the Terminal](01_open_terminal.md)
- [Install Git on Linux](04_install_git.md)

## Step 1: Open the official download page

Open your web browser.

Go to:

```text
https://code.visualstudio.com/Download
```

This is the official Visual Studio Code download page.

## Step 2: Download the .deb package

Choose the Linux `.deb` package.

This is the package format used by Ubuntu, Debian, and similar distributions.

Your browser will usually save the file in:

```text
/home/yourname/Downloads
```

The file name may look similar to:

```text
code_1.x.x_amd64.deb
```

The exact version number may be different.

## Step 3: Open the terminal

Open the terminal.

Move to your Downloads folder:

```bash
cd ~/Downloads
```

List matching files:

```bash
ls code*.deb
```

You should see the VS Code `.deb` file you downloaded.

## Step 4: Install Visual Studio Code

Run:

```bash
sudo apt install ./code*.deb
```

This tells `apt` to install the local `.deb` package.

The `./` part means:

```text
use a file from the current folder
```

Linux may ask for your password.

If the terminal asks whether you want to continue, type:

```text
Y
```

Then press Enter.

## Step 5: Check the code command

Run:

```bash
code --version
```

Expected result:

```text
1.x.x
```

The exact version number may be different.

The important part is that the terminal recognizes the `code` command and prints version information.

## Step 6: Open Visual Studio Code

Run:

```bash
code
```

This should open Visual Studio Code.

If VS Code opens, the installation worked.

You can close VS Code for now.

## Updates

The official `.deb` package can set up the Microsoft package repository for future updates.

This means Visual Studio Code can update later through your normal Linux software updates.

## Common problems

### ls code*.deb finds no files

You may not be in the Downloads folder, or the file may have a different name.

Run:

```bash
pwd
ls
```

Check that you are in:

```text
/home/yourname/Downloads
```

Then look for a file ending in:

```text
.deb
```

### apt says unsupported file

Make sure you downloaded the `.deb` package, not a `.rpm`, `.tar.gz`, or other file.

Ubuntu and Debian use `.deb`.

### code is not found

Close the terminal and open it again.

Then run:

```bash
code --version
```

If it still does not work, check whether the installation command finished successfully.

### VS Code opens, but looks different

That is normal.

VS Code can look different depending on version, theme, installed extensions, and screen size.

Focus on the main ideas:

- the Explorer panel shows files,
- the editor area opens files,
- the terminal panel runs commands.

## Key idea

Visual Studio Code is the editor you will use for project files.

After installation, this command should work:

```bash
code --version
```

## Next step

Next, open your practice project in VS Code:

- [Open a Folder in VS Code](11_open_project_in_vscode.md)
