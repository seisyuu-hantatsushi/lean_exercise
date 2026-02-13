-- This module serves as the root of the `PropLogicThem` library.
-- Import modules here that should be built as part of the library.
import PropLogicThem.Basic

theorem idempotent_and (P: Prop) : (P ∧ P) ↔ P := by
  constructor
  ·intro h
   exact h.1
  intro h
  constructor
  ·exact h
  ·exact h

theorem idempotent_or (P: Prop) : (P ∨ P) ↔ P := by
  constructor
  ·intro h
   cases h with
   | inl hp => exact hp
   | inr hp => exact hp
  ·intro h
   left
   exact h
