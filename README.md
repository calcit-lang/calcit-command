## Respo Command

> binds to `std::process:command`

API 设计: https://github.com/calcit-lang/calcit/discussions/116 .

### Usages

APIs:

```cirru
command.core/run-command cmd arg1 arg2
```

Install with `caps add calcit-lang/command@<tag>` and run `caps`. The project-local
`.calcit/modules/` view points at the versioned global module store. Compile with
`./build.sh` and provide the matching `*.{dylib,so,dll}` file.

### Workflow

https://github.com/calcit-lang/dylib-workflow

### License

MIT
