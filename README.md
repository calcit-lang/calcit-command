## Calcit Command

> binds to `std::process:command`

本轮工具链固定正式 Calcit **0.32.0**，候选模块版本为 **0.0.16**，候选号不等于已发布。
下游需同步 `deps.cirru` 的 CLI 要求并保留 Caps strict；本库仅运行 native，没有 npm
runtime 或 JS/WASM 支持承诺。Snapshot 经官方 format 更新为 0.32.0 类型标注；空的 reload 返回 Unit，
命令执行、UTF-8 输出、异常和 C-safe ABI 行为保持不变。CI 保留严格类型入口、
全部项目定义、Rust、符号与文档门禁，不新增验证框架。
Calcit 0.32.0 的 native `identical?` 对容器采用身份比较；下游若需要结构值比较，应使用 `=`。
本库的命令实现不使用该比较，不代表消费者已完成语义检查。
这是原生模块，没有前端资源，不添加 COS/CDN。Action 使用正式标签，标签可移动风险仍存在。
默认启用严格类型诊断，CI 不使用已弃用的 `--strict-types` 开关。
Snapshot 仅更新类型表示；Rust、Cargo 依赖/lock、变长参数和 C-safe buffer ABI v1 不改。
消费者使用 `sh build.sh`，该原有入口执行 `cargo build --release --locked`，失败立即停止，
不再清空既有 dylibs。CI 复用同一入口，移除重复复制步骤并保留原符号审计。
不新增迁移规则、checker、预算或类型强转。

当前门禁保持既有的严格全部定义检查、真实原生调用及原文档示例；
原生返回值在 FFI 边界受检为 String。此前按维护者要求退役的迁移 proof preset 不恢复，
背景见 [Calcit #1694](https://github.com/calcit-lang/calcit/issues/1694#issuecomment-5965337363)。
这不是本轮删除门禁，也不为迁移增加编译器 proof 或硬编码 fix。
正式配对保留 9 个定义、Rust 构建/clippy、ABI 符号审计、真实 `ls` 和文档 `git rev-parse` 调用；
`cargo test` 当前发现零项测试，不能将它描述为行为覆盖。原生行为验证来自上述调用。

正式 0.32.0 的本次验证以精确提交的 Linux CI 为准。
本次不改变变长 String 参数、错误语义或 ABI，不恢复已退役的迁移 proof preset。
模块版本由 deps.cirru 声明；Cargo crate 保持 0.0.13，不发布 crates.io 包。
没有前端或后台部署工作流，不会因此部署业务应用。

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
requires the exact Calcit 0.32.0 declared in deps.cirru.
Shared descriptors, buffer ownership, Cirru EDN transport,
and adapters come from
[`calcit_native_ffi`](https://github.com/calcit-lang/calcit-native-ffi).

本模块要求 deps.cirru 声明的精确 0.32.0；共享 `calcit_native_ffi`
维护 descriptor、buffer ownership、Cirru EDN transport 与 adapter，不再在本
仓库复制协议模板。Legacy Rust ABI symbols are intentionally no longer exported.

### Workflow

https://github.com/calcit-lang/dylib-workflow

### License

MIT
