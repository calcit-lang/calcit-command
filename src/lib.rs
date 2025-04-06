use cirru_edn::Edn;
use std::process::Command;

#[no_mangle]
pub fn abi_version() -> String {
  String::from("0.0.9")
}


/// simple command to run a command, without options
#[no_mangle]
pub fn run_command(args: Vec<Edn>) -> Result<Edn, String> {
  let mut xs = vec![];
  for arg in args.iter() {
    if let Edn::Str(name) = arg {
      xs.push((*name).to_owned());
    } else {
      return Err(format!("run-command expected 1 filename, got {:?}", args))
    }
  }
  if xs.is_empty()  {
    Err(format!("run-command expected at least 1 arg, got {:?}", args))
  } else {
    let name = xs.remove(0);
    let mut command = Command::new(&(*name));
    for arg in xs.iter() {
      command.arg(&*(*arg).to_owned());
    }

    let output = command.output()
      .expect("failed to execute process");
    if output.status.success() {

      Ok(Edn::str(String::from_utf8_lossy(&output.stdout).to_string()))
    } else {
      Err(format!("run-command failed: {}", String::from_utf8_lossy(&output.stderr)))
    }
  }
}

