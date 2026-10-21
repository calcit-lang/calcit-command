## Respo Command

> binds to `std::process:command`

本轮工具链固定 Calcit 0.30.1-alpha.5，模块版本为 0.0.13。空的 reload 入口显式返回 Unit；
命令执行、UTF-8 输出、异常和 C-safe ABI 行为保持不变。CI 保留严格类型入口、
全部项目定义、Rust、符号与文档门禁，不新增验证框架。
这是原生模块，没有前端资源，不添加 COS/CDN。Action 使用正式标签，标签可移动风险仍存在。
默认启用严格类型诊断，CI 不使用已弃用的 `--strict-types` 开关。
本轮只更新工具链、CI 版本来源和说明；Snapshot、Rust、Cargo 依赖/lock、变长参数
和 C-safe buffer ABI v1 完全不改。不新增迁移规则、checker、预算或类型强转。

按维护者要求，CI 退役迁移期的 `fix --workflow strict --verify` preset：它要求审阅原生变长
FFI 与 core `str` 内部 spread 的证明，不等同于类型或运行测试失败。相关提示仍保留，
不声称已证明或全部退役；具体证据见
[Calcit #1694](https://github.com/calcit-lang/calcit/issues/1694#issuecomment-5965337363)。
当前验收是 0.30.1 候选的严格全部定义检查、真实原生调用及原文档示例；
原生返回值在 FFI 边界受检为 String。退役旧 check-public/quality CLI，不修改变长 API、
不放宽业务类型，也不为迁移再增加编译器 proof 或硬编码 fix。
本地 Rust 构建/clippy、ABI 符号审计、真实 `ls` 与文档 `git rev-parse` 调用通过；
`cargo test` 当前发现零项测试，不能将它描述为行为覆盖。原生行为验证来自上述调用。

正式 0.30.1 的跨平台 CLI/npm 配对发布尚未完整，因此明确固定已发布候选；
本库仅运行 native，没有 npm runtime 配对。不改变变长 String 参数、错误语义或 ABI，
不恢复已退役的迁移 proof preset，也不另发模块版本。

API 设计: https://github.com/calcit-lang/calcit/discussions/116 .

### Usages

APIs:

```cirru
command.core/run-command |git |rev-parse |HEAD
```

See [Process execution boundary](docs/process-execution.md) for blocking,
output, error, and realtime-application placement rules. The page is indexed
by `calcit docs read/search`.

Install with `caps add calcit-lang/command@<tag>` and run `caps`. The project-local
`.calcit/modules/` view points at the versioned global module store. Compile with
`./build.sh` and provide the matching `*.{dylib,so,dll}` file.

The native library exports the C-safe buffer FFI v1 protocol and requires Calcit
0.14.7 or newer. Shared descriptors, buffer ownership, Cirru EDN transport,
and adapters come from
[`calcit_native_ffi`](https://github.com/calcit-lang/calcit-native-ffi).

原生库要求 Calcit 0.14.7 或更新版本，并通过共享 `calcit_native_ffi`
维护 descriptor、buffer ownership、Cirru EDN transport 与 adapter，不再在本
仓库复制协议模板。Legacy Rust ABI symbols are intentionally no longer exported.

### Workflow

https://github.com/calcit-lang/dylib-workflow

### License

MIT
