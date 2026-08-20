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

- [Install uv](14_install_uv.md)
- [Install Visual Studio Code](11_install_vscode.md)
- [Create a Projects Folder](03_create_projects_folder.md)

## Step 1: Open PowerShell

Open a normal PowerShell window.

You can also use the VS Code terminal if it is already open.

## Step 2: Move to your Projects folder

Run:

```powershell
cd $HOME\Documents\Projects
```

Check where you are:

```powershell
Get-Location
```

Your path should end with:

```text
Documents\Projects
```

## Step 3: Create the project

Run:

```powershell
uv init my-first-python-project
```

This creates a new folder named `my-first-python-project`.

Inside that folder, `uv` creates the starting files for a Python project.

## Step 4: Move into the project folder

Run:

```powershell
cd my-first-python-project
```

Check where you are:

```powershell
Get-Location
```

Your path should end with:

```text
my-first-python-project
```

## Step 5: List the project files

Run:

```powershell
Get-ChildItem
```

You should see files such as:

```text
.python-version
README.md
main.py
pyproject.toml
```

You may also see a `.git` folder if hidden files are visible.

## Step 6: Open the project in VS Code

Run:

```powershell
code .
```

This opens the current project folder in Visual Studio Code.

If VS Code asks whether you trust the folder, you can trust it because you created it yourself.

## Step 7: Open main.py

In VS Code, open `main.py`.

You should see a small Python program.

It may look similar to:

```python
def main():
    print("Hello from my-first-python-project!")


if __name__ == "__main__":
    main()
```

The exact text may be different depending on your `uv` version.

## Step 8: Run the project

Open the VS Code terminal.

Make sure the terminal is inside `my-first-python-project`.

Then run:

```powershell
uv run main.py
```

Expected result:

```text
Hello from my-first-python-project!
```

The exact text may be different.

The important part is that Python runs and prints a message.

## Step 9: Understand what uv created

The project contains a few important files:

| File | Meaning |
| --- | --- |
| `main.py` | The Python file you ran. |
| `pyproject.toml` | Project configuration. |
| `.python-version` | The Python version requested for this project. |
| `README.md` | A text file that describes the project. |

You do not need to understand every line yet.

For now, the important idea is:

```text
uv created a real Python project folder.
```

## Common problems

### PowerShell says uv is not recognized

Close PowerShell and open it again.

Then run:

```powershell
uv --version
```

If it still does not work, return to:

- [Install uv](14_install_uv.md)

### uv says the folder already exists

You may already have a folder named `my-first-python-project`.

Choose a different name:

```powershell
uv init my-second-python-project
```

### VS Code opens the wrong folder

Close VS Code.

In PowerShell, move into the project folder:

```powershell
cd $HOME\Documents\Projects\my-first-python-project
```

Then run:

```powershell
code .
```

### uv run takes time the first time

That is normal.

`uv` may need to create an environment or download Python.

Wait until the command finishes.

### The output text is different

That is okay.

Different versions of `uv` may generate slightly different starter text.

The important part is that `uv run main.py` runs without an error.

## Key idea

You created and ran your first Python project with `uv`.

The basic workflow was:

```text
uv init project-name
cd project-name
code .
uv run main.py
```

## Next step

Next, learn how to make a small change and save it with Git.

The first project commit page is planned, but not written yet.
