(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func (param i32) (result i32)))
  (import "vm_hooks" "memory_grow" (func $libstyro::stylus::memory_grow::hd6a179970060eb2e (type 0)))
  (func $user_entrypoint (type 1) (param i32) (result i32)
    (local i32)
    i32.const 0
    local.set 1
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
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 66560))
  (export "memory" (memory 0))
  (export "user_entrypoint" (func $user_entrypoint))
  (export "call_memory_grow" (func $call_memory_grow)))
