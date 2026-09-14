# Create the First Python Project

Now you are ready to create your first Python project with `uv`.

This project will be small, but it will use the same basic workflow as larger Python projects.

## What you will learn

In this section, you will learn how to:

- create a Python project with `uv init`,
- open the project in VS Code,
- inspect the generated files,
- run the project with `uv run`,
- understand the first project structure.

## Before you start

You should already have:

- `uv` installed,
- Visual Studio Code installed,
- a `Projects` folder.

If not, read these sections first:

- [Install uv](13_install_uv.md)
- [Install Visual Studio Code](10_install_vscode.md)
- [Create a Projects Folder](03_create_projects_folder.md)

## Step 1: Open the terminal

Open a normal terminal window.

You can also use the VS Code terminal if it is already open.

## Step 2: Move to your Projects folder

Run:

```bash
cd ~/Projects
```

Check where you are:

```bash
pwd
```

Your path should end with:

```text
Projects
```

## Step 3: Create the project

Run:

```bash
uv init my-first-python-project
```

This creates a new folder named `my-first-python-project`.

Inside that folder, `uv` creates the starting files for a Python project.

## Step 4: Move into the project folder

Run:

```bash
cd my-first-python-project
```

Check where you are:

```bash
pwd
```

Your path should end with:

```text
my-first-python-project
```

## Step 5: List the project files

Run:

```bash
ls
```

You should see files and folders such as:

```text
README.md
pyproject.toml
src
```

You may also see hidden files such as `.git`, `.gitignore`, or `.python-version`.

To show hidden files too, run:

```bash
ls -a
```

## Step 6: Open the project in VS Code

Run:

```bash
code .
```

This opens the current project folder in Visual Studio Code.

If VS Code asks whether you trust the folder, you can trust it because you created it yourself.

## Step 7: Find the generated Python code

In VS Code, open the `src` folder.

Inside it, you should see a folder with a name similar to:

```text
my_first_python_project
```

Open the Python file inside that folder.

It may be named:

```text
__init__.py
```

You should see a small Python function that prints a message.

The exact file names may be different depending on your `uv` version.

## Step 8: Run the project

Open the VS Code terminal.

Make sure the terminal is inside `my-first-python-project`.

Then run:

```bash
uv run my-first-python-project
```

Expected result:

```text
Hello from my-first-python-project!
```

The exact text may be different.

The important part is that Python runs and prints a message.

## Step 9: Understand what uv created

The project contains a few important files:

| File or folder | Meaning |
| --- | --- |
| `src/` | The folder where project Python code lives. |
| `pyproject.toml` | Project configuration. |
| `.python-version` | The Python version requested for this project. |
| `README.md` | A text file that describes the project. |

You do not need to understand every line yet.

For now, the important idea is:

```text
uv created a real Python project folder.
```

## Common problems

### uv is not found

Close the terminal and open it again.

Then run:

```bash
uv --version
```

If it still does not work, return to:

- [Install uv](13_install_uv.md)

### uv says the folder already exists

You may already have a folder named `my-first-python-project`.

Choose a different name:

```bash
uv init my-second-python-project
```

### VS Code opens the wrong folder

Close VS Code.

In the terminal, move into the project folder:

```bash
cd ~/Projects/my-first-python-project
```

Then run:

```bash
code .
```

### uv run takes time the first time

That is normal.

`uv` may need to create an environment or download Python.

Wait until the command finishes.

### The generated files look different

That is okay.

Different versions of `uv` may generate slightly different starter files.

The important part is that `uv run my-first-python-project` runs without an error.

## Key idea

You created and ran your first Python project with `uv`.

The basic workflow was:

```text
uv init project-name
cd project-name
code .
uv run project-name
```

## Next step

Next, learn how to make a small change and save it with Git.

- [Make the First Project Commit](15_make_first_project_commit.md)
