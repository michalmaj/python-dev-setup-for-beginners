# Open the Terminal

The terminal is the main Linux tool used in this guide.

You will use it to run commands, create folders, install tools, check versions, and later work with Git, Visual Studio Code, and `uv`.

## What you will learn

In this section, you will learn:

- what the terminal is on Linux,
- how to open it,
- how to check that it is working,
- what the prompt means,
- how to close the terminal.

## Before you start

You should already understand:

- what a terminal is,
- what a command is,
- what the current folder means.

If not, read these sections first:

- [What Is a Terminal?](../01_what_is_a_terminal.md)
- [Files, Folders, and Paths](../02_files_folders_and_paths.md)
- [Basic Terminal Commands](../03_basic_terminal_commands.md)

## What is the Linux terminal?

The terminal is an application where you type commands and press Enter.

You can use it to ask Linux to do things such as:

- show the current folder,
- list files,
- create folders,
- install tools,
- run programs.

In this guide, the Linux terminal examples use Bash-style commands.

## Open the terminal from the application menu

This is the recommended beginner method.

### Step 1: Open the application menu

Open your Linux application menu.

On Ubuntu, you can usually click the grid icon in the dock.

You can also press the Super key on your keyboard.

The Super key is often the key with the Windows logo or Command symbol.

### Step 2: Search for Terminal

Type:

```text
Terminal
```

You should see an application named something like:

```text
Terminal
```

or:

```text
GNOME Terminal
```

### Step 3: Open the terminal

Click the terminal application.

A terminal window should open.

It may have a dark background and text inside it. That is normal.

## Check that the terminal works

After the terminal opens, type this command:

```bash
pwd
```

Then press Enter.

This command shows the current folder.

Example output:

```text
/home/yourname
```

Your path will probably be different. That is normal.

The important part is that the terminal accepted the command and printed a result.

## The terminal prompt

In the terminal, you may see something like this:

```text
yourname@computer:~$
```

This is called the prompt.

The prompt shows that the terminal is waiting for your next command.

You do not type the prompt itself.

For example, if you see:

```text
yourname@computer:~$
```

and the guide says to run:

```bash
pwd
```

you only type:

```text
pwd
```

Then press Enter.

## The home folder symbol

Linux often uses this symbol:

```text
~
```

It means your home folder.

For example, if your username is `alex`, then `~` usually means:

```text
/home/alex
```

## Quick practice

Run this command:

```bash
pwd
```

It shows your current folder.

Then run:

```bash
ls
```

This command lists files and folders in the current folder.

You may see folders such as:

```text
Desktop  Documents  Downloads  Pictures
```

The exact list depends on your computer.

## How to close the terminal

You can close the terminal like any normal window.

You can also type:

```bash
exit
```

Then press Enter.

This closes the terminal session.

## Common problems

### I cannot find Terminal

Your Linux desktop may use a different name.

Look for:

- Terminal,
- Console,
- Konsole,
- Xfce Terminal.

### My terminal looks different

That is normal.

Terminals can use different fonts, colors, prompts, and window styles.

The important part is that commands such as `pwd` and `ls` work.

### The prompt does not look like the example

That is normal too.

The prompt can include your username, computer name, current folder, Git branch, or other details.

You only need to type the command from the guide.

## Key idea

The terminal is where you run Linux commands.

The prompt means the terminal is ready.

## Next step

Next, learn basic shell commands:

- [Basic Shell Commands](02_basic_shell_commands.md)
