# Linux Completion Checklist

Use this checklist after finishing the Linux path.

It helps you check whether your beginner Python development setup is ready.

## What you should have

By this point, you should have:

- a `Projects` folder,
- Git installed,
- Git configured with your name and email,
- a GitHub account,
- Visual Studio Code installed,
- `uv` installed,
- one small Git practice repository,
- one first Python project created with `uv`.

## Tool checks

Open the terminal.

Run:

```bash
git --version
```

Expected result:

```text
git version 2.x.x
```

Run:

```bash
code --version
```

Expected result:

```text
1.x.x
```

Run:

```bash
uv --version
```

Expected result:

```text
uv 0.x.x
```

The exact version numbers may be different.

## Git identity checks

Run:

```bash
git config --global user.name
```

This should print your name.

Run:

```bash
git config --global user.email
```

This should print the email address you want to use with Git.

## Project checks

Move into your first Python project:

```bash
cd ~/Projects/my-first-python-project
```

Run:

```bash
uv run my-first-python-project
```

Expected result:

```text
Hello from my first Python project!
```

Run:

```bash
git status
```

If your project is clean, Git should say:

```text
nothing to commit, working tree clean
```

If Git shows changed files, either commit them or check whether you forgot to save, stage, or finish a previous step.

## GitHub checks

If your project is connected to GitHub, run:

```bash
git remote -v
```

You should see a GitHub address.

Example:

```text
origin  https://github.com/YOUR-USERNAME/my-first-python-project.git (fetch)
origin  https://github.com/YOUR-USERNAME/my-first-python-project.git (push)
```

Then run:

```bash
git push
```

If Git says everything is already up to date, that is fine.

## If something fails

Do not restart the whole guide.

Use the troubleshooting page first:

- [Linux Troubleshooting](17_linux_troubleshooting.md)

## Key idea

A working beginner setup means you can:

```text
open a project
edit a file
run the project
commit the change
push it to GitHub
```

## Next step

You now have the first Linux setup path completed.

Next, learn how to fix common beginner problems:

- [Linux Troubleshooting](17_linux_troubleshooting.md)
