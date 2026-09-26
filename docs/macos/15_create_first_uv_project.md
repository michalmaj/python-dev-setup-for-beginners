# Create the First Python Project

You are ready to create and run a small Python application with `uv`.

## What you will learn

You will learn how to:

- create a packaged Python application,
- inspect its generated files,
- open it in VS Code,
- run it through its project command,
- recognize the environment created by `uv`.

## Before you start

You should have:

- a working `~/Projects` folder,
- Visual Studio Code,
- `uv` installed.

Check `uv` in Terminal:

```bash
uv --version
```

## Step 1: Go to Projects

Run:

```bash
cd ~/Projects
```

Check the location with `pwd`. The path should end with `/Projects`.

## Step 2: Create the project

Run:

```bash
uv init my-first-python-project
```

This creates a new application folder and initializes a Git repository inside it.

Move into the project:

```bash
cd my-first-python-project
```

## Step 3: Inspect the generated files

Run:

```bash
ls -a
```

You should see items similar to:

```text
.git
.gitignore
.python-version
README.md
pyproject.toml
src
```

Open `src`, then the Python package folder:

```bash
ls src
```

Its name should look like `my_first_python_project`. Hyphens in the project name become underscores in the Python package name.

## Step 4: Open the project in VS Code

Run:

```bash
code .
```

The Explorer should show `pyproject.toml`, `README.md`, and the `src` folder.

## Step 5: Run the application

Open the VS Code terminal and run:

```bash
uv run my-first-python-project
```

Expected result:

```text
Hello from my-first-python-project!
```

The first run may take longer because `uv` may download Python, create `.venv`, and generate `uv.lock`.

## Step 6: Understand the important items

| Item | Purpose |
| --- | --- |
| `src/` | Contains the Python source code. |
| `pyproject.toml` | Describes the project and its dependencies. |
| `.python-version` | Records the Python version requested by the project. |
| `.venv/` | Contains the isolated project environment. |
| `uv.lock` | Records exact dependency versions. |
| `.gitignore` | Keeps generated files such as `.venv` out of Git. |

The `.venv` folder may be hidden in VS Code. You do not edit it manually or commit it to Git.

## Common problems

### The project folder already exists

Do not overwrite it. Choose another name, such as:

```bash
uv init my-second-python-project
```

Remember to use that name in later commands too.

### The first run takes a long time

Wait for `uv` to download and prepare the required tools. Later runs are usually faster.

### The generated files differ slightly

Project templates can change between `uv` versions. Confirm that you have `pyproject.toml` and that the `uv run` command succeeds.

### VS Code opened the wrong folder

Run `pwd` in Terminal, move to `~/Projects/my-first-python-project`, and run `code .` again.

## Next step

Edit the application, commit the complete project, and publish it:

- [Commit and Publish the First Project](16_commit_and_publish_first_project.md)
