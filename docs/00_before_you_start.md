# Before You Start

Check your computer and access before installing developer tools. A few minutes here can prevent confusing setup problems later.

## Recommended classroom systems

| Path | Recommended classroom baseline | Important note |
| --- | --- | --- |
| Windows | Windows 11 on a 64-bit computer | Windows 10 may still run the tools, but Microsoft support ended on October 14, 2025. |
| Linux | A supported Ubuntu or Debian release on an `x86_64` computer | Commands for Fedora, Arch, openSUSE, and other distributions are different. |
| macOS | macOS 15 or newer on Apple Silicon | `uv` supports macOS 13+, but current Homebrew support starts with macOS 15; Intel Macs are not the primary classroom target. |

Older or different systems may work, but this first guide does not promise the same steps or troubleshooting coverage.

Official compatibility references:

- [Windows 10 end of support](https://learn.microsoft.com/lifecycle/announcements/windows-10-end-of-support)
- [`uv` platform support](https://docs.astral.sh/uv/reference/policies/platforms/)
- [Homebrew installation requirements](https://docs.brew.sh/Installation)

## What you need

Before class, make sure you have:

- access to your own user account,
- the password for that account,
- permission to install applications,
- a stable internet connection,
- a modern web browser,
- an email address you can open during class,
- a safe place to store your GitHub password, 2FA method, and recovery codes.

Never place passwords, access tokens, or recovery codes inside a project folder.

## Managed computers

A school or work computer may block:

- administrator commands,
- application installers,
- downloads from developer websites,
- GitHub authentication,
- changes to shell settings.

If your computer is managed by an organization, ask the instructor or IT support whether you may install the tools in this guide. Do this before class if possible.

## Check Windows

Open:

```text
Settings > System > About
```

Check `Windows specifications` and `System type`.

For the recommended path, you should see Windows 11 and a 64-bit operating system.

## Check Linux

Open the terminal and run:

```bash
cat /etc/os-release
```

This prints the distribution name and version.

Then run:

```bash
uname -m
```

The recommended result is:

```text
x86_64
```

## Check macOS

Open Terminal and run:

```bash
sw_vers
```

This prints the installed macOS version.

Then run:

```bash
uname -m
```

The recommended result is:

```text
arm64
```

`arm64` means the Mac uses Apple Silicon.

## Interface language

The guide uses English names for buttons, menus, and settings. If your operating system uses another language, the same item may have a translated name or appear in a slightly different place.

Do not change the system language only for this guide. Ask the instructor when a translated label is difficult to identify.

## Readiness checklist

Before continuing, confirm that:

- you know which operating system and version you use,
- your computer matches the recommended path or the instructor approved an exception,
- you can install applications,
- you can open your email and a web browser,
- you know who to contact if organizational restrictions block a step.

## Next step

Learn what a terminal is:

- [What Is a Terminal?](01_what_is_a_terminal.md)
