
import * as $clt from "./calcit.core.mjs";
import { get_dylib_path } from "./command.util.mjs";
const _t_ = $clt.init_tags([]);

export function run_command(name, ...args) {
  if (arguments.length < 1) throw $clt._args_fewer_throw('run-command', 1, arguments.length);
  args = $clt.arrayToList(args);
  let tmp_AUTO_1 = get_dylib_path("/dylibs/libcalcit_command");
  return $clt._$n_call_dylib_edn(tmp_AUTO_1, "run_command", name, ...$clt.listToArray(args))
}



