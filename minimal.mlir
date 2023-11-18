module attributes {llvm.data_layout = ""} {
  llvm.func @"minimal::minimal::user_entrypoint"(%arg0: i32) -> i32 attributes {llvm.emit_c_interface, sym_visibility = "public"} {
    %0 = llvm.mlir.constant(0 : i32) : i32
    llvm.return %0 : i32
  }
  llvm.func @"_mlir_ciface_minimal::minimal::user_entrypoint"(%arg0: i32) -> i32 attributes {llvm.emit_c_interface, sym_visibility = "public"} {
    %0 = llvm.call @"minimal::minimal::user_entrypoint"(%arg0) : (i32) -> i32
    llvm.return %0 : i32
  }
}

