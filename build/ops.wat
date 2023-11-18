(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32 i32 i32)))
  (type (;4;) (func (param i32 i32 i32 i32 i32 i32 i64 i64 i64 i64)))
  (type (;5;) (func (param i32 i64) (result i32)))
  (import "env" "puts" (func $puts (type 0)))
  (import "env" "abort" (func $abort (type 1)))
  (import "vm_hooks" "memory_grow" (func $libstyro::stylus::memory_grow::h74ae98ccf3617dd5 (type 0)))
  (func $user_entrypoint (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 96
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    i32.const 4
    local.set 5
    i32.const 2
    local.set 6
    local.get 4
    local.get 6
    local.get 5
    call $core::integer::U32Add::add
    local.get 4
    i32.load8_u
    local.set 7
    local.get 4
    i32.load8_u offset=1
    local.set 8
    local.get 4
    i32.load8_u offset=2
    local.set 9
    local.get 4
    i32.load8_u offset=3
    local.set 10
    local.get 4
    i32.load8_u offset=4
    local.set 11
    local.get 4
    i32.load8_u offset=5
    local.set 12
    local.get 4
    i32.load8_u offset=6
    local.set 13
    local.get 4
    i32.load8_u offset=7
    local.set 14
    local.get 4
    i32.load offset=8
    local.set 15
    local.get 4
    i32.load offset=12
    local.set 16
    local.get 4
    i32.load offset=16
    local.set 17
    local.get 4
    local.get 17
    i32.store offset=88
    local.get 4
    local.get 16
    i32.store offset=84
    local.get 4
    local.get 15
    i32.store offset=80
    local.get 4
    local.get 14
    i32.store8 offset=79
    local.get 4
    local.get 13
    i32.store8 offset=78
    local.get 4
    local.get 12
    i32.store8 offset=77
    local.get 4
    local.get 11
    i32.store8 offset=76
    local.get 4
    local.get 10
    i32.store8 offset=75
    local.get 4
    local.get 9
    i32.store8 offset=74
    local.get 4
    local.get 8
    i32.store8 offset=73
    i32.const 1
    local.set 18
    local.get 7
    local.get 18
    i32.and
    local.set 19
    local.get 4
    local.get 19
    i32.store8 offset=72
    local.get 7
    local.get 18
    i32.add
    local.set 20
    local.get 20
    local.get 18
    i32.and
    local.set 21
    i32.const 0
    local.set 22
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 22
            br_if 0 (;@4;)
            local.get 21
            br_table 2 (;@2;) 1 (;@3;) 2 (;@2;)
          end
          i32.const 0
          local.set 23
          i32.const 1
          local.set 24
          local.get 23
          local.get 24
          i32.and
          local.set 25
          local.get 25
          i32.eqz
          br_if 2 (;@1;)
          unreachable
        end
        local.get 4
        i32.load offset=76
        local.set 26
        local.get 4
        local.get 26
        i32.store offset=28
        i32.const 0
        local.set 27
        local.get 4
        local.get 27
        i32.store8 offset=24
        local.get 4
        i32.load8_u offset=24
        local.set 28
        local.get 4
        i32.load8_u offset=25
        local.set 29
        local.get 4
        i32.load8_u offset=26
        local.set 30
        local.get 4
        i32.load8_u offset=27
        local.set 31
        local.get 4
        i32.load8_u offset=28
        local.set 32
        local.get 4
        i32.load8_u offset=29
        local.set 33
        local.get 4
        i32.load8_u offset=30
        local.set 34
        local.get 4
        i32.load8_u offset=31
        local.set 35
        local.get 4
        i32.load offset=32
        local.set 36
        local.get 4
        i32.load offset=36
        local.set 37
        local.get 4
        i32.load offset=40
        local.set 38
        local.get 0
        local.get 38
        i32.store offset=16
        local.get 0
        local.get 37
        i32.store offset=12
        local.get 0
        local.get 36
        i32.store offset=8
        local.get 0
        local.get 35
        i32.store8 offset=7
        local.get 0
        local.get 34
        i32.store8 offset=6
        local.get 0
        local.get 33
        i32.store8 offset=5
        local.get 0
        local.get 32
        i32.store8 offset=4
        local.get 0
        local.get 31
        i32.store8 offset=3
        local.get 0
        local.get 30
        i32.store8 offset=2
        local.get 0
        local.get 29
        i32.store8 offset=1
        i32.const 1
        local.set 39
        local.get 28
        local.get 39
        i32.and
        local.set 40
        local.get 0
        local.get 40
        i32.store8
        i32.const 96
        local.set 41
        local.get 4
        local.get 41
        i32.add
        local.set 42
        local.get 42
        global.set $__stack_pointer
        return
      end
      local.get 4
      i32.load offset=80
      local.set 43
      local.get 4
      i32.load offset=84
      local.set 44
      local.get 4
      i32.load offset=88
      local.set 45
      local.get 4
      local.get 45
      i32.store offset=64
      local.get 4
      local.get 44
      i32.store offset=60
      local.get 4
      local.get 43
      i32.store offset=56
      i32.const 1
      local.set 46
      local.get 4
      local.get 46
      i32.store8 offset=48
      local.get 4
      i32.load8_u offset=48
      local.set 47
      local.get 4
      i32.load8_u offset=49
      local.set 48
      local.get 4
      i32.load8_u offset=50
      local.set 49
      local.get 4
      i32.load8_u offset=51
      local.set 50
      local.get 4
      i32.load8_u offset=52
      local.set 51
      local.get 4
      i32.load8_u offset=53
      local.set 52
      local.get 4
      i32.load8_u offset=54
      local.set 53
      local.get 4
      i32.load8_u offset=55
      local.set 54
      local.get 4
      i32.load offset=56
      local.set 55
      local.get 4
      i32.load offset=60
      local.set 56
      local.get 4
      i32.load offset=64
      local.set 57
      local.get 0
      local.get 57
      i32.store offset=16
      local.get 0
      local.get 56
      i32.store offset=12
      local.get 0
      local.get 55
      i32.store offset=8
      local.get 0
      local.get 54
      i32.store8 offset=7
      local.get 0
      local.get 53
      i32.store8 offset=6
      local.get 0
      local.get 52
      i32.store8 offset=5
      local.get 0
      local.get 51
      i32.store8 offset=4
      local.get 0
      local.get 50
      i32.store8 offset=3
      local.get 0
      local.get 49
      i32.store8 offset=2
      local.get 0
      local.get 48
      i32.store8 offset=1
      local.get 47
      local.get 46
      i32.and
      local.set 58
      local.get 0
      local.get 58
      i32.store8
      i32.const 96
      local.set 59
      local.get 4
      local.get 59
      i32.add
      local.set 60
      local.get 60
      global.set $__stack_pointer
      return
    end
    i32.const 1088
    local.set 61
    local.get 61
    call $puts
    call $abort
    unreachable)
  (func $core::integer::U32Add::add (type 3) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 112
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 1
    local.get 2
    i32.add
    local.set 6
    local.get 6
    local.get 1
    i32.lt_u
    local.set 7
    i32.const 104
    local.set 8
    local.get 5
    local.get 8
    i32.add
    local.set 9
    i32.const 24
    local.set 10
    local.get 5
    local.get 10
    i32.add
    local.set 11
    local.get 9
    local.get 11
    local.get 7
    select
    local.set 12
    local.get 12
    local.get 6
    i32.store offset=4
    local.get 12
    local.get 7
    i32.store8
    local.get 12
    i32.load offset=4
    local.set 13
    local.get 12
    i32.load8_u
    local.set 14
    local.get 12
    i32.load8_u offset=3
    local.set 15
    local.get 12
    i32.load8_u offset=2
    local.set 16
    local.get 12
    i32.load8_u offset=1
    local.set 17
    i64.const 0
    local.set 18
    i64.const 8445149111487063072
    local.set 19
    i64.const 5725875518267223927
    local.set 20
    local.get 5
    local.get 14
    local.get 17
    local.get 16
    local.get 15
    local.get 13
    local.get 20
    local.get 19
    local.get 18
    local.get 18
    call $core::result::ResultTraitImpl::<core::integer::u32__core::integer::u32>::expect::<core::integer::u32Drop>
    local.get 5
    i32.load8_u
    local.set 21
    local.get 5
    i32.load8_u offset=1
    local.set 22
    local.get 5
    i32.load8_u offset=2
    local.set 23
    local.get 5
    i32.load8_u offset=3
    local.set 24
    local.get 5
    i32.load8_u offset=4
    local.set 25
    local.get 5
    i32.load8_u offset=5
    local.set 26
    local.get 5
    i32.load8_u offset=6
    local.set 27
    local.get 5
    i32.load8_u offset=7
    local.set 28
    local.get 5
    i32.load offset=8
    local.set 29
    local.get 5
    i32.load offset=12
    local.set 30
    local.get 5
    i32.load offset=16
    local.set 31
    local.get 5
    local.get 31
    i32.store offset=96
    local.get 5
    local.get 30
    i32.store offset=92
    local.get 5
    local.get 29
    i32.store offset=88
    local.get 5
    local.get 28
    i32.store8 offset=87
    local.get 5
    local.get 27
    i32.store8 offset=86
    local.get 5
    local.get 26
    i32.store8 offset=85
    local.get 5
    local.get 25
    i32.store8 offset=84
    local.get 5
    local.get 24
    i32.store8 offset=83
    local.get 5
    local.get 23
    i32.store8 offset=82
    local.get 5
    local.get 22
    i32.store8 offset=81
    i32.const 1
    local.set 32
    local.get 21
    local.get 32
    i32.and
    local.set 33
    local.get 5
    local.get 33
    i32.store8 offset=80
    local.get 21
    local.get 32
    i32.add
    local.set 34
    local.get 34
    local.get 32
    i32.and
    local.set 35
    i32.const 0
    local.set 36
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 36
            br_if 0 (;@4;)
            local.get 35
            br_table 2 (;@2;) 1 (;@3;) 2 (;@2;)
          end
          i32.const 0
          local.set 37
          i32.const 1
          local.set 38
          local.get 37
          local.get 38
          i32.and
          local.set 39
          local.get 39
          i32.eqz
          br_if 2 (;@1;)
          unreachable
        end
        local.get 5
        i32.load offset=84
        local.set 40
        local.get 5
        local.get 40
        i32.store offset=36
        i32.const 0
        local.set 41
        local.get 5
        local.get 41
        i32.store8 offset=32
        local.get 5
        i32.load8_u offset=32
        local.set 42
        local.get 5
        i32.load8_u offset=33
        local.set 43
        local.get 5
        i32.load8_u offset=34
        local.set 44
        local.get 5
        i32.load8_u offset=35
        local.set 45
        local.get 5
        i32.load8_u offset=36
        local.set 46
        local.get 5
        i32.load8_u offset=37
        local.set 47
        local.get 5
        i32.load8_u offset=38
        local.set 48
        local.get 5
        i32.load8_u offset=39
        local.set 49
        local.get 5
        i32.load offset=40
        local.set 50
        local.get 5
        i32.load offset=44
        local.set 51
        local.get 5
        i32.load offset=48
        local.set 52
        local.get 0
        local.get 52
        i32.store offset=16
        local.get 0
        local.get 51
        i32.store offset=12
        local.get 0
        local.get 50
        i32.store offset=8
        local.get 0
        local.get 49
        i32.store8 offset=7
        local.get 0
        local.get 48
        i32.store8 offset=6
        local.get 0
        local.get 47
        i32.store8 offset=5
        local.get 0
        local.get 46
        i32.store8 offset=4
        local.get 0
        local.get 45
        i32.store8 offset=3
        local.get 0
        local.get 44
        i32.store8 offset=2
        local.get 0
        local.get 43
        i32.store8 offset=1
        i32.const 1
        local.set 53
        local.get 42
        local.get 53
        i32.and
        local.set 54
        local.get 0
        local.get 54
        i32.store8
        i32.const 112
        local.set 55
        local.get 5
        local.get 55
        i32.add
        local.set 56
        local.get 56
        global.set $__stack_pointer
        return
      end
      local.get 5
      i32.load offset=88
      local.set 57
      local.get 5
      i32.load offset=92
      local.set 58
      local.get 5
      i32.load offset=96
      local.set 59
      local.get 5
      local.get 59
      i32.store offset=72
      local.get 5
      local.get 58
      i32.store offset=68
      local.get 5
      local.get 57
      i32.store offset=64
      i32.const 1
      local.set 60
      local.get 5
      local.get 60
      i32.store8 offset=56
      local.get 5
      i32.load8_u offset=56
      local.set 61
      local.get 5
      i32.load8_u offset=57
      local.set 62
      local.get 5
      i32.load8_u offset=58
      local.set 63
      local.get 5
      i32.load8_u offset=59
      local.set 64
      local.get 5
      i32.load8_u offset=60
      local.set 65
      local.get 5
      i32.load8_u offset=61
      local.set 66
      local.get 5
      i32.load8_u offset=62
      local.set 67
      local.get 5
      i32.load8_u offset=63
      local.set 68
      local.get 5
      i32.load offset=64
      local.set 69
      local.get 5
      i32.load offset=68
      local.set 70
      local.get 5
      i32.load offset=72
      local.set 71
      local.get 0
      local.get 71
      i32.store offset=16
      local.get 0
      local.get 70
      i32.store offset=12
      local.get 0
      local.get 69
      i32.store offset=8
      local.get 0
      local.get 68
      i32.store8 offset=7
      local.get 0
      local.get 67
      i32.store8 offset=6
      local.get 0
      local.get 66
      i32.store8 offset=5
      local.get 0
      local.get 65
      i32.store8 offset=4
      local.get 0
      local.get 64
      i32.store8 offset=3
      local.get 0
      local.get 63
      i32.store8 offset=2
      local.get 0
      local.get 62
      i32.store8 offset=1
      local.get 61
      local.get 60
      i32.and
      local.set 72
      local.get 0
      local.get 72
      i32.store8
      i32.const 112
      local.set 73
      local.get 5
      local.get 73
      i32.add
      local.set 74
      local.get 74
      global.set $__stack_pointer
      return
    end
    i32.const 1056
    local.set 75
    local.get 75
    call $puts
    call $abort
    unreachable)
  (func $core::result::ResultTraitImpl::<core::integer::u32__core::integer::u32>::expect::<core::integer::u32Drop> (type 4) (param i32 i32 i32 i32 i32 i32 i64 i64 i64 i64)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 10
    i32.const 64
    local.set 11
    local.get 10
    local.get 11
    i32.sub
    local.set 12
    local.get 12
    global.set $__stack_pointer
    local.get 12
    local.get 2
    i32.store8 offset=57
    i32.const 1
    local.set 13
    local.get 1
    local.get 13
    i32.and
    local.set 14
    local.get 12
    local.get 14
    i32.store8 offset=56
    local.get 12
    local.get 3
    i32.store8 offset=58
    local.get 12
    local.get 4
    i32.store8 offset=59
    local.get 12
    local.get 5
    i32.store offset=60
    local.get 1
    local.get 13
    i32.add
    local.set 15
    local.get 15
    local.get 13
    i32.and
    local.set 16
    i32.const 0
    local.set 17
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 17
            br_if 0 (;@4;)
            local.get 16
            br_table 2 (;@2;) 1 (;@3;) 2 (;@2;)
          end
          i32.const 0
          local.set 18
          i32.const 1
          local.set 19
          local.get 18
          local.get 19
          i32.and
          local.set 20
          local.get 20
          i32.eqz
          br_if 2 (;@1;)
          unreachable
        end
        local.get 12
        i32.load offset=60
        local.set 21
        local.get 12
        local.get 21
        i32.store offset=12
        i32.const 0
        local.set 22
        local.get 12
        local.get 22
        i32.store8 offset=8
        local.get 12
        i32.load8_u offset=8
        local.set 23
        local.get 12
        i32.load8_u offset=9
        local.set 24
        local.get 12
        i32.load8_u offset=10
        local.set 25
        local.get 12
        i32.load8_u offset=11
        local.set 26
        local.get 12
        i32.load8_u offset=12
        local.set 27
        local.get 12
        i32.load8_u offset=13
        local.set 28
        local.get 12
        i32.load8_u offset=14
        local.set 29
        local.get 12
        i32.load8_u offset=15
        local.set 30
        local.get 12
        i32.load offset=16
        local.set 31
        local.get 12
        i32.load offset=20
        local.set 32
        local.get 12
        i32.load offset=24
        local.set 33
        local.get 0
        local.get 33
        i32.store offset=16
        local.get 0
        local.get 32
        i32.store offset=12
        local.get 0
        local.get 31
        i32.store offset=8
        local.get 0
        local.get 30
        i32.store8 offset=7
        local.get 0
        local.get 29
        i32.store8 offset=6
        local.get 0
        local.get 28
        i32.store8 offset=5
        local.get 0
        local.get 27
        i32.store8 offset=4
        local.get 0
        local.get 26
        i32.store8 offset=3
        local.get 0
        local.get 25
        i32.store8 offset=2
        local.get 0
        local.get 24
        i32.store8 offset=1
        i32.const 1
        local.set 34
        local.get 23
        local.get 34
        i32.and
        local.set 35
        local.get 0
        local.get 35
        i32.store8
        i32.const 64
        local.set 36
        local.get 12
        local.get 36
        i32.add
        local.set 37
        local.get 37
        global.set $__stack_pointer
        return
      end
      i64.const 256
      local.set 38
      i32.const 0
      local.set 39
      local.get 39
      local.get 38
      call $realloc
      local.set 40
      local.get 40
      local.get 7
      i64.store offset=8 align=4
      local.get 40
      local.get 6
      i64.store align=4
      local.get 40
      local.get 8
      i64.store offset=16 align=4
      i32.const 24
      local.set 41
      local.get 40
      local.get 41
      i32.add
      local.set 42
      i64.const 1152921504606846975
      local.set 43
      local.get 9
      local.get 43
      i64.and
      local.set 44
      local.get 42
      local.get 44
      i64.store align=4
      i32.const 8
      local.set 45
      local.get 12
      local.get 45
      i32.store offset=48
      i32.const 1
      local.set 46
      local.get 12
      local.get 46
      i32.store offset=44
      local.get 12
      local.get 40
      i32.store offset=40
      local.get 12
      local.get 46
      i32.store8 offset=32
      local.get 12
      i32.load8_u offset=32
      local.set 47
      local.get 12
      i32.load8_u offset=33
      local.set 48
      local.get 12
      i32.load8_u offset=34
      local.set 49
      local.get 12
      i32.load8_u offset=35
      local.set 50
      local.get 12
      i32.load8_u offset=36
      local.set 51
      local.get 12
      i32.load8_u offset=37
      local.set 52
      local.get 12
      i32.load8_u offset=38
      local.set 53
      local.get 12
      i32.load8_u offset=39
      local.set 54
      local.get 12
      i32.load offset=40
      local.set 55
      local.get 12
      i32.load offset=44
      local.set 56
      local.get 12
      i32.load offset=48
      local.set 57
      local.get 0
      local.get 57
      i32.store offset=16
      local.get 0
      local.get 56
      i32.store offset=12
      local.get 0
      local.get 55
      i32.store offset=8
      local.get 0
      local.get 54
      i32.store8 offset=7
      local.get 0
      local.get 53
      i32.store8 offset=6
      local.get 0
      local.get 52
      i32.store8 offset=5
      local.get 0
      local.get 51
      i32.store8 offset=4
      local.get 0
      local.get 50
      i32.store8 offset=3
      local.get 0
      local.get 49
      i32.store8 offset=2
      local.get 0
      local.get 48
      i32.store8 offset=1
      local.get 47
      local.get 46
      i32.and
      local.set 58
      local.get 0
      local.get 58
      i32.store8
      i32.const 64
      local.set 59
      local.get 12
      local.get 59
      i32.add
      local.set 60
      local.get 60
      global.set $__stack_pointer
      return
    end
    i32.const 1024
    local.set 61
    local.get 61
    call $puts
    call $abort
    unreachable)
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
    call $libstyro::stylus::memory_grow::h74ae98ccf3617dd5
    i32.const 16
    local.set 6
    local.get 3
    local.get 6
    i32.add
    local.set 7
    local.get 7
    global.set $__stack_pointer
    return)
  (func $realloc (type 5) (param i32 i64) (result i32)
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
  (global $__stack_pointer (mut i32) (i32.const 66656))
  (export "memory" (memory 0))
  (export "user_entrypoint" (func $user_entrypoint))
  (export "call_memory_grow" (func $call_memory_grow))
  (data $.rodata (i32.const 1024) "Invalid enum tag.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00Invalid enum tag.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00Invalid enum tag.\00"))