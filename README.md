## Calcit Command

> binds to `std::process:command`

候选模块 **0.0.20** 配对正式 Calcit **0.38.0**；消费者须同步 CLI、通过 Caps 严格安装并重新构建目标架构 dylib。使用 Calcit 0.34.2 的消费者仍可选已发布的 0.0.18。

Snapshot 将变长参数的类型标注改为分组写法。String 命令名及变长 String 参数已经具体，无需引入 union。原变长 String 参数、UTF-8 stdout、错误传播及 C-safe buffer ABI v1 保持；Cargo crate 仍为0.0.13，不发布 crates.io。本库仅支持 native，没有 npm runtime、JS/WASM 或前端 COS/CDN，不部署业务应用。

原全部定义检查、Rust fmt/test/clippy、locked release、符号审计、真实原生调用与可执行文档门禁保持。Rust setup 复用精确正式tag，接受tag可移动风险；canonical仅改quiet输出，不添加checker、强转、预算或测试框架。

本轮已在 macOS arm64 用正式 0.38.0 完成严格安装与工具链校验、原全部定义、
locked release build、fmt/clippy、三个 C-safe 导出符号及原生 ls/文档 git 调用，
Snapshot 字节不变。最终 Linux 结果继续以精确 PR CI 为准，不扩大平台承诺。

当前 `cargo test` 没有单元测试，不能将零项测试描述为行为覆盖；原生行为证据来自原 `ls` 和文档 `git rev-parse` 调用。消费者使用 `sh build.sh` 按 Cargo.lock 构建，失败停止且不清空既有 dylibs。

此前按维护者要求退役的迁移 proof preset 不恢复，背景见 [Calcit #1694](https://github.com/calcit-lang/calcit/issues/1694#issuecomment-5965337363)。保持原类型与原生调用门禁，不为迁移增加编译器proof或硬编码fix。

历史语义注意：Calcit 0.32.0 的 native `identical?` 对容器采用身份比较；结构值比较应使用 `=`。本库不使用该调用，不据此声称所有消费者已完成语义迁移。精确提交的 Linux CI 不构成全部平台兼容保证。

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
requires the exact Calcit 0.38.0 declared in deps.cirru.
Shared descriptors, buffer ownership, Cirru EDN transport,
and adapters come from
[`calcit_native_ffi`](https://github.com/calcit-lang/calcit-native-ffi).

本模块要求 deps.cirru 声明的精确 0.38.0；共享 `calcit_native_ffi`
维护 descriptor、buffer ownership、Cirru EDN transport 与 adapter，不再在本
仓库复制协议模板。Legacy Rust ABI symbols are intentionally no longer exported.

### Workflow

https://github.com/calcit-lang/dylib-workflow

### License

MIT
