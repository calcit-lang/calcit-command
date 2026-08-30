## Respo Command

> binds to `std::process:command`

API 设计: https://github.com/calcit-lang/calcit/discussions/116 .

### Usages

APIs:

```cirru
command.core/run-command cmd arg1 arg2
```

See [Process execution boundary](docs/process-execution.md) for blocking,
output, error, and realtime-application placement rules. The page is indexed
by `calcit docs read/search`.

Install with `caps add calcit-lang/command@<tag>` and run `caps`. The project-local
`.calcit/modules/` view points at the versioned global module store. Compile with
`./build.sh` and provide the matching `*.{dylib,so,dll}` file.

The native library exports the C-safe buffer FFI v1 protocol and requires Calcit
0.13.57 or newer. Shared descriptors, buffer ownership, Cirru EDN transport,
and adapters come from
[`calcit_native_ffi`](https://github.com/calcit-lang/calcit-native-ffi).

原生库要求 Calcit 0.13.57 或更新版本，并通过共享 `calcit_native_ffi`
维护 descriptor、buffer ownership、Cirru EDN transport 与 adapter，不再在本
仓库复制协议模板。Legacy Rust ABI symbols are intentionally no longer exported.

### Workflow

https://github.com/calcit-lang/dylib-workflow

### License

MIT
