
{} (:package |command)
  :configs $ {} (:init-fn |command.test/main!) (:port 6001) (:reload-fn |command.test/reload!) (:version |0.0.1)
    :modules $ []
  :entries $ {}
  :files $ {}
    |command.core $ %{} :FileEntry
      :defs $ {}
        |run-command $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1743878514755) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1743878514755) (:by |u0) (:text |defn)
              |b $ %{} :Leaf (:at 1743878514755) (:by |u0) (:text |run-command)
              |h $ %{} :Expr (:at 1743878516791) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1743878516791) (:by |u0) (:text |name)
                  |b $ %{} :Leaf (:at 1743878559812) (:by |u0) (:text |&)
                  |h $ %{} :Leaf (:at 1743878561191) (:by |u0) (:text |args)
              |l $ %{} :Expr (:at 1743878516791) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1743878516791) (:by |u0) (:text |&call-dylib-edn)
                  |b $ %{} :Expr (:at 1743878516791) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1743878516791) (:by |u0) (:text |get-dylib-path)
                      |b $ %{} :Leaf (:at 1743878525711) (:by |u0) (:text "|\"/dylibs/libcalcit_command")
                  |h $ %{} :Leaf (:at 1743878830914) (:by |u0) (:text "|\"run_command")
                  |l $ %{} :Leaf (:at 1743878516791) (:by |u0) (:text |name)
                  |o $ %{} :Leaf (:at 1743878563271) (:by |u0) (:text |&)
                  |q $ %{} :Leaf (:at 1743878563950) (:by |u0) (:text |args)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1630171366222) (:by |u0)
          :data $ {}
            |T $ %{} :Leaf (:at 1630171366222) (:by |u0) (:text |ns)
            |j $ %{} :Leaf (:at 1630171366222) (:by |u0) (:text |command.core)
            |r $ %{} :Expr (:at 1630175118985) (:by |u0)
              :data $ {}
                |T $ %{} :Leaf (:at 1630175119637) (:by |u0) (:text |:require)
                |j $ %{} :Expr (:at 1630175120856) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1634703660055) (:by |u0) (:text |command.$meta)
                    |j $ %{} :Leaf (:at 1630175127717) (:by |u0) (:text |:refer)
                    |r $ %{} :Expr (:at 1630175128076) (:by |u0)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1630175130627) (:by |u0) (:text |calcit-dirname)
                |r $ %{} :Expr (:at 1633181140100) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1634703662332) (:by |u0) (:text |command.util)
                    |j $ %{} :Leaf (:at 1633181140100) (:by |u0) (:text |:refer)
                    |r $ %{} :Expr (:at 1633181140100) (:by |u0)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1634804181370) (:by |u0) (:text |get-dylib-path)
    |command.test $ %{} :FileEntry
      :defs $ {}
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1633149996242) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1633149996242) (:by |u0) (:text |defn)
              |j $ %{} :Leaf (:at 1633149996242) (:by |u0) (:text |main!)
              |r $ %{} :Expr (:at 1633149996242) (:by |u0)
                :data $ {}
              |v $ %{} :Expr (:at 1633150002066) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1633150004371) (:by |u0) (:text |run-tests)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1633149998862) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1633149998862) (:by |u0) (:text |defn)
              |j $ %{} :Leaf (:at 1633149998862) (:by |u0) (:text |reload!)
              |r $ %{} :Expr (:at 1633149998862) (:by |u0)
                :data $ {}
        |run-tests $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1633150008092) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1633150011172) (:by |u0) (:text |defn)
              |j $ %{} :Leaf (:at 1633150008092) (:by |u0) (:text |run-tests)
              |r $ %{} :Expr (:at 1633150008092) (:by |u0)
                :data $ {}
              |v $ %{} :Expr (:at 1634703837934) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1634703837934) (:by |u0) (:text |println)
                  |j $ %{} :Leaf (:at 1634703847178) (:by |u0) (:text "|\"%%%% test for lib")
              |x $ %{} :Expr (:at 1634703837934) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1634703837934) (:by |u0) (:text |println)
                  |j $ %{} :Leaf (:at 1634703837934) (:by |u0) (:text |calcit-filename)
                  |r $ %{} :Leaf (:at 1634703837934) (:by |u0) (:text |calcit-dirname)
              |z $ %{} :Expr (:at 1743878667645) (:by |u0)
                :data $ {}
                  |D $ %{} :Leaf (:at 1743878668858) (:by |u0) (:text |println)
                  |T $ %{} :Expr (:at 1743878657639) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1743878658485) (:by |u0) (:text |run-command)
                      |b $ %{} :Leaf (:at 1743878660797) (:by |u0) (:text "|\"ls")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1633149625774) (:by |u0)
          :data $ {}
            |T $ %{} :Leaf (:at 1633149625774) (:by |u0) (:text |ns)
            |j $ %{} :Leaf (:at 1633149625774) (:by |u0) (:text |command.test)
            |r $ %{} :Expr (:at 1633149974572) (:by |u0)
              :data $ {}
                |T $ %{} :Leaf (:at 1633149975596) (:by |u0) (:text |:require)
                |j $ %{} :Expr (:at 1634703855566) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1634703858564) (:by |u0) (:text |command.core)
                    |j $ %{} :Leaf (:at 1634703859915) (:by |u0) (:text |:refer)
                    |r $ %{} :Expr (:at 1634703860100) (:by |u0)
                      :data $ {}
                        |b $ %{} :Leaf (:at 1743878652897) (:by |u0) (:text |run-command)
                |r $ %{} :Expr (:at 1634703941759) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1634703941759) (:by |u0) (:text |command.$meta)
                    |j $ %{} :Leaf (:at 1634703941759) (:by |u0) (:text |:refer)
                    |r $ %{} :Expr (:at 1634703941759) (:by |u0)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1634703941759) (:by |u0) (:text |calcit-dirname)
                        |j $ %{} :Leaf (:at 1634703953240) (:by |u0) (:text |calcit-filename)
    |command.util $ %{} :FileEntry
      :defs $ {}
        |get-dylib-ext $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1630231398718) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1630231418304) (:by |u0) (:text |defmacro)
              |j $ %{} :Leaf (:at 1633181058353) (:by |u0) (:text |get-dylib-ext)
              |r $ %{} :Expr (:at 1630231398718) (:by |u0)
                :data $ {}
              |v $ %{} :Expr (:at 1630231403270) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1630231423910) (:by |u0) (:text |case-default)
                  |b $ %{} :Expr (:at 1630231429893) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1630231433951) (:by |u0) (:text |&get-os)
                  |j $ %{} :Leaf (:at 1630231427453) (:by |u0) (:text "|\".so")
                  |r $ %{} :Expr (:at 1630231437150) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1630231439152) (:by |u0) (:text |:macos)
                      |j $ %{} :Leaf (:at 1630231447585) (:by |u0) (:text "|\".dylib")
                  |v $ %{} :Expr (:at 1630231448478) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1630231449901) (:by |u0) (:text |:windows)
                      |j $ %{} :Leaf (:at 1630231461388) (:by |u0) (:text "|\".dll")
        |get-dylib-path $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1634804142034) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1634804142034) (:by |u0) (:text |defn)
              |j $ %{} :Leaf (:at 1634804142034) (:by |u0) (:text |get-dylib-path)
              |n $ %{} :Expr (:at 1634804146574) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1634804230294) (:by |u0) (:text |p)
              |r $ %{} :Expr (:at 1634804145483) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1634804145483) (:by |u0) (:text |str)
                  |j $ %{} :Expr (:at 1634804145483) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1634804145483) (:by |u0) (:text |or-current-path)
                      |j $ %{} :Leaf (:at 1634804145483) (:by |u0) (:text |calcit-dirname)
                  |r $ %{} :Leaf (:at 1634804157377) (:by |u0) (:text |p)
                  |v $ %{} :Expr (:at 1634804145483) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1634804145483) (:by |u0) (:text |get-dylib-ext)
        |or-current-path $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1630245582276) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1630245583936) (:by |u0) (:text |defn)
              |j $ %{} :Leaf (:at 1633181131099) (:by |u0) (:text |or-current-path)
              |r $ %{} :Expr (:at 1630245582276) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1630245585364) (:by |u0) (:text |p)
              |v $ %{} :Expr (:at 1630245585942) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1630245586336) (:by |u0) (:text |if)
                  |j $ %{} :Expr (:at 1630245586894) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1630245614560) (:by |u0) (:text |blank?)
                      |j $ %{} :Leaf (:at 1630245615061) (:by |u0) (:text |p)
                  |r $ %{} :Leaf (:at 1630245616843) (:by |u0) (:text "|\".")
                  |v $ %{} :Leaf (:at 1630245618366) (:by |u0) (:text |p)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1633181044360) (:by |u0)
          :data $ {}
            |T $ %{} :Leaf (:at 1633181044360) (:by |u0) (:text |ns)
            |j $ %{} :Leaf (:at 1633181044360) (:by |u0) (:text |command.util)
            |r $ %{} :Expr (:at 1634804160546) (:by |u0)
              :data $ {}
                |T $ %{} :Leaf (:at 1634804161330) (:by |u0) (:text |:require)
                |j $ %{} :Expr (:at 1634804162771) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1634804167270) (:by |u0) (:text |command.$meta)
                    |j $ %{} :Leaf (:at 1634804168120) (:by |u0) (:text |:refer)
                    |r $ %{} :Expr (:at 1634804168421) (:by |u0)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1634804171748) (:by |u0) (:text |calcit-dirname)
                        |j $ %{} :Leaf (:at 1634804175462) (:by |u0) (:text |calcit-filename)
  :users $ {}
    |u0 $ {} (:avatar nil) (:id |u0) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
