# Direct Kinematics

# DH parameters
# d theta r alpha
# example parameters taken from an ABB IRB 6700-175/3.05
# robot arm, mounted on a IRBT 6004 rail
Parameters ← [[389.5 0 0 0]   # Axis 0 (rail)
              [780 0 377 ¯90] # Axis 1
              [0 ¯90 1135 0]  # Axis 2
              [0 0 200 ¯90]   # Axis 3
              [1592.5 0 0 90] # Axis 4
              [0 0 0 ¯90]     # Axis 5
              [200 0 0 0]     # Axis 6
]
# all dimensions in milimetres and angles in degrees

# Joint values
# (mm or °)
Inputs ← [0 0 0 0 0 0 0]

# Map of which parameter each joint is added to
# d theta r alpha = [0 1 2 3]
InputMap ← [2 1 1 1 1 1 1]

# DH transfer matrix
Tn ← ↯4_4[⊃(
    ∿+η⊡₁           # cθ
  | ¯×⊃(∿⊡₁|∿+η⊡₃)  # -sθcα
  | ×⊃(∿⊡₁|∿⊡₃)     # sθsα
  | ×⊃(⊡₂|∿+η⊡₁)    # r*cθ
  | ∿⊡₁             # sθ
  | ×⊃(∿+η⊡₁|∿+η⊡₃) # cθcα
  | ¯×⊃(∿+η⊡₁|∿⊡₃)  # -cθsα
  | ×⊃(⊡₂|∿⊡₁)      # r*sθ
  | 0               # 
  | ∿⊡₃             # sα
  | ∿+η⊡₃           # cα
  | ⊡₀              # d
  | 0 0 0 1         # 
  )]

# Process inputs and parameters
≡(⍜(⊏1_3|×π÷180) ⍜⊡+) InputMap Parameters Inputs

# Compute DK
/(≡/+×¤:) ≡Tn

# Extract coordinates and angles
⊃($AnglesRPY ⁅₃×180÷π[⊃(/∠⊡[1_0 0_0]|∠⊃(⊡2_0|√/+ⁿ₂⊡[2_1 2_2])|/∠⊡[2_1 2_2])]
| $CoordsXYZ ⁅₃⊡[0_3 1_3 2_3])
