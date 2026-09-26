# Install Visual Studio Code on macOS

Visual Studio Code, usually called VS Code, is the editor used in this guide.

## What you will learn

You will learn how to:

- download VS Code from its official website,
- install the application,
- add the `code` command to your shell path,
- verify the command in Terminal.

## Step 1: Download VS Code

Open this official page in your browser:

```text
https://code.visualstudio.com/download
```

Choose the macOS download. The Universal build works on both Apple Silicon and Intel Macs.

Wait for the `.dmg` file to finish downloading.

## Step 2: Install the application

Open the downloaded `.dmg` file.

Drag `Visual Studio Code.app` into the `Applications` folder shown in the installer window.

After the copy finishes, open Finder, select `Applications`, and open Visual Studio Code.

If macOS asks whether you want to open an application downloaded from the internet, confirm only if you downloaded it from the official VS Code website.

## Step 3: Add the code command

Inside VS Code, press `Command+Shift+P`.

This opens the Command Palette. Search for and select:

```text
Shell Command: Install 'code' command in PATH
```

This lets Terminal find VS Code when you run `code`.

## Step 4: Restart Terminal

Close every Terminal window and open Terminal again.

The new session reads the updated command path.

## Step 5: Check the installation

Run this command in Terminal:

```bash
code --version
```

Expected result:

```text
1.x.x
```

The exact version and additional lines will be different.

## Step 6: Install the Python extension

In VS Code, open the Extensions view by selecting the Extensions icon in the Activity Bar.

Search for:

```text
Python
```

Install the extension published by Microsoft. Check the publisher before selecting Install.

The extension helps VS Code understand Python files. Python itself will be managed later with `uv`.

## Common problems

### macOS says the application cannot be opened

Confirm that the file came from the official VS Code website. Open VS Code from the Applications folder and follow the macOS security prompt.

### code is not found

Open VS Code and run `Shell Command: Install 'code' command in PATH` again. Then close and reopen Terminal.

### I downloaded the wrong build

Use the Universal build if you are unsure whether your Mac uses Apple Silicon or Intel.

## Next step

Open the practice repository as a VS Code project:

- [Open a Project in VS Code](12_open_project_in_vscode.md)
