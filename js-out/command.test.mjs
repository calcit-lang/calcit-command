
import * as $clt from "./calcit.core.mjs";
import { calcit_dirname } from "./command.$meta.mjs";
import { calcit_filename } from "./command.$meta.mjs";
import { run_command } from "./command.core.mjs";
const _t_ = $clt.init_tags([]);

export function run_tests() {
  if (arguments.length !== 0) throw $clt._args_throw('run-tests', 0, arguments.length);
  {
    console.log($clt.printable("%%%% test for lib"));
  }
  {
    console.log($clt.printable(calcit_filename, calcit_dirname));
  }
  console.log($clt.printable(run_command("ls")))
}

export function main_$x_() {
  if (arguments.length !== 0) throw $clt._args_throw('main!', 0, arguments.length);
  return run_tests()
}

export function reload_$x_() {
  if (arguments.length !== 0) throw $clt._args_throw('reload!', 0, arguments.length);
}



