(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func (param i32 i32)))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func (param i64 i64 i64 i64)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32 i64) (result i32)))
  (import "vm_hooks" "memory_grow" (func $libstyro::stylus::memory_grow::hd6a179970060eb2e (type 0)))
  (import "console" "log_txt" (func $libstyro::stylus::log_txt::h8f8538d394745ef4 (type 1)))
  (func $user_entrypoint (type 2) (param i32) (result i32)
    (local i64 i64 i32)
    i64.const 0
    local.set 1
    i64.const 310939249775
    local.set 2
    local.get 2
    local.get 1
    local.get 1
    local.get 1
    call $core::debug::Felt252PrintImpl::print
    local.get 0
    call $core::debug::U32PrintImpl::print
    i32.const 0
    local.set 3
    local.get 3
    return)
  (func $core::debug::Felt252PrintImpl::print (type 3) (param i64 i64 i64 i64)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $core::debug::print_felt252
    return)
  (func $core::debug::U32PrintImpl::print (type 0) (param i32)
    (local i64 i64)
    local.get 0
    i64.extend_i32_u
    local.set 1
    i64.const 0
    local.set 2
    local.get 1
    local.get 2
    local.get 2
    local.get 2
    call $core::debug::Felt252PrintImpl::print
    return)
  (func $core::debug::print_felt252 (type 3) (param i64 i64 i64 i64)
    (local i64 i32 i32 i32 i32 i64 i64 i32)
    i64.const 256
    local.set 4
    i32.const 0
    local.set 5
    local.get 5
    local.get 4
    call $realloc
    local.set 6
    local.get 6
    local.get 1
    i64.store offset=8 align=4
    local.get 6
    local.get 0
    i64.store align=4
    local.get 6
    local.get 2
    i64.store offset=16 align=4
    i32.const 24
    local.set 7
    local.get 6
    local.get 7
    i32.add
    local.set 8
    i64.const 1152921504606846975
    local.set 9
    local.get 3
    local.get 9
    i64.and
    local.set 10
    local.get 8
    local.get 10
    i64.store align=4
    i32.const 1
    local.set 11
    local.get 11
    local.get 6
    local.get 11
    call $cairo_native__libfunc__debug__print
    drop
    return)
  (func $core::str::_$LT$impl$u20$str$GT$::len::h874a000faa572646 (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    local.get 0
    i32.store offset=8
    local.get 4
    local.get 1
    i32.store offset=12
    local.get 1
    return)
  (func $call_memory_grow (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store16 offset=14
    i32.const 65535
    local.set 4
    local.get 0
    local.get 4
    i32.and
    local.set 5
    local.get 5
    call $libstyro::stylus::memory_grow::hd6a179970060eb2e
    i32.const 16
    local.set 6
    local.get 3
    local.get 6
    i32.add
    local.set 7
    local.get 7
    global.set $__stack_pointer
    return)
  (func $cairo_native__libfunc__debug__print (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 32
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    i32.const 1024
    local.set 6
    local.get 5
    local.get 6
    i32.store offset=4
    i32.const 14
    local.set 7
    local.get 5
    local.get 7
    i32.store offset=8
    local.get 5
    local.get 0
    i32.store offset=12
    local.get 5
    local.get 1
    i32.store offset=16
    local.get 5
    local.get 2
    i32.store offset=20
    i32.const 1024
    local.set 8
    local.get 5
    local.get 8
    i32.store offset=24
    i32.const 14
    local.set 9
    local.get 5
    local.get 9
    i32.store offset=28
    i32.const 1024
    local.set 10
    i32.const 14
    local.set 11
    local.get 10
    local.get 11
    call $core::str::_$LT$impl$u20$str$GT$::len::h874a000faa572646
    local.set 12
    i32.const 1024
    local.set 13
    local.get 13
    local.get 12
    call $libstyro::stylus::log_txt::h8f8538d394745ef4
    i32.const 0
    local.set 14
    i32.const 32
    local.set 15
    local.get 5
    local.get 15
    i32.add
    local.set 16
    local.get 16
    global.set $__stack_pointer
    local.get 14
    return)
  (func $realloc (type 6) (param i32 i64) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    local.get 0
    i32.store offset=4
    local.get 4
    local.get 1
    i64.store offset=8
    i32.const 0
    local.set 5
    local.get 5
    return)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 66576))
  (export "memory" (memory 0))
  (export "user_entrypoint" (func $user_entrypoint))
  (export "call_memory_grow" (func $call_memory_grow))
  (data $.rodata (i32.const 1024) "Hello, world!\0a"))
