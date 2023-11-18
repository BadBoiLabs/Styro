module attributes {llvm.data_layout = ""} {
  llvm.mlir.global private constant @assert_msg_2(dense<[73, 110, 118, 97, 108, 105, 100, 32, 101, 110, 117, 109, 32, 116, 97, 103, 46, 0]> : tensor<18xi8>) {addr_space = 0 : i32} : !llvm.array<18 x i8>
  llvm.mlir.global private constant @assert_msg_1(dense<[73, 110, 118, 97, 108, 105, 100, 32, 101, 110, 117, 109, 32, 116, 97, 103, 46, 0]> : tensor<18xi8>) {addr_space = 0 : i32} : !llvm.array<18 x i8>
  llvm.func @abort()
  llvm.func @puts(!llvm.ptr)
  llvm.mlir.global private constant @assert_msg_0(dense<[73, 110, 118, 97, 108, 105, 100, 32, 101, 110, 117, 109, 32, 116, 97, 103, 46, 0]> : tensor<18xi8>) {addr_space = 0 : i32} : !llvm.array<18 x i8>
  llvm.func @"ops::ops::user_entrypoint"(%arg0: !llvm.array<0 x i8>, %arg1: i32) -> !llvm.struct<(array<0 x i8>, struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>)> attributes {llvm.emit_c_interface, sym_visibility = "public"} {
    %0 = llvm.mlir.constant(true) : i1
    %1 = llvm.mlir.constant(false) : i1
    %2 = llvm.mlir.constant(4 : i32) : i32
    %3 = llvm.mlir.constant(2 : i32) : i32
    %4 = llvm.mlir.constant(1 : i64) : i64
    %5 = llvm.alloca %4 x !llvm.struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)> {alignment = 8 : i64} : (i64) -> !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>>
    %6 = llvm.alloca %4 x !llvm.struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)> {alignment = 8 : i64} : (i64) -> !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>>
    %7 = llvm.alloca %4 x !llvm.struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)> {alignment = 8 : i64} : (i64) -> !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>>
    %8 = llvm.call @"core::integer::U32Add::add"(%arg0, %3, %2) : (!llvm.array<0 x i8>, i32, i32) -> !llvm.struct<(array<0 x i8>, struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>)>
    %9 = llvm.extractvalue %8[0] : !llvm.struct<(array<0 x i8>, struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>)> 
    %10 = llvm.extractvalue %8[1] : !llvm.struct<(array<0 x i8>, struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>)> 
    llvm.store %10, %5 {alignment = 8 : i64} : !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>>
    %11 = llvm.extractvalue %10[0] : !llvm.struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)> 
    llvm.switch %11 : i1, ^bb1 [
      0: ^bb3,
      1: ^bb4
    ]
  ^bb1:  // pred: ^bb0
    llvm.cond_br %1, ^bb2, ^bb5
  ^bb2:  // pred: ^bb1
    llvm.unreachable
  ^bb3:  // pred: ^bb0
    %12 = llvm.bitcast %5 : !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>> to !llvm.ptr<struct<(i1, array<3 x i8>, struct<(i32)>)>>
    %13 = llvm.load %12 : !llvm.ptr<struct<(i1, array<3 x i8>, struct<(i32)>)>>
    %14 = llvm.extractvalue %13[2] : !llvm.struct<(i1, array<3 x i8>, struct<(i32)>)> 
    %15 = llvm.extractvalue %14[0] : !llvm.struct<(i32)> 
    %16 = llvm.mlir.undef : !llvm.struct<(i32)>
    %17 = llvm.insertvalue %15, %16[0] : !llvm.struct<(i32)> 
    %18 = llvm.mlir.undef : !llvm.struct<(i1, array<3 x i8>, struct<(i32)>)>
    %19 = llvm.insertvalue %1, %18[0] : !llvm.struct<(i1, array<3 x i8>, struct<(i32)>)> 
    %20 = llvm.insertvalue %17, %19[2] : !llvm.struct<(i1, array<3 x i8>, struct<(i32)>)> 
    %21 = llvm.bitcast %7 : !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>> to !llvm.ptr<struct<(i1, array<3 x i8>, struct<(i32)>)>>
    llvm.store %20, %21 {alignment = 8 : i64} : !llvm.ptr<struct<(i1, array<3 x i8>, struct<(i32)>)>>
    %22 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>>
    %23 = llvm.mlir.undef : !llvm.struct<(array<0 x i8>, struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>)>
    %24 = llvm.insertvalue %9, %23[0] : !llvm.struct<(array<0 x i8>, struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>)> 
    %25 = llvm.insertvalue %22, %24[1] : !llvm.struct<(array<0 x i8>, struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>)> 
    llvm.return %25 : !llvm.struct<(array<0 x i8>, struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>)>
  ^bb4:  // pred: ^bb0
    %26 = llvm.bitcast %5 : !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>> to !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>)>>
    %27 = llvm.load %26 : !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>)>>
    %28 = llvm.extractvalue %27[2] : !llvm.struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>)> 
    %29 = llvm.mlir.undef : !llvm.struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>)>
    %30 = llvm.insertvalue %0, %29[0] : !llvm.struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>)> 
    %31 = llvm.insertvalue %28, %30[2] : !llvm.struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>)> 
    %32 = llvm.bitcast %6 : !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>> to !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>)>>
    llvm.store %31, %32 {alignment = 8 : i64} : !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>)>>
    %33 = llvm.load %6 {alignment = 8 : i64} : !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>>
    %34 = llvm.mlir.undef : !llvm.struct<(array<0 x i8>, struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>)>
    %35 = llvm.insertvalue %9, %34[0] : !llvm.struct<(array<0 x i8>, struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>)> 
    %36 = llvm.insertvalue %33, %35[1] : !llvm.struct<(array<0 x i8>, struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>)> 
    llvm.return %36 : !llvm.struct<(array<0 x i8>, struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>)>
  ^bb5:  // pred: ^bb1
    %37 = llvm.mlir.addressof @assert_msg_0 : !llvm.ptr
    llvm.call @puts(%37) : (!llvm.ptr) -> ()
    llvm.call @abort() : () -> ()
    llvm.unreachable
  }
  llvm.func @"_mlir_ciface_ops::ops::user_entrypoint"(%arg0: !llvm.ptr, %arg1: !llvm.array<0 x i8>, %arg2: i32) attributes {llvm.emit_c_interface, sym_visibility = "public"} {
    %0 = llvm.call @"ops::ops::user_entrypoint"(%arg1, %arg2) : (!llvm.array<0 x i8>, i32) -> !llvm.struct<(array<0 x i8>, struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>)>
    llvm.store %0, %arg0 : !llvm.struct<(array<0 x i8>, struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>)>, !llvm.ptr
    llvm.return
  }
  llvm.func @"core::integer::U32Add::add"(%arg0: !llvm.array<0 x i8>, %arg1: i32, %arg2: i32) -> !llvm.struct<(array<0 x i8>, struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>)> attributes {llvm.emit_c_interface, sym_visibility = "public"} {
    %0 = llvm.mlir.constant(155785504323917466144735657540098748279 : i252) : i252
    %1 = llvm.mlir.constant(true) : i1
    %2 = llvm.mlir.constant(false) : i1
    %3 = llvm.mlir.constant(1 : i64) : i64
    %4 = llvm.alloca %3 x !llvm.struct<(i1, array<3 x i8>, i32, array<0 x i8>)> {alignment = 4 : i64} : (i64) -> !llvm.ptr<struct<(i1, array<3 x i8>, i32, array<0 x i8>)>>
    %5 = llvm.alloca %3 x !llvm.struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)> {alignment = 8 : i64} : (i64) -> !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>>
    %6 = llvm.alloca %3 x !llvm.struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)> {alignment = 8 : i64} : (i64) -> !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>>
    %7 = llvm.alloca %3 x !llvm.struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)> {alignment = 8 : i64} : (i64) -> !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>>
    %8 = llvm.alloca %3 x !llvm.struct<(i1, array<3 x i8>, i32, array<0 x i8>)> {alignment = 4 : i64} : (i64) -> !llvm.ptr<struct<(i1, array<3 x i8>, i32, array<0 x i8>)>>
    %9 = "llvm.intr.uadd.with.overflow"(%arg1, %arg2) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %10 = llvm.extractvalue %9[0] : !llvm.struct<(i32, i1)> 
    %11 = llvm.extractvalue %9[1] : !llvm.struct<(i32, i1)> 
    %12 = llvm.select %11, %4, %8 : i1, !llvm.ptr<struct<(i1, array<3 x i8>, i32, array<0 x i8>)>>
    %13 = llvm.mlir.undef : !llvm.struct<(i1, array<3 x i8>, i32)>
    %14 = llvm.insertvalue %11, %13[0] : !llvm.struct<(i1, array<3 x i8>, i32)> 
    %15 = llvm.insertvalue %10, %14[2] : !llvm.struct<(i1, array<3 x i8>, i32)> 
    %16 = llvm.bitcast %12 : !llvm.ptr<struct<(i1, array<3 x i8>, i32, array<0 x i8>)>> to !llvm.ptr<struct<(i1, array<3 x i8>, i32)>>
    llvm.store %15, %16 {alignment = 4 : i64} : !llvm.ptr<struct<(i1, array<3 x i8>, i32)>>
    %17 = llvm.load %12 {alignment = 4 : i64} : !llvm.ptr<struct<(i1, array<3 x i8>, i32, array<0 x i8>)>>
    %18 = llvm.call @"core::result::ResultTraitImpl::<core::integer::u32, core::integer::u32>::expect::<core::integer::u32Drop>"(%17, %0) : (!llvm.struct<(i1, array<3 x i8>, i32, array<0 x i8>)>, i252) -> !llvm.struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>
    llvm.store %18, %5 {alignment = 8 : i64} : !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>>
    %19 = llvm.extractvalue %18[0] : !llvm.struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)> 
    llvm.switch %19 : i1, ^bb1 [
      0: ^bb3,
      1: ^bb4
    ]
  ^bb1:  // pred: ^bb0
    llvm.cond_br %2, ^bb2, ^bb5
  ^bb2:  // pred: ^bb1
    llvm.unreachable
  ^bb3:  // pred: ^bb0
    %20 = llvm.bitcast %5 : !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>> to !llvm.ptr<struct<(i1, array<3 x i8>, struct<(i32)>)>>
    %21 = llvm.load %20 : !llvm.ptr<struct<(i1, array<3 x i8>, struct<(i32)>)>>
    %22 = llvm.extractvalue %21[2] : !llvm.struct<(i1, array<3 x i8>, struct<(i32)>)> 
    %23 = llvm.extractvalue %22[0] : !llvm.struct<(i32)> 
    %24 = llvm.mlir.undef : !llvm.struct<(i32)>
    %25 = llvm.insertvalue %23, %24[0] : !llvm.struct<(i32)> 
    %26 = llvm.mlir.undef : !llvm.struct<(i1, array<3 x i8>, struct<(i32)>)>
    %27 = llvm.insertvalue %2, %26[0] : !llvm.struct<(i1, array<3 x i8>, struct<(i32)>)> 
    %28 = llvm.insertvalue %25, %27[2] : !llvm.struct<(i1, array<3 x i8>, struct<(i32)>)> 
    %29 = llvm.bitcast %7 : !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>> to !llvm.ptr<struct<(i1, array<3 x i8>, struct<(i32)>)>>
    llvm.store %28, %29 {alignment = 8 : i64} : !llvm.ptr<struct<(i1, array<3 x i8>, struct<(i32)>)>>
    %30 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>>
    %31 = llvm.mlir.undef : !llvm.struct<(array<0 x i8>, struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>)>
    %32 = llvm.insertvalue %arg0, %31[0] : !llvm.struct<(array<0 x i8>, struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>)> 
    %33 = llvm.insertvalue %30, %32[1] : !llvm.struct<(array<0 x i8>, struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>)> 
    llvm.return %33 : !llvm.struct<(array<0 x i8>, struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>)>
  ^bb4:  // pred: ^bb0
    %34 = llvm.bitcast %5 : !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>> to !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>)>>
    %35 = llvm.load %34 : !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>)>>
    %36 = llvm.extractvalue %35[2] : !llvm.struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>)> 
    %37 = llvm.mlir.undef : !llvm.struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>)>
    %38 = llvm.insertvalue %1, %37[0] : !llvm.struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>)> 
    %39 = llvm.insertvalue %36, %38[2] : !llvm.struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>)> 
    %40 = llvm.bitcast %6 : !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>> to !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>)>>
    llvm.store %39, %40 {alignment = 8 : i64} : !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>)>>
    %41 = llvm.load %6 {alignment = 8 : i64} : !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>>
    %42 = llvm.mlir.undef : !llvm.struct<(array<0 x i8>, struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>)>
    %43 = llvm.insertvalue %arg0, %42[0] : !llvm.struct<(array<0 x i8>, struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>)> 
    %44 = llvm.insertvalue %41, %43[1] : !llvm.struct<(array<0 x i8>, struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>)> 
    llvm.return %44 : !llvm.struct<(array<0 x i8>, struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>)>
  ^bb5:  // pred: ^bb1
    %45 = llvm.mlir.addressof @assert_msg_1 : !llvm.ptr
    llvm.call @puts(%45) : (!llvm.ptr) -> ()
    llvm.call @abort() : () -> ()
    llvm.unreachable
  }
  llvm.func @"_mlir_ciface_core::integer::U32Add::add"(%arg0: !llvm.ptr, %arg1: !llvm.array<0 x i8>, %arg2: i32, %arg3: i32) attributes {llvm.emit_c_interface, sym_visibility = "public"} {
    %0 = llvm.call @"core::integer::U32Add::add"(%arg1, %arg2, %arg3) : (!llvm.array<0 x i8>, i32, i32) -> !llvm.struct<(array<0 x i8>, struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>)>
    llvm.store %0, %arg0 : !llvm.struct<(array<0 x i8>, struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>)>, !llvm.ptr
    llvm.return
  }
  llvm.func @realloc(!llvm.ptr, i64) -> !llvm.ptr attributes {sym_visibility = "private"}
  llvm.func @"core::result::ResultTraitImpl::<core::integer::u32, core::integer::u32>::expect::<core::integer::u32Drop>"(%arg0: !llvm.struct<(i1, array<3 x i8>, i32, array<0 x i8>)>, %arg1: i252) -> !llvm.struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)> attributes {llvm.emit_c_interface, sym_visibility = "public"} {
    %0 = llvm.mlir.constant(256 : i64) : i64
    %1 = llvm.mlir.constant(true) : i1
    %2 = llvm.mlir.constant(1 : i32) : i32
    %3 = llvm.mlir.constant(8 : i32) : i32
    %4 = llvm.mlir.constant(0 : i32) : i32
    %5 = llvm.mlir.constant(false) : i1
    %6 = llvm.mlir.constant(1 : i64) : i64
    %7 = llvm.alloca %6 x !llvm.struct<(i1, array<3 x i8>, i32, array<0 x i8>)> {alignment = 4 : i64} : (i64) -> !llvm.ptr<struct<(i1, array<3 x i8>, i32, array<0 x i8>)>>
    %8 = llvm.alloca %6 x !llvm.struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)> {alignment = 8 : i64} : (i64) -> !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>>
    %9 = llvm.alloca %6 x !llvm.struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)> {alignment = 8 : i64} : (i64) -> !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>>
    llvm.store %arg0, %7 {alignment = 4 : i64} : !llvm.ptr<struct<(i1, array<3 x i8>, i32, array<0 x i8>)>>
    %10 = llvm.extractvalue %arg0[0] : !llvm.struct<(i1, array<3 x i8>, i32, array<0 x i8>)> 
    llvm.switch %10 : i1, ^bb1 [
      0: ^bb3,
      1: ^bb4
    ]
  ^bb1:  // pred: ^bb0
    llvm.cond_br %5, ^bb2, ^bb5
  ^bb2:  // pred: ^bb1
    llvm.unreachable
  ^bb3:  // pred: ^bb0
    %11 = llvm.bitcast %7 : !llvm.ptr<struct<(i1, array<3 x i8>, i32, array<0 x i8>)>> to !llvm.ptr<struct<(i1, array<3 x i8>, i32)>>
    %12 = llvm.load %11 : !llvm.ptr<struct<(i1, array<3 x i8>, i32)>>
    %13 = llvm.extractvalue %12[2] : !llvm.struct<(i1, array<3 x i8>, i32)> 
    %14 = llvm.mlir.undef : !llvm.struct<(i32)>
    %15 = llvm.insertvalue %13, %14[0] : !llvm.struct<(i32)> 
    %16 = llvm.mlir.undef : !llvm.struct<(i1, array<3 x i8>, struct<(i32)>)>
    %17 = llvm.insertvalue %5, %16[0] : !llvm.struct<(i1, array<3 x i8>, struct<(i32)>)> 
    %18 = llvm.insertvalue %15, %17[2] : !llvm.struct<(i1, array<3 x i8>, struct<(i32)>)> 
    %19 = llvm.bitcast %9 : !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>> to !llvm.ptr<struct<(i1, array<3 x i8>, struct<(i32)>)>>
    llvm.store %18, %19 {alignment = 8 : i64} : !llvm.ptr<struct<(i1, array<3 x i8>, struct<(i32)>)>>
    %20 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>>
    llvm.return %20 : !llvm.struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>
  ^bb4:  // pred: ^bb0
    %21 = llvm.mlir.null : !llvm.ptr<i252>
    %22 = llvm.mlir.undef : !llvm.struct<(ptr<i252>, i32, i32)>
    %23 = llvm.insertvalue %21, %22[0] : !llvm.struct<(ptr<i252>, i32, i32)> 
    %24 = llvm.insertvalue %4, %23[1] : !llvm.struct<(ptr<i252>, i32, i32)> 
    %25 = llvm.insertvalue %4, %24[2] : !llvm.struct<(ptr<i252>, i32, i32)> 
    %26 = llvm.bitcast %21 : !llvm.ptr<i252> to !llvm.ptr
    %27 = llvm.call @realloc(%26, %0) : (!llvm.ptr, i64) -> !llvm.ptr
    %28 = llvm.bitcast %27 : !llvm.ptr to !llvm.ptr<i252>
    %29 = llvm.insertvalue %28, %25[0] : !llvm.struct<(ptr<i252>, i32, i32)> 
    %30 = llvm.insertvalue %3, %29[2] : !llvm.struct<(ptr<i252>, i32, i32)> 
    %31 = llvm.getelementptr %28[0] : (!llvm.ptr<i252>) -> !llvm.ptr, i252
    llvm.store %arg1, %31 : i252, !llvm.ptr
    %32 = llvm.insertvalue %2, %30[1] : !llvm.struct<(ptr<i252>, i32, i32)> 
    %33 = llvm.mlir.undef : !llvm.struct<()>
    %34 = llvm.mlir.undef : !llvm.struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>
    %35 = llvm.insertvalue %33, %34[0] : !llvm.struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)> 
    %36 = llvm.insertvalue %32, %35[1] : !llvm.struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)> 
    %37 = llvm.mlir.undef : !llvm.struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>)>
    %38 = llvm.insertvalue %1, %37[0] : !llvm.struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>)> 
    %39 = llvm.insertvalue %36, %38[2] : !llvm.struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>)> 
    %40 = llvm.bitcast %8 : !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>> to !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>)>>
    llvm.store %39, %40 {alignment = 8 : i64} : !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>)>>
    %41 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr<struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>>
    llvm.return %41 : !llvm.struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>
  ^bb5:  // pred: ^bb1
    %42 = llvm.mlir.addressof @assert_msg_2 : !llvm.ptr
    llvm.call @puts(%42) : (!llvm.ptr) -> ()
    llvm.call @abort() : () -> ()
    llvm.unreachable
  }
  llvm.func @"_mlir_ciface_core::result::ResultTraitImpl::<core::integer::u32, core::integer::u32>::expect::<core::integer::u32Drop>"(%arg0: !llvm.ptr, %arg1: !llvm.struct<(i1, array<3 x i8>, i32, array<0 x i8>)>, %arg2: i252) attributes {llvm.emit_c_interface, sym_visibility = "public"} {
    %0 = llvm.call @"core::result::ResultTraitImpl::<core::integer::u32, core::integer::u32>::expect::<core::integer::u32Drop>"(%arg1, %arg2) : (!llvm.struct<(i1, array<3 x i8>, i32, array<0 x i8>)>, i252) -> !llvm.struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>
    llvm.store %0, %arg0 : !llvm.struct<(i1, array<7 x i8>, struct<(struct<()>, struct<(ptr<i252>, i32, i32)>)>, array<0 x i8>)>, !llvm.ptr
    llvm.return
  }
}

