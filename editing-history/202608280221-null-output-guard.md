# Null output guard / 空输出槽保护

- Reject a null C ABI output slot before decoding or executing the command.
- 在解码或执行命令前拒绝 C ABI 空输出槽。
- Added regression coverage so malformed host input cannot trigger a process side effect.
- 增加回归测试，确保宿主输入异常时不会触发进程副作用。
