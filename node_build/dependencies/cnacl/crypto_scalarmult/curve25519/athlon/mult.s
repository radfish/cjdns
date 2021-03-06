.text
.p2align 5
.globl _crypto_scalarmult_curve25519_athlon_mult
.globl crypto_scalarmult_curve25519_athlon_mult
_crypto_scalarmult_curve25519_athlon_mult:
crypto_scalarmult_curve25519_athlon_mult:
mov %esp,%eax
and $31,%eax
add $32,%eax
sub %eax,%esp
movl %ebp,0(%esp)
movl 4(%esp,%eax),%ecx
movl 8(%esp,%eax),%edx
movl 12(%esp,%eax),%ebp
fldl 72(%edx)
fmull 72(%ebp)
fmull crypto_scalarmult_curve25519_athlon_scale
fldl 0(%edx)
fmull 64(%ebp)
faddp %st(0),%st(1)
fldl 8(%edx)
fmull 56(%ebp)
faddp %st(0),%st(1)
fldl 0(%edx)
fmull 72(%ebp)
fldl 16(%edx)
fmull 48(%ebp)
faddp %st(0),%st(2)
fldl 8(%edx)
fmull 64(%ebp)
faddp %st(0),%st(1)
fldl 24(%edx)
fmull 40(%ebp)
faddp %st(0),%st(2)
fldl 16(%edx)
fmull 56(%ebp)
faddp %st(0),%st(1)
fldl 32(%edx)
fmull 32(%ebp)
faddp %st(0),%st(2)
fldl 24(%edx)
fmull 48(%ebp)
faddp %st(0),%st(1)
fldl 8(%edx)
fmull 72(%ebp)
fldl 40(%edx)
fmull 24(%ebp)
faddp %st(0),%st(3)
fldl 32(%edx)
fmull 40(%ebp)
faddp %st(0),%st(2)
fldl 16(%edx)
fmull 64(%ebp)
faddp %st(0),%st(1)
fldl 48(%edx)
fmull 16(%ebp)
faddp %st(0),%st(3)
fldl 40(%edx)
fmull 32(%ebp)
faddp %st(0),%st(2)
fldl 24(%edx)
fmull 56(%ebp)
faddp %st(0),%st(1)
fldl 56(%edx)
fmull 8(%ebp)
faddp %st(0),%st(3)
fldl 48(%edx)
fmull 24(%ebp)
faddp %st(0),%st(2)
fldl 32(%edx)
fmull 48(%ebp)
faddp %st(0),%st(1)
fldl 64(%edx)
fmull 0(%ebp)
faddp %st(0),%st(3)
fldl 56(%edx)
fmull 16(%ebp)
faddp %st(0),%st(2)
fldl 40(%edx)
fmull 40(%ebp)
faddp %st(0),%st(1)
fldl 16(%edx)
fmull 72(%ebp)
fldl 48(%edx)
fmull 32(%ebp)
faddp %st(0),%st(2)
fldl 64(%edx)
fmull 8(%ebp)
faddp %st(0),%st(3)
fldl crypto_scalarmult_curve25519_athlon_alpha230
fadd %st(4),%st(0)
fldl 24(%edx)
fmull 64(%ebp)
faddp %st(0),%st(2)
fldl 56(%edx)
fmull 24(%ebp)
faddp %st(0),%st(3)
fldl 72(%edx)
fmull 0(%ebp)
faddp %st(0),%st(4)
fsubl crypto_scalarmult_curve25519_athlon_alpha230
fldl 32(%edx)
fmull 56(%ebp)
faddp %st(0),%st(2)
fldl 24(%edx)
fmull 72(%ebp)
fldl 64(%edx)
fmull 16(%ebp)
faddp %st(0),%st(4)
fxch %st(1)
fadd %st(0),%st(4)
fldl 40(%edx)
fmull 48(%ebp)
faddp %st(0),%st(3)
fldl 32(%edx)
fmull 64(%ebp)
faddp %st(0),%st(2)
fsubrp %st(0),%st(5)
fldl crypto_scalarmult_curve25519_athlon_alpha255
fadd %st(4),%st(0)
fldl 48(%edx)
fmull 40(%ebp)
faddp %st(0),%st(3)
fldl 40(%edx)
fmull 56(%ebp)
faddp %st(0),%st(2)
fldl 72(%edx)
fmull 8(%ebp)
faddp %st(0),%st(4)
fsubl crypto_scalarmult_curve25519_athlon_alpha255
fldl 56(%edx)
fmull 32(%ebp)
faddp %st(0),%st(3)
fldl 32(%edx)
fmull 72(%ebp)
fldl 48(%edx)
fmull 48(%ebp)
faddp %st(0),%st(3)
fldl 64(%edx)
fmull 24(%ebp)
faddp %st(0),%st(4)
fxch %st(1)
fadd %st(0),%st(4)
fsubrp %st(0),%st(5)
fxch %st(5)
fstpl 64(%ecx)
fldl 40(%edx)
fmull 64(%ebp)
faddp %st(0),%st(5)
fldl 56(%edx)
fmull 40(%ebp)
faddp %st(0),%st(1)
fldl 72(%edx)
fmull 16(%ebp)
faddp %st(0),%st(2)
fxch %st(2)
fmull crypto_scalarmult_curve25519_athlon_scale
fldl 48(%edx)
fmull 56(%ebp)
faddp %st(0),%st(5)
fldl 64(%edx)
fmull 32(%ebp)
faddp %st(0),%st(3)
fxch %st(1)
fmull crypto_scalarmult_curve25519_athlon_scale
fldl 0(%edx)
fmull 0(%ebp)
faddp %st(0),%st(2)
fxch %st(3)
fstpl 72(%ecx)
fldl 40(%edx)
fmull 72(%ebp)
fldl 56(%edx)
fmull 48(%ebp)
faddp %st(0),%st(5)
fldl 72(%edx)
fmull 24(%ebp)
faddp %st(0),%st(3)
fldl 0(%edx)
fmull 8(%ebp)
faddp %st(0),%st(4)
fldl crypto_scalarmult_curve25519_athlon_alpha26
fadd %st(2),%st(0)
fldl 48(%edx)
fmull 64(%ebp)
faddp %st(0),%st(2)
fldl 64(%edx)
fmull 40(%ebp)
faddp %st(0),%st(6)
fxch %st(3)
fmull crypto_scalarmult_curve25519_athlon_scale
fldl 8(%edx)
fmull 0(%ebp)
faddp %st(0),%st(5)
fxch %st(3)
fsubl crypto_scalarmult_curve25519_athlon_alpha26
fldl 56(%edx)
fmull 56(%ebp)
faddp %st(0),%st(2)
fldl 72(%edx)
fmull 32(%ebp)
faddp %st(0),%st(6)
fldl 0(%edx)
fmull 16(%ebp)
faddp %st(0),%st(4)
fadd %st(0),%st(4)
fsubrp %st(0),%st(2)
fldl 48(%edx)
fmull 72(%ebp)
fldl 64(%edx)
fmull 48(%ebp)
faddp %st(0),%st(2)
fxch %st(5)
fmull crypto_scalarmult_curve25519_athlon_scale
fldl 8(%edx)
fmull 8(%ebp)
faddp %st(0),%st(4)
fldl crypto_scalarmult_curve25519_athlon_alpha51
fadd %st(5),%st(0)
fldl 56(%edx)
fmull 64(%ebp)
faddp %st(0),%st(7)
fldl 72(%edx)
fmull 40(%ebp)
faddp %st(0),%st(3)
fldl 0(%edx)
fmull 24(%ebp)
faddp %st(0),%st(2)
fldl 16(%edx)
fmull 0(%ebp)
faddp %st(0),%st(5)
fsubl crypto_scalarmult_curve25519_athlon_alpha51
fxch %st(3)
fstpl 0(%ecx)
fldl 64(%edx)
fmull 56(%ebp)
faddp %st(0),%st(6)
fxch %st(1)
fmull crypto_scalarmult_curve25519_athlon_scale
fldl 8(%edx)
fmull 16(%ebp)
faddp %st(0),%st(2)
fxch %st(2)
fadd %st(0),%st(3)
fsubrp %st(0),%st(4)
fldl 56(%edx)
fmull 72(%ebp)
fldl 72(%edx)
fmull 48(%ebp)
faddp %st(0),%st(6)
fldl 0(%edx)
fmull 32(%ebp)
faddp %st(0),%st(3)
fldl 16(%edx)
fmull 8(%ebp)
faddp %st(0),%st(2)
fldl crypto_scalarmult_curve25519_athlon_alpha77
fadd %st(4),%st(0)
fldl 64(%edx)
fmull 64(%ebp)
faddp %st(0),%st(2)
fxch %st(6)
fmull crypto_scalarmult_curve25519_athlon_scale
fldl 8(%edx)
fmull 24(%ebp)
faddp %st(0),%st(4)
fldl 24(%edx)
fmull 0(%ebp)
faddp %st(0),%st(3)
fxch %st(6)
fsubl crypto_scalarmult_curve25519_athlon_alpha77
fxch %st(5)
fstpl 8(%ecx)
fldl 72(%edx)
fmull 56(%ebp)
faddp %st(0),%st(1)
fldl 0(%edx)
fmull 40(%ebp)
faddp %st(0),%st(6)
fldl 16(%edx)
fmull 16(%ebp)
faddp %st(0),%st(3)
fxch %st(4)
fadd %st(0),%st(1)
fsubrp %st(0),%st(3)
fldl 64(%edx)
fmull 72(%ebp)
fxch %st(4)
fmull crypto_scalarmult_curve25519_athlon_scale
fldl 8(%edx)
fmull 32(%ebp)
faddp %st(0),%st(6)
fldl 24(%edx)
fmull 8(%ebp)
faddp %st(0),%st(3)
fldl crypto_scalarmult_curve25519_athlon_alpha102
fadd %st(2),%st(0)
fldl 72(%edx)
fmull 64(%ebp)
faddp %st(0),%st(6)
fldl 0(%edx)
fmull 48(%ebp)
faddp %st(0),%st(2)
fldl 16(%edx)
fmull 24(%ebp)
faddp %st(0),%st(7)
fldl 32(%edx)
fmull 0(%ebp)
faddp %st(0),%st(4)
fsubl crypto_scalarmult_curve25519_athlon_alpha102
fxch %st(4)
fstpl 16(%ecx)
fxch %st(4)
fmull crypto_scalarmult_curve25519_athlon_scale
fldl 8(%edx)
fmull 40(%ebp)
faddp %st(0),%st(5)
fldl 24(%edx)
fmull 16(%ebp)
faddp %st(0),%st(6)
fxch %st(3)
fadd %st(0),%st(2)
fsubrp %st(0),%st(1)
fldl 0(%edx)
fmull 56(%ebp)
faddp %st(0),%st(3)
fldl 16(%edx)
fmull 32(%ebp)
faddp %st(0),%st(4)
fldl 32(%edx)
fmull 8(%ebp)
faddp %st(0),%st(5)
fldl crypto_scalarmult_curve25519_athlon_alpha128
fadd %st(2),%st(0)
fldl 8(%edx)
fmull 48(%ebp)
faddp %st(0),%st(4)
fldl 24(%edx)
fmull 24(%ebp)
faddp %st(0),%st(5)
fldl 40(%edx)
fmull 0(%ebp)
faddp %st(0),%st(6)
fsubl crypto_scalarmult_curve25519_athlon_alpha128
fxch %st(1)
fstpl 24(%ecx)
fldl 16(%edx)
fmull 40(%ebp)
faddp %st(0),%st(3)
fldl 32(%edx)
fmull 16(%ebp)
faddp %st(0),%st(4)
fadd %st(0),%st(4)
fsubrp %st(0),%st(1)
fstpl 32(%ecx)
fldl 24(%edx)
fmull 32(%ebp)
faddp %st(0),%st(1)
fldl 40(%edx)
fmull 8(%ebp)
faddp %st(0),%st(2)
fldl crypto_scalarmult_curve25519_athlon_alpha153
fadd %st(3),%st(0)
fldl 32(%edx)
fmull 24(%ebp)
faddp %st(0),%st(2)
fldl 48(%edx)
fmull 0(%ebp)
faddp %st(0),%st(3)
fsubl crypto_scalarmult_curve25519_athlon_alpha153
fldl 40(%edx)
fmull 16(%ebp)
faddp %st(0),%st(2)
fadd %st(0),%st(2)
fsubrp %st(0),%st(3)
fxch %st(2)
fstpl 40(%ecx)
fldl 48(%edx)
fmull 8(%ebp)
faddp %st(0),%st(2)
fldl crypto_scalarmult_curve25519_athlon_alpha179
fadd %st(1),%st(0)
fldl 56(%edx)
fmull 0(%ebp)
faddp %st(0),%st(3)
fsubl crypto_scalarmult_curve25519_athlon_alpha179
fldl 64(%ecx)
fldl 72(%ecx)
fxch %st(2)
fadd %st(0),%st(4)
fsubrp %st(0),%st(3)
fldl crypto_scalarmult_curve25519_athlon_alpha204
fadd %st(4),%st(0)
fsubl crypto_scalarmult_curve25519_athlon_alpha204
fadd %st(0),%st(1)
fsubrp %st(0),%st(4)
fldl crypto_scalarmult_curve25519_athlon_alpha230
fadd %st(1),%st(0)
fsubl crypto_scalarmult_curve25519_athlon_alpha230
fsubr %st(0),%st(1)
faddp %st(0),%st(2)
fxch %st(2)
fstpl 48(%ecx)
fxch %st(2)
fstpl 56(%ecx)
fstpl 64(%ecx)
fstpl 72(%ecx)
movl 0(%esp),%ebp
add %eax,%esp
ret
