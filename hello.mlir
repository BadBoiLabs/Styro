module attributes {llvm.data_layout = ""} {
  llvm.func @"hello::hello::user_entrypoint"(%arg0: i32) -> i32 attributes {llvm.emit_c_interface, sym_visibility = "public"} {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.constant(310939249775 : i252) : i252
    %2 = llvm.call @"core::debug::Felt252PrintImpl::print"(%1) : (i252) -> !llvm.struct<()>
    %3 = llvm.call @"core::debug::U32PrintImpl::print"(%arg0) : (i32) -> !llvm.struct<()>
    llvm.return %0 : i32
  }
  llvm.func @"_mlir_ciface_hello::hello::user_entrypoint"(%arg0: i32) -> i32 attributes {llvm.emit_c_interface, sym_visibility = "public"} {
    %0 = llvm.call @"hello::hello::user_entrypoint"(%arg0) : (i32) -> i32
    llvm.return %0 : i32
  }
  llvm.func @"core::debug::Felt252PrintImpl::print"(%arg0: i252) -> !llvm.struct<()> attributes {llvm.emit_c_interface, sym_visibility = "public"} {
    %0 = llvm.call @"core::debug::print_felt252"(%arg0) : (i252) -> !llvm.struct<()>
    %1 = llvm.mlir.undef : !llvm.struct<()>
    llvm.return %1 : !llvm.struct<()>
  }
  llvm.func @"_mlir_ciface_core::debug::Felt252PrintImpl::print"(%arg0: !llvm.ptr, %arg1: i252) attributes {llvm.emit_c_interface, sym_visibility = "public"} {
    %0 = llvm.call @"core::debug::Felt252PrintImpl::print"(%arg1) : (i252) -> !llvm.struct<()>
    llvm.store %0, %arg0 : !llvm.struct<()>, !llvm.ptr
    llvm.return
  }
  llvm.func @"core::debug::U32PrintImpl::print"(%arg0: i32) -> !llvm.struct<()> attributes {llvm.emit_c_interface, sym_visibility = "public"} {
    %0 = llvm.zext %arg0 : i32 to i252
    %1 = llvm.call @"core::debug::Felt252PrintImpl::print"(%0) : (i252) -> !llvm.struct<()>
    %2 = llvm.mlir.undef : !llvm.struct<()>
    llvm.return %2 : !llvm.struct<()>
  }
  llvm.func @"_mlir_ciface_core::debug::U32PrintImpl::print"(%arg0: !llvm.ptr, %arg1: i32) attributes {llvm.emit_c_interface, sym_visibility = "public"} {
    %0 = llvm.call @"core::debug::U32PrintImpl::print"(%arg1) : (i32) -> !llvm.struct<()>
    llvm.store %0, %arg0 : !llvm.struct<()>, !llvm.ptr
    llvm.return
  }
  llvm.func @realloc(!llvm.ptr, i64) -> !llvm.ptr attributes {sym_visibility = "private"}
  llvm.func @cairo_native__libfunc__debug__print(i32, !llvm.ptr<i252>, i32) -> i32 attributes {sym_visibility = "private"}
  llvm.func @"core::debug::print_felt252"(%arg0: i252) -> !llvm.struct<()> attributes {llvm.emit_c_interface, sym_visibility = "public"} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(256 : i64) : i64
    %2 = llvm.mlir.null : !llvm.ptr<i252>
    %3 = llvm.bitcast %2 : !llvm.ptr<i252> to !llvm.ptr
    %4 = llvm.call @realloc(%3, %1) : (!llvm.ptr, i64) -> !llvm.ptr
    %5 = llvm.bitcast %4 : !llvm.ptr to !llvm.ptr<i252>
    %6 = llvm.getelementptr %5[0] : (!llvm.ptr<i252>) -> !llvm.ptr, i252
    llvm.store %arg0, %6 : i252, !llvm.ptr
    %7 = llvm.call @cairo_native__libfunc__debug__print(%0, %5, %0) : (i32, !llvm.ptr<i252>, i32) -> i32
    %8 = llvm.mlir.undef : !llvm.struct<()>
    llvm.return %8 : !llvm.struct<()>
  }
  llvm.func @"_mlir_ciface_core::debug::print_felt252"(%arg0: !llvm.ptr, %arg1: i252) attributes {llvm.emit_c_interface, sym_visibility = "public"} {
    %0 = llvm.call @"core::debug::print_felt252"(%arg1) : (i252) -> !llvm.struct<()>
    llvm.store %0, %arg0 : !llvm.struct<()>, !llvm.ptr
    llvm.return
  }
}

