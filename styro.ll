; ModuleID = 'lib.88062f8c996362de-cgu.0'
source_filename = "lib.88062f8c996362de-cgu.0"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-unknown"

; Function Attrs: nounwind
define dso_local void @call_memory_grow(i16 zeroext %pages) unnamed_addr #0 {
start:
; call lib::memory_grow
  call void @_ZN3lib11memory_grow17hd1c263965f754575E(i16 zeroext %pages) #2
  ret void
}

; lib::memory_grow
; Function Attrs: nounwind
declare dso_local void @_ZN3lib11memory_grow17hd1c263965f754575E(i16 zeroext) unnamed_addr #1

attributes #0 = { nounwind "target-cpu"="generic" }
attributes #1 = { nounwind "target-cpu"="generic" "wasm-import-module"="vm_hooks" "wasm-import-name"="memory_grow" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"rustc version 1.74.0 (79e9716c9 2023-11-13)"}
