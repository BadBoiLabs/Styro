; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

@assert_msg_2 = private constant [18 x i8] c"Invalid enum tag.\00"
@assert_msg_1 = private constant [18 x i8] c"Invalid enum tag.\00"
@assert_msg_0 = private constant [18 x i8] c"Invalid enum tag.\00"

declare ptr @malloc(i64)

declare void @free(ptr)

declare void @abort()

declare void @puts(ptr)

define { [0 x i8], { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } } @"ops::ops::user_entrypoint"([0 x i8] %0, i32 %1) {
  %3 = alloca { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] }, i64 1, align 8
  %4 = alloca { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] }, i64 1, align 8
  %5 = alloca { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] }, i64 1, align 8
  %6 = call { [0 x i8], { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } } @"core::integer::U32Add::add"([0 x i8] %0, i32 2, i32 4)
  %7 = extractvalue { [0 x i8], { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } } %6, 0
  %8 = extractvalue { [0 x i8], { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } } %6, 1
  store { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } %8, ptr %3, align 8
  %9 = extractvalue { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } %8, 0
  switch i1 %9, label %10 [
    i1 false, label %12
    i1 true, label %21
  ]

10:                                               ; preds = %2
  br i1 false, label %11, label %28

11:                                               ; preds = %10
  unreachable

12:                                               ; preds = %2
  %13 = load { i1, [3 x i8], { i32 } }, ptr %3, align 4
  %14 = extractvalue { i1, [3 x i8], { i32 } } %13, 2
  %15 = extractvalue { i32 } %14, 0
  %16 = insertvalue { i32 } undef, i32 %15, 0
  %17 = insertvalue { i1, [3 x i8], { i32 } } { i1 false, [3 x i8] undef, { i32 } undef }, { i32 } %16, 2
  store { i1, [3 x i8], { i32 } } %17, ptr %5, align 8
  %18 = load { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] }, ptr %5, align 8
  %19 = insertvalue { [0 x i8], { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } } undef, [0 x i8] %7, 0
  %20 = insertvalue { [0 x i8], { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } } %19, { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } %18, 1
  ret { [0 x i8], { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } } %20

21:                                               ; preds = %2
  %22 = load { i1, [7 x i8], { {}, { ptr, i32, i32 } } }, ptr %3, align 8
  %23 = extractvalue { i1, [7 x i8], { {}, { ptr, i32, i32 } } } %22, 2
  %24 = insertvalue { i1, [7 x i8], { {}, { ptr, i32, i32 } } } { i1 true, [7 x i8] undef, { {}, { ptr, i32, i32 } } undef }, { {}, { ptr, i32, i32 } } %23, 2
  store { i1, [7 x i8], { {}, { ptr, i32, i32 } } } %24, ptr %4, align 8
  %25 = load { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] }, ptr %4, align 8
  %26 = insertvalue { [0 x i8], { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } } undef, [0 x i8] %7, 0
  %27 = insertvalue { [0 x i8], { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } } %26, { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } %25, 1
  ret { [0 x i8], { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } } %27

28:                                               ; preds = %10
  call void @puts(ptr @assert_msg_0)
  call void @abort()
  unreachable
}

define void @"_mlir_ciface_ops::ops::user_entrypoint"(ptr %0, [0 x i8] %1, i32 %2) {
  %4 = call { [0 x i8], { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } } @"ops::ops::user_entrypoint"([0 x i8] %1, i32 %2)
  store { [0 x i8], { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } } %4, ptr %0, align 8
  ret void
}

define { [0 x i8], { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } } @"core::integer::U32Add::add"([0 x i8] %0, i32 %1, i32 %2) {
  %4 = alloca { i1, [3 x i8], i32, [0 x i8] }, i64 1, align 4
  %5 = alloca { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] }, i64 1, align 8
  %6 = alloca { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] }, i64 1, align 8
  %7 = alloca { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] }, i64 1, align 8
  %8 = alloca { i1, [3 x i8], i32, [0 x i8] }, i64 1, align 4
  %9 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1, i32 %2)
  %10 = extractvalue { i32, i1 } %9, 0
  %11 = extractvalue { i32, i1 } %9, 1
  %12 = select i1 %11, ptr %4, ptr %8
  %13 = insertvalue { i1, [3 x i8], i32 } undef, i1 %11, 0
  %14 = insertvalue { i1, [3 x i8], i32 } %13, i32 %10, 2
  store { i1, [3 x i8], i32 } %14, ptr %12, align 4
  %15 = load { i1, [3 x i8], i32, [0 x i8] }, ptr %12, align 4
  %16 = call { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } @"core::result::ResultTraitImpl::<core::integer::u32, core::integer::u32>::expect::<core::integer::u32Drop>"({ i1, [3 x i8], i32, [0 x i8] } %15, i252 155785504323917466144735657540098748279)
  store { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } %16, ptr %5, align 8
  %17 = extractvalue { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } %16, 0
  switch i1 %17, label %18 [
    i1 false, label %20
    i1 true, label %29
  ]

18:                                               ; preds = %3
  br i1 false, label %19, label %36

19:                                               ; preds = %18
  unreachable

20:                                               ; preds = %3
  %21 = load { i1, [3 x i8], { i32 } }, ptr %5, align 4
  %22 = extractvalue { i1, [3 x i8], { i32 } } %21, 2
  %23 = extractvalue { i32 } %22, 0
  %24 = insertvalue { i32 } undef, i32 %23, 0
  %25 = insertvalue { i1, [3 x i8], { i32 } } { i1 false, [3 x i8] undef, { i32 } undef }, { i32 } %24, 2
  store { i1, [3 x i8], { i32 } } %25, ptr %7, align 8
  %26 = load { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] }, ptr %7, align 8
  %27 = insertvalue { [0 x i8], { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } } undef, [0 x i8] %0, 0
  %28 = insertvalue { [0 x i8], { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } } %27, { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } %26, 1
  ret { [0 x i8], { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } } %28

29:                                               ; preds = %3
  %30 = load { i1, [7 x i8], { {}, { ptr, i32, i32 } } }, ptr %5, align 8
  %31 = extractvalue { i1, [7 x i8], { {}, { ptr, i32, i32 } } } %30, 2
  %32 = insertvalue { i1, [7 x i8], { {}, { ptr, i32, i32 } } } { i1 true, [7 x i8] undef, { {}, { ptr, i32, i32 } } undef }, { {}, { ptr, i32, i32 } } %31, 2
  store { i1, [7 x i8], { {}, { ptr, i32, i32 } } } %32, ptr %6, align 8
  %33 = load { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] }, ptr %6, align 8
  %34 = insertvalue { [0 x i8], { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } } undef, [0 x i8] %0, 0
  %35 = insertvalue { [0 x i8], { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } } %34, { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } %33, 1
  ret { [0 x i8], { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } } %35

36:                                               ; preds = %18
  call void @puts(ptr @assert_msg_1)
  call void @abort()
  unreachable
}

define void @"_mlir_ciface_core::integer::U32Add::add"(ptr %0, [0 x i8] %1, i32 %2, i32 %3) {
  %5 = call { [0 x i8], { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } } @"core::integer::U32Add::add"([0 x i8] %1, i32 %2, i32 %3)
  store { [0 x i8], { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } } %5, ptr %0, align 8
  ret void
}

declare ptr @realloc(ptr, i64)

define { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } @"core::result::ResultTraitImpl::<core::integer::u32, core::integer::u32>::expect::<core::integer::u32Drop>"({ i1, [3 x i8], i32, [0 x i8] } %0, i252 %1) {
  %3 = alloca { i1, [3 x i8], i32, [0 x i8] }, i64 1, align 4
  %4 = alloca { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] }, i64 1, align 8
  %5 = alloca { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] }, i64 1, align 8
  store { i1, [3 x i8], i32, [0 x i8] } %0, ptr %3, align 4
  %6 = extractvalue { i1, [3 x i8], i32, [0 x i8] } %0, 0
  switch i1 %6, label %7 [
    i1 false, label %9
    i1 true, label %15
  ]

7:                                                ; preds = %2
  br i1 false, label %8, label %24

8:                                                ; preds = %7
  unreachable

9:                                                ; preds = %2
  %10 = load { i1, [3 x i8], i32 }, ptr %3, align 4
  %11 = extractvalue { i1, [3 x i8], i32 } %10, 2
  %12 = insertvalue { i32 } undef, i32 %11, 0
  %13 = insertvalue { i1, [3 x i8], { i32 } } { i1 false, [3 x i8] undef, { i32 } undef }, { i32 } %12, 2
  store { i1, [3 x i8], { i32 } } %13, ptr %5, align 8
  %14 = load { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] }, ptr %5, align 8
  ret { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } %14

15:                                               ; preds = %2
  %16 = call ptr @realloc(ptr null, i64 256)
  %17 = insertvalue { ptr, i32, i32 } zeroinitializer, ptr %16, 0
  %18 = insertvalue { ptr, i32, i32 } %17, i32 8, 2
  %19 = getelementptr i252, ptr %16, i32 0
  store i252 %1, ptr %19, align 4
  %20 = insertvalue { ptr, i32, i32 } %18, i32 1, 1
  %21 = insertvalue { {}, { ptr, i32, i32 } } undef, { ptr, i32, i32 } %20, 1
  %22 = insertvalue { i1, [7 x i8], { {}, { ptr, i32, i32 } } } { i1 true, [7 x i8] undef, { {}, { ptr, i32, i32 } } undef }, { {}, { ptr, i32, i32 } } %21, 2
  store { i1, [7 x i8], { {}, { ptr, i32, i32 } } } %22, ptr %4, align 8
  %23 = load { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] }, ptr %4, align 8
  ret { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } %23

24:                                               ; preds = %7
  call void @puts(ptr @assert_msg_2)
  call void @abort()
  unreachable
}

define void @"_mlir_ciface_core::result::ResultTraitImpl::<core::integer::u32, core::integer::u32>::expect::<core::integer::u32Drop>"(ptr %0, { i1, [3 x i8], i32, [0 x i8] } %1, i252 %2) {
  %4 = call { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } @"core::result::ResultTraitImpl::<core::integer::u32, core::integer::u32>::expect::<core::integer::u32Drop>"({ i1, [3 x i8], i32, [0 x i8] } %1, i252 %2)
  store { i1, [7 x i8], { {}, { ptr, i32, i32 } }, [0 x i8] } %4, ptr %0, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
