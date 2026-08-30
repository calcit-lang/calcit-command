---
title: "Process execution boundary"
summary: "Run a child process synchronously, capture UTF-8 stdout, and keep blocking command effects outside realtime updater logic"
scope: "module"
kind: "guide"
category: "system"
aliases:
  - "calcit command"
  - "run command"
  - "child process"
  - "process output"
  - "blocking command"
  - "run-command"
  - "执行外部命令"
entry_for:
  - "command.core/run-command"
---

# Process execution boundary

`command.core/run-command` executes one child process synchronously and returns its UTF-8 stdout as `String`. The first argument is the executable name; remaining String arguments are passed directly without shell interpolation.

```cirru.no-check
command.core/run-command |git |rev-parse |HEAD
```

The call raises when the process cannot start, exits unsuccessfully, or returns output that is not valid UTF-8. On a non-zero exit, stderr is included in the error message. It does not provide shell pipelines, environment overrides, a working-directory option, streaming output, timeout, or cancellation.

## Placement in realtime applications

Because execution blocks the Calcit host thread until the child exits, do not call it from a serial updater, Respo render path, WebSocket callback, or other latency-sensitive event handler. Use it during startup or maintenance for short, trusted commands. For long-running or user-controlled work, use the cancellable process-stream capability in `calcit.std.process`, then dispatch typed progress and completion messages through the bounded application event path.

Executable names and arguments are capabilities, not ordinary business data. Validate or select them from a closed application-owned set; never build a shell command string from an untrusted network message. `run-command` avoids shell expansion, but it can still invoke any executable available to the process account.
