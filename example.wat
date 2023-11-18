(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32) (result i32)))
  (import "vm_hooks" "memory_grow" (func (;0;) (type 0)))
  (func (;1;) (type 1)
    i32.const 0
    call 0
    loop  ;; label = @1
      unreachable
      br 0 (;@1;)
    end)
  (func (;2;) (type 2) (param i32) (result i32)
    i32.const 0)
  (memory (;0;) 16)
  (global (;0;) (mut i32) (i32.const 1048576))
  (export "memory" (memory 0))
  (export "mark_unused" (func 1))
  (export "user_entrypoint" (func 2)))
