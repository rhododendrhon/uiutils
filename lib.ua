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
# Upscale by scalar
# ? Scale Target
Ups ← ▽⟜≡▽
# Rotate matrix clockwise
# ? rotations matrix
Rot ← ⨬(∘|≡⇌⍉|⇌≡⇌|⍉≡⇌)◿₄
# Dot product
Dot ← /+×
# Matrix multiplication
# AxB ? B A
Mult ← ⌅(≡Dot¤|≡Dot¤Inv)
# Identity matrix (alternatively ⊞=.⇡)
I ← °⊚⍉⊟.⇡
# Zero square matrix
O ← ↯:0⊂.
# Vector to diagonal matrix
Diag ← ×I⧻.

┌─╴test
  ⍤"Inverse doesn't work!"≍⁅Mult⟜Inv⤚+I ⟜(°△[.]) 6
└─╴
