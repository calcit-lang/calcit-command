## Calcit Command

> binds to `std::process:command`

候选模块 **0.0.21** 需要正式 Calcit **0.40.0**。请同步 CLI，通过 Caps 安装依赖，再用 `sh build.sh` 构建目标架构的原生库。使用 Calcit 0.38.0 的项目可继续使用已发布的 0.0.20。

`run-command` 仍接收 String 命令名和变长 String 参数，返回 UTF-8 stdout，执行失败沿用原错误处理。原生库继续使用 C-safe buffer ABI v1，Cargo crate 版本仍为 0.0.13。

API 设计: https://github.com/calcit-lang/calcit/discussions/116 .

### Usages

APIs:

```cirru
command.core/run-command |git |rev-parse |HEAD
```

See [Process execution boundary](docs/process-execution.md) for blocking,
output, error, and realtime-application placement rules. The page is indexed
by `calcit docs read/search`.

Install with `caps add calcit-lang/calcit-command@<tag>` and run `caps`. The project-local
`.calcit/modules/` view points at the versioned global module store. Compile with
`sh build.sh` and provide the matching `*.{dylib,so,dll}` file.

The native library exports the C-safe buffer FFI v1 protocol. This module release
requires the exact Calcit 0.40.0 declared in deps.cirru.
Shared descriptors, buffer ownership, Cirru EDN transport,
and adapters come from
[`calcit_native_ffi`](https://github.com/calcit-lang/calcit-native-ffi).

本模块要求 deps.cirru 声明的精确 0.40.0；共享 `calcit_native_ffi`
维护 descriptor、buffer ownership、Cirru EDN transport 与 adapter，不再在本
仓库复制协议模板。Legacy Rust ABI symbols are intentionally no longer exported.

### Workflow

https://github.com/calcit-lang/dylib-workflow

### License

MIT
