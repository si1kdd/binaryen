(module
 (type $ii (func (param i32 i32)))
 (type $1 (func))
 (type $2 (func (result i32)))
 (type $3 (func (param i32) (result i32)))
 (type $4 (func (param i64 i64) (result i64)))
 (global $x (mut i32) (i32.const 0))
 (table 1 1 anyfunc)
 (elem (i32.const 0) $call-me)
 (memory $0 10)
 (func $call-me (param $0 i32) (param $1 i32)
  (nop)
 )
 (func $code-to-kill
  (local $x i32)
  (block $out
   (br $out)
   (drop
    (i32.const 0)
   )
   (if
    (i32.const 1)
    (drop
     (i32.const 2)
    )
   )
   (br_table $out $out $out $out
    (i32.const 3)
   )
   (call $code-to-kill)
  )
  (if
   (i32.const 0)
   (block $out1
    (unreachable)
    (drop
     (i32.const 0)
    )
   )
  )
  (if
   (i32.const 0)
   (block $out3
    (return)
    (drop
     (i32.const 0)
    )
   )
  )
  (block $out4
   (br_table $out4 $out4 $out4 $out4
    (i32.const 4)
   )
   (drop
    (i32.const 0)
   )
  )
  (block $out5
   (br_if $out5
    (i32.const 3)
   )
   (drop
    (i32.const 0)
   )
  )
  (if
   (i32.const 0)
   (block $block4
    (if
     (i32.const 0)
     (block $out8
      (unreachable)
      (drop
       (i32.const 0)
      )
     )
     (block $out9
      (unreachable)
      (drop
       (i32.const 0)
      )
     )
    )
    (drop
     (i32.const 0)
    )
   )
  )
  (if
   (i32.const 0)
   (drop
    (block $out11 i32
     (br $out11
      (unreachable)
     )
     (drop
      (i32.const 0)
     )
     (unreachable)
    )
   )
  )
  (if
   (i32.const 0)
   (drop
    (block $out13 i32
     (br_if $out13
      (unreachable)
      (i32.const 0)
     )
     (drop
      (i32.const 0)
     )
     (unreachable)
    )
   )
  )
  (if
   (i32.const 0)
   (drop
    (block $out15 i32
     (br_if $out15
      (unreachable)
      (unreachable)
     )
     (drop
      (i32.const 0)
     )
     (unreachable)
    )
   )
  )
  (block $out16
   (block $in
    (br_if $out16
     (i32.const 1)
    )
   )
   (unreachable)
  )
  (if
   (i32.const 0)
   (block $block11
    (block $out18
     (block $in19
      (br_if $in19
       (i32.const 1)
      )
     )
     (unreachable)
    )
    (drop
     (i32.const 10)
    )
   )
  )
  (block $out20
   (block $in21
    (br_table $out20 $in21
     (i32.const 1)
    )
   )
   (unreachable)
  )
  (block $out22
   (block $in23
    (br_table $in23 $out22
     (i32.const 1)
    )
   )
   (unreachable)
  )
  (if
   (i32.const 0)
   (block $block13
    (block $out25
     (block $in26
      (br_table $in26 $in26
       (i32.const 1)
      )
     )
     (unreachable)
    )
    (drop
     (i32.const 10)
    )
   )
  )
  (if
   (i32.const 0)
   (block $block15
    (drop
     (i32.const 10)
    )
    (drop
     (i32.const 42)
    )
    (unreachable)
    (return
     (unreachable)
    )
    (unreachable)
    (return)
   )
  )
  (if
   (i32.const 0)
   (loop $loop-in18
    (unreachable)
   )
  )
  (block $out29
   (loop $in30
    (br_if $out29
     (i32.const 1)
    )
    (unreachable)
   )
  )
  (if
   (i32.const 0)
   (block $block20
    (loop $in32
     (br_if $in32
      (i32.const 1)
     )
     (unreachable)
    )
    (drop
     (i32.const 10)
    )
   )
  )
  (if
   (i32.const 1)
   (call $call-me
    (i32.const 123)
    (unreachable)
   )
  )
  (if
   (i32.const 2)
   (call $call-me
    (unreachable)
    (i32.const 0)
   )
  )
  (if
   (i32.const 3)
   (call $call-me
    (unreachable)
    (unreachable)
   )
  )
  (if
   (i32.const -1)
   (call_indirect $ii
    (i32.const 123)
    (i32.const 456)
    (unreachable)
   )
  )
  (if
   (i32.const -2)
   (call_indirect $ii
    (i32.const 139)
    (unreachable)
    (i32.const 0)
   )
  )
  (if
   (i32.const -3)
   (call_indirect $ii
    (i32.const 246)
    (unreachable)
    (unreachable)
   )
  )
  (if
   (i32.const -4)
   (call_indirect $ii
    (unreachable)
    (unreachable)
    (unreachable)
   )
  )
  (if
   (i32.const 11)
   (set_local $x
    (unreachable)
   )
  )
  (if
   (i32.const 22)
   (drop
    (i32.load
     (unreachable)
    )
   )
  )
  (if
   (i32.const 33)
   (i32.store
    (i32.const 0)
    (unreachable)
   )
  )
  (if
   (i32.const 44)
   (i32.store
    (unreachable)
    (i32.const 0)
   )
  )
  (if
   (i32.const 55)
   (i32.store
    (unreachable)
    (unreachable)
   )
  )
  (if
   (i32.const 66)
   (drop
    (i32.eqz
     (unreachable)
    )
   )
  )
  (if
   (i32.const 77)
   (drop
    (i32.add
     (unreachable)
     (i32.const 0)
    )
   )
  )
  (if
   (i32.const 88)
   (drop
    (i32.add
     (i32.const 0)
     (unreachable)
    )
   )
  )
  (if
   (i32.const 99)
   (i32.add
    (unreachable)
    (unreachable)
   )
  )
  (if
   (i32.const 100)
   (drop
    (select
     (i32.const 123)
     (i32.const 456)
     (unreachable)
    )
   )
  )
  (if
   (i32.const 101)
   (drop
    (select
     (i32.const 123)
     (unreachable)
     (i32.const 456)
    )
   )
  )
  (if
   (i32.const 102)
   (drop
    (select
     (unreachable)
     (i32.const 123)
     (i32.const 456)
    )
   )
  )
  (drop
   (i32.const 1337)
  )
 )
 (func $killer (type $1)
  (unreachable)
  (drop
   (i32.const 1000)
  )
 )
 (func $target (type $1)
  (drop
   (i32.const 2000)
  )
 )
 (func $typed-block-none-then-unreachable (type $2) (result i32)
  (block $top-typed i32
   (block $switch$0
    (return
     (i32.const 0)
    )
    (br $switch$0)
   )
   (return
    (i32.const 1)
   )
  )
 )
 (func $typed-block-remove-br-changes-type (type $3) (param $$$0 i32) (result i32)
  (block $switch$7
   (block $switch-default$10
    (block $switch-case$9
     (block $switch-case$8
      (br_table $switch-case$9 $switch-case$8 $switch-default$10
       (i32.const -1)
      )
     )
    )
    (return
     (get_local $$$0)
    )
    (br $switch$7)
   )
   (return
    (get_local $$$0)
   )
  )
  (return
   (i32.const 0)
  )
 )
 (func $global (type $1)
  (unreachable)
  (drop
   (get_global $x)
  )
  (set_global $x
   (i32.const 1)
  )
 )
 (func $ret (type $2) (result i32)
  (return
   (i32.const 0)
  )
  (nop)
  (i32.const 0)
 )
 (func $unreachable-br (type $2) (result i32)
  (block $out i32
   (br $out
    (br $out
     (i32.const 0)
    )
   )
  )
 )
 (func $unreachable-br-loop (type $2) (result i32)
  (loop $out
   (br $out)
  )
 )
 (func $unreachable-block-ends-switch (type $2) (result i32)
  (block $label$0 i32
   (block $label$3
    (nop)
    (br_table $label$3
     (unreachable)
    )
    (unreachable)
   )
   (i32.const 19)
  )
 )
 (func $unreachable-block-ends-br_if (result i32)
  (block $label$0 i32
   (block $label$2
    (nop)
    (br_if $label$2
     (unreachable)
    )
    (unreachable)
   )
   (i32.const 19)
  )
 )
 (func $unreachable-brs-3 (result i32)
  (block $label$0 i32
   (br $label$0
    (grow_memory
     (br $label$0
      (i32.const 18)
     )
    )
   )
   (i32.const 21)
  )
 )
 (func $unreachable-brs-4 (param $var$0 i32) (result i32)
  (i32.add
   (i32.const 1)
   (block $label$0 i32
    (br $label$0
     (block $label$1 i32
      (drop
       (br_if $label$0
        (i32.const 4104)
        (unreachable)
       )
      )
      (i32.const 4)
     )
    )
    (i32.const 16)
   )
  )
 )
 (func $call-unreach (param $var$0 i64) (param $var$1 i64) (result i64)
  (local $2 i64)
  (if i64
   (i64.eqz
    (get_local $var$0)
   )
   (block $label$0 i64
    (get_local $var$1)
   )
   (block $label$1 i64
    (call $call-unreach
     (i64.sub
      (get_local $var$0)
      (i64.const 1)
     )
     (i64.mul
      (block $block i64
       (set_local $2
        (get_local $var$0)
       )
       (nop)
       (get_local $2)
      )
      (unreachable)
     )
    )
   )
  )
 )

  ;; flatten-specific
  (func $test-flatten
    (block $out
      (drop (i32.add (i32.const 1) (i32.const 2)))
      (drop (i32.add (i32.const 1) (br $out)))
      (drop (i32.add (br $out) (i32.const 1)))
      (drop (i32.add (i32.const 1) (br_table $out $out $out $out (i32.const 3))))
      (drop (i32.add (i32.const 1)
        (block i32
          (drop (i32.const 2))
          (drop (i32.const 3))
          (i32.const 4)
        )
      ))
      (drop (i32.add (i32.const 1)
        (block $in i32
          (drop
            (block $switch-in i32
              (br_table $in $switch-in $in (i32.const 2) (i32.const 777))
            )
          )
          (br $in (i32.const 3))
          (i32.const 4)
        )
      ))
      (drop (i32.add (i32.const 1)
        (loop i32
          (i32.const 5)
        )
      ))
      (drop (i32.add (i32.const 1)
        (if i32
          (i32.const 6)
          (i32.const 7)
          (i32.const 8)
        )
      ))
      (drop
        (select
         (i32.const 9)
         (i32.const 10)
         (i32.const 11)
        )
      )
      (drop
        (select
         (br $out)
         (i32.const 10)
         (i32.const 11)
        )
      )
      (drop
        (select
         (i32.const 9)
         (br $out)
         (i32.const 11)
        )
      )
      (drop
        (select
         (i32.const 9)
         (i32.const 10)
         (br $out)
        )
      )
      (drop
        (select
          (if i32
            (i32.const 11)
            (i32.const 12)
            (i32.const 13)
          )
          (i32.const 9)
          (i32.const 10)
        )
      )
      (drop
        (select
          (i32.const 9)
          (if i32
            (i32.const 11)
            (i32.const 12)
            (i32.const 13)
          )
          (i32.const 10)
        )
      )
      (drop
        (select
          (i32.const 9)
          (i32.const 10)
          (if i32
            (i32.const 11)
            (i32.const 12)
            (i32.const 13)
          )
        )
      )
      (drop
        (select
          (if i32
            (i32.const 11)
            (i32.const 12)
            (i32.const 13)
          )
          (i32.const 14)
          (if i32
            (i32.const 15)
            (i32.const 16)
            (i32.const 17)
          )
        )
      )
      (drop (i32.add (i32.const 1) (return)))
      (drop (i32.add (i32.const 1) (unreachable)))
      (drop
        (if i32
          (if i32
            (i32.const 5)
            (i32.const 6)
            (i32.const 7)
          )
          (i32.const 8)
          (if i32
            (i32.const 9)
            (i32.const 10)
            (i32.const 11)
          )
        )
      )
      (drop
        (block $temp i32
          (br_if $temp
            (i32.const 1)
            (i32.const 2)
          )
        )
      )
    )
  )
  (func $flatten-return-value (result i32)
    (drop (i32.add (i32.const 1) (return (i32.const 2))))
    (i32.const 3)
  )
  (func $unbug
   (local $12 i32)
   (local $432 i32)
   (local $430 i32)
   (local $431 i32)
   (local $9 i32)
   (local $5 i32)
   (local $433 i32)
   (drop
    (block i32
     (if
      (i32.eq
       (get_local $12)
       (i32.const 65535)
      )
      (block
       (block $label$78
        (set_local $430
         (i32.const 0)
        )
       )
       (set_local $432
        (get_local $430)
       )
      )
      (block
       (block $label$79
        (set_local $431
         (i32.lt_u
          (get_local $9)
          (i32.load16_u offset=2
           (i32.add
            (get_local $5)
            (i32.mul
             (get_local $12)
             (i32.const 12)
            )
           )
          )
         )
        )
       )
       (set_local $432
        (get_local $431)
       )
      )
     )
     (set_local $433
      (i32.const 1)
     )
     (i32.xor
      (get_local $432)
      (get_local $433)
     )
    )
   )
  )
  (func $outer-block-typed (type $3) (param $var$0 i32) (result i32)
   (block i32
    (i32.add
     (i32.const 1)
     (block $label$0 i32
      (i32.const 16)
     )
    )
   )
  )
  (func $nested-br_if-with-value (result i32)
   (local $0 i32)
   (block $label$0 i32
    (drop
     (br_if $label$0
      (i32.const 0)
      (block i32
       (get_local $0)
      )
     )
    )
    (i32.const 1)
   )
  )
)
