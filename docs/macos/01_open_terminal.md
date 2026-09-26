# Open Terminal

Terminal is the macOS application used to type commands in this guide.

## What you will learn

You will learn how to:

- open Terminal,
- check that it works,
- recognize the prompt,
- close a terminal session.

## Step 1: Open Spotlight

Press `Command+Space` on your keyboard.

This opens Spotlight search.

## Step 2: Find Terminal

Type:

```text
Terminal
```

Select the Terminal application and press Return.

You can also find Terminal in:

```text
Applications > Utilities > Terminal
```

## Step 3: Check that Terminal works

Run this command in Terminal:

```bash
pwd
```

`pwd` shows the current folder.

Example output:

```text
/Users/yourname
```

Your username will be different. The important part is that Terminal prints a path.

## Understand the prompt

You may see a prompt similar to:

```text
yourname@MacBook ~ %
```

The prompt means that Terminal is ready for a command. Do not type the prompt itself.

The `~` symbol means your home folder, usually `/Users/yourname` on macOS.

## Check the shell

Run:

```bash
echo $SHELL
```

This shows the path to your shell.

On a modern macOS installation, the result is usually:

```text
/bin/zsh
```

## Close the session

Run:

```bash
exit
```

This ends the current shell session. You can then close the window normally.

## Common problems

### Spotlight does not find Terminal

Open Finder and go to `Applications`, then `Utilities`. Double-click Terminal.

### The prompt looks different

Prompt colors and text can vary. If `pwd` prints a path, Terminal is working.

## Next step

Learn the shell commands used throughout this path:

- [Basic Shell Commands](02_basic_shell_commands.md)
