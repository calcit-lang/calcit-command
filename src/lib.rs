use cirru_edn::Edn;
use std::process::Command;

calcit_native_ffi::export_buffer_abi_v1!();

/// simple command to run a command, without options
pub fn run_command(args: Vec<Edn>) -> Result<Edn, String> {
  let mut xs = vec![];
  for arg in args.iter() {
    if let Edn::Str(name) = arg {
      xs.push((*name).to_owned());
    } else {
      return Err(format!("run-command expects string arguments, got {:?}", args));
    }
  }
  if xs.is_empty() {
    Err(format!("run-command expected at least 1 arg, got {:?}", args))
  } else {
    let name = xs.remove(0);
    let mut command = Command::new(&*name);
    command.args(xs.iter().map(|arg| &**arg));

    let output = command.output().map_err(|err| format!("failed to execute process: {err}"))?;
    if output.status.success() {
      let stdout = String::from_utf8(output.stdout).map_err(|error| format!("command stdout is not UTF-8: {error}"))?;
      Ok(Edn::str(stdout))
    } else {
      let stderr = String::from_utf8(output.stderr).map_err(|error| format!("command stderr is not UTF-8: {error}"))?;
      Err(format!("run-command failed: {stderr}"))
    }
  }
}

calcit_native_ffi::export_edn_buffer_method_v1!(run_command_calcit_ffi_v1, run_command);
