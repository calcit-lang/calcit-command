
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `cr query` to inspect and `cr edit`/`cr tree` to modify. Run `cr docs agents --full` first. Manual edits must follow format and schema conventions, then run `cr edit format`.") (:package |command) (:version |0.0.1)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'command.test/main!) (:mode :native) (:reload-fn 'command.test/reload!)
      :modules $ []
      :type-slots $ {}
  :files $ {}
    |command.core $ %{} 'FileEntry
      :defs $ {}
        |run-command $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn run-command (name & args)
              &call-dylib-edn (get-dylib-path |/dylibs/libcalcit_command) |run_command name & args
          :examples $ []
          :schema $ :: 'Fn
            {} (:rest 'String) (:return 'String)
              :args $ [] 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns command.core $ :require
            command.util :refer $ get-dylib-path
    |command.test $ %{} 'FileEntry
      :defs $ {}
        |main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! () $ run-tests
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
        |reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! $
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
        |run-tests $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn run-tests () (println "|%%%% test for lib") (println calcit-filename calcit-dirname)
              println $ run-command |ls
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns command.test $ :require
            command.core :refer $ run-command
            command.$meta :refer $ calcit-dirname calcit-filename
    |command.util $ %{} 'FileEntry
      :defs $ {}
        |get-dylib-ext $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defmacro get-dylib-ext () $ case-default (&get-os) |.so (:macos |.dylib) (:windows |.dll)
          :examples $ []
          :schema $ :: 'Macro
            {} (:return 'String)
              :args $ []
        |get-dylib-path $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn get-dylib-path (p)
              str (or-current-path calcit-dirname) p $ get-dylib-ext
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'String
        |or-current-path $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn or-current-path (p)
              if (blank? p) |. p
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns command.util $ :require
            command.$meta :refer $ calcit-dirname
