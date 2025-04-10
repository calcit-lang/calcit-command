
{} (:package |command)
  :configs $ {} (:init-fn |command.test/main!) (:reload-fn |command.test/reload!) (:version |0.0.1)
    :modules $ []
  :entries $ {}
  :files $ {}
    |command.core $ %{} :FileEntry
      :defs $ {}
        |run-command $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn run-command (name & args)
              &call-dylib-edn (get-dylib-path "\"/dylibs/libcalcit_command") "\"run_command" name & args
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns command.core $ :require
            command.$meta :refer $ calcit-dirname
            command.util :refer $ get-dylib-path
    |command.test $ %{} :FileEntry
      :defs $ {}
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! () $ run-tests
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! $
        |run-tests $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn run-tests () (println "\"%%%% test for lib") (println calcit-filename calcit-dirname)
              println $ run-command "\"ls"
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns command.test $ :require
            command.core :refer $ run-command
            command.$meta :refer $ calcit-dirname calcit-filename
    |command.util $ %{} :FileEntry
      :defs $ {}
        |get-dylib-ext $ %{} :CodeEntry (:doc |)
          :code $ quote
            defmacro get-dylib-ext () $ case-default (&get-os) "\".so" (:macos "\".dylib") (:windows "\".dll")
        |get-dylib-path $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn get-dylib-path (p)
              str (or-current-path calcit-dirname) p $ get-dylib-ext
        |or-current-path $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn or-current-path (p)
              if (blank? p) "\"." p
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns command.util $ :require
            command.$meta :refer $ calcit-dirname calcit-filename
