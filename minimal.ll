; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare ptr @malloc(i64)

declare void @free(ptr)

define i32 @"minimal::minimal::user_entrypoint"(i32 %0) {
  ret i32 0
}

define i32 @"_mlir_ciface_minimal::minimal::user_entrypoint"(i32 %0) {
  %2 = call i32 @"minimal::minimal::user_entrypoint"(i32 %0)
  ret i32 %2
}

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
