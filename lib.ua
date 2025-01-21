# Constants:

# Belgium flag colours
BE ← ÷255[45_41_38 255_205_0 200_16_46]
# Bulgaria flag colours
BG ← ÷255[255_255_255 0_150_110 214_38_18]
# Germany flag colours
DE ← ÷255[0_0_0 221_0_0 255_204_0]
# France flag colours
FR ← ÷255[0_0_145 255_255_255 255_0_15]
# Italy flag colours
IT ← ÷255[0_140_69 244_249_255 205_33_42]
# The Netherlands flag colours
NL ← ÷255[200_16_46 255_255_255 0_61_165]
# Poland flag colours
PL ← ÷255[220_20_60 255_255_255]
# Romania flag colours
RO ← ÷255[0_43_127 252_209_22 206_17_38]
# Ukraine flag colours
UA ← ÷255[0_87_183 255_221_0]

# Functions:

# Matrix determinant
Det ← |1 ⨬(
  ⟜(×¬×₂◿₂⇡⊃⧻⊢)
  /+×≡(Det↘₁⍜⊙⍉▽)⊙¤ ⊞≠.⇡⧻.
| ⨬(⊢|/-≡/×⍜(⊢⍉)⇌)=₂⧻.
)<₃⧻.
# Inverse matrix
Inv ← ÷⊃(
  Det
| ≡↻⇡⟜▽:¤ ⊞≠.⇡.⧻.
  ≡(≡(Det⍜⊙⍉▽)⊙¤ ⊙▽⟜⊢)⊙¤
  ⍉×¬×₂◿₂+⊃⇡▽:¤⇡.⧻. ≡⌝↻⇡⧻.
)
# Rotate image clockwise
# (first two dimensions)
# ? rotations image
Spin ← ⍜⊙≡₂□ ⨬(∘|≡⇌⍉|⇌≡⇌|⍉≡⇌)◿₄
# Matrix multiplication
# AxB ? B A
Mult ← ⌅(≡/+×¤|≡/+×¤Inv)
# Identity matrix
I ← ⊞=.⇡
# Zero square matrix
O ← ↯⟜⊚
# Vector to diagonal matrix
Diag ← ×I⧻.
# Divisors (including self, unsigned)
Divs ← ◴⊂:⇌⤚÷ ▽=₀◡◿ +₁⇡⌊⊸√⌵
# Greatest common divisor
GCD ← ◌⍢⤚◿≠₀
# Least common multiple (positive)
LCM ← ×÷⊃GCD∩⌵
# First numbers of Fibonacci sequence
Fib ← ⇌⍥(⊂+⊸⊢₂):[1 0]
# Square striped flag 
# (horizontal)
# ? size colours
Flag ← ▽÷⧻,⟜≡▽⊙⍜⍉¤

┌─╴test
  ⍤"Matrix operations"≍⁅₉Mult⟜Inv⤚+I ⟜(⌈×₉⊞⋅⋅⚂ .⇡) 6
└─╴