# Classroom Pilot Checklist

Use this checklist before assigning the guide to a full class. The goal is to test the instructions with real beginners and realistic computers, not only confirm that individual commands are technically correct.

## Pilot group

Include at least one beginner for every operating system used by the class:

- Windows 11 on a 64-bit computer,
- a supported Ubuntu or Debian release on an `x86_64` computer,
- macOS 15 or newer on Apple Silicon.

If the class includes another configuration, add a pilot participant with that configuration before promising support for it.

Prefer participants who have not already configured Git, VS Code, and `uv`. When that is not possible, use a fresh user account and record which tools were already present.

## Before the session

Confirm that each pilot computer has:

- permission to install applications,
- a stable internet connection,
- access to email and a web browser,
- an available GitHub account or permission to create one,
- no passwords, tokens, or recovery codes visible in recording or note-taking tools.

Run the repository documentation check:

```bash
ruby scripts/check_markdown_links.rb
```

Use the current `main` branch for the pilot and record its commit ID:

```bash
git rev-parse --short HEAD
```

## During the session

Ask the participant to follow the guide without advance coaching.

Help immediately when security, privacy, data loss, or organizational policy may be involved. For ordinary confusion, first record where and why the participant stopped.

For every problem, capture:

- operating system and version,
- page path and section heading,
- command or interface action,
- expected result,
- actual result and exact error message,
- whether the interface language differs from the guide,
- whether the computer is personally owned or managed,
- what allowed the participant to continue.

Never record a password, access token, 2FA code, or recovery code.

## Severity levels

Use these simple levels when reviewing observations:

| Level | Meaning |
| --- | --- |
| Blocker | The participant cannot continue safely without new instructions or instructor intervention. |
| Major | The participant continues only after guessing, searching elsewhere, or receiving a substantial hint. |
| Minor | The participant hesitates, but the page contains enough information to recover. |
| Observation | The path works, but wording, timing, or interface differences could be clearer. |

Resolve blockers before assigning the guide to a full class. Review major issues and document any accepted limitation.

## Required end-to-end results

Each supported path should let a beginner:

1. identify the correct operating system path,
2. open and navigate the terminal,
3. install and verify Git, VS Code, and `uv`,
4. configure Git identity,
5. create and push the `github-practice` repository,
6. create and run `my-first-python-project`,
7. commit and publish the Python project,
8. produce the [Student Completion Evidence](../05_student_completion_evidence.md),
9. recover from at least one intentional wrong-folder check using the troubleshooting page.

## Observation log

Use one row for each meaningful stop:

| OS | Page and section | What happened | Severity | Suggested change |
| --- | --- | --- | --- | --- |
| Example: Windows 11 | `14_install_uv.md`, Step 2 | Installer blocked by school policy | Blocker | Add the approved IT installation path or exclude managed devices. |

Record start and finish times for the whole path. Do not publish a promised completion time until pilot results are reasonably consistent.

## After the session

Classify every issue as one of:

- documentation defect,
- unsupported system or architecture,
- managed-device restriction,
- network restriction,
- account or authentication problem,
- upstream tool or website change,
- instructor or course policy decision.

Use the setup problem issue form for reproducible documentation defects. Keep student names and private data out of public issues.

Rerun the affected path after each blocker fix. A written change is not verified until a beginner can continue with it.

## Ready for wider use

The guide is ready for a wider class when:

- every promised operating system has completed an end-to-end pilot,
- no unresolved blocker remains,
- accepted system limitations are visible before installation starts,
- completion evidence is clear to students and instructors,
- repository documentation checks pass on `main`.

## Next step

After the pilot, update the documentation first, then publish course-specific timing and submission instructions in the course platform.
