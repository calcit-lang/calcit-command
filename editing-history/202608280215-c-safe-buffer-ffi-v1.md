# C-safe buffer FFI v1 / C 安全 Buffer FFI v1

- Migrated `run-command` from the Rust ABI fallback to the C-safe buffer v1 protocol.
- 将 `run-command` 从 Rust ABI fallback 迁移到 C 安全 buffer v1 协议。
- Added request validation, panic containment, output ownership, unit tests, a real Calcit smoke test, and exported-symbol auditing.
- 增加请求校验、panic 隔离、输出内存所有权、单元测试、真实 Calcit smoke 与导出符号审计。
- Upgraded the project to Calcit 0.13.52 and migrated the platform macro to the strict phase-aware schema.
- 项目升级到 Calcit 0.13.52，并将平台宏迁移到严格的分阶段 schema。
- Made `calcit.cirru` reviewable by removing its generated-file attribute.
- 移除 generated-file 属性，使 `calcit.cirru` 可直接参与代码审阅。
