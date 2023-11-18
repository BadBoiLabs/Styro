; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare ptr @malloc(i64)

declare void @free(ptr)

define i32 @"hello::hello::user_entrypoint"(i32 %0) {
  %2 = call {} @"core::debug::Felt252PrintImpl::print"(i252 310939249775)
  %3 = call {} @"core::debug::U32PrintImpl::print"(i32 %0)
  ret i32 0
}

define i32 @"_mlir_ciface_hello::hello::user_entrypoint"(i32 %0) {
  %2 = call i32 @"hello::hello::user_entrypoint"(i32 %0)
  ret i32 %2
}

define {} @"core::debug::Felt252PrintImpl::print"(i252 %0) {
  %2 = call {} @"core::debug::print_felt252"(i252 %0)
  ret {} undef
}

define void @"_mlir_ciface_core::debug::Felt252PrintImpl::print"(ptr %0, i252 %1) {
  %3 = call {} @"core::debug::Felt252PrintImpl::print"(i252 %1)
  store {} %3, ptr %0, align 1
  ret void
}

define {} @"core::debug::U32PrintImpl::print"(i32 %0) {
  %2 = zext i32 %0 to i252
  %3 = call {} @"core::debug::Felt252PrintImpl::print"(i252 %2)
  ret {} undef
}

define void @"_mlir_ciface_core::debug::U32PrintImpl::print"(ptr %0, i32 %1) {
  %3 = call {} @"core::debug::U32PrintImpl::print"(i32 %1)
  store {} %3, ptr %0, align 1
  ret void
}

declare ptr @realloc(ptr, i64)

declare i32 @cairo_native__libfunc__debug__print(i32, ptr, i32)

define {} @"core::debug::print_felt252"(i252 %0) {
  %2 = call ptr @realloc(ptr null, i64 256)
  %3 = getelementptr i252, ptr %2, i32 0
  store i252 %0, ptr %3, align 4
  %4 = call i32 @cairo_native__libfunc__debug__print(i32 1, ptr %2, i32 1)
  ret {} undef
}

define void @"_mlir_ciface_core::debug::print_felt252"(ptr %0, i252 %1) {
  %3 = call {} @"core::debug::print_felt252"(i252 %1)
  store {} %3, ptr %0, align 1
  ret void
}

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
