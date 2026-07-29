import GlobalTheorySingularitiesCanonicalLaneLean.ResolutionStrategy

/-!
# Milnor Number Package
-/

namespace HautevilleHouse
namespace GlobalTheorySingularitiesCanonicalLaneLean

structure MilnorNumberPackage {A : AdmittedObject} (R : ResolutionStrategy A) where
  milnorNumber : Nat
  milnorFiber : Type u
  connectivityIndex : Prop
  monodromyAction : Prop

structure MilnorNumberEvidence {A : AdmittedObject} {R : ResolutionStrategy A} (M : MilnorNumberPackage R) where
  milnorNumberComputed : M.milnorNumber = Nat.succ (Nat.succ (Nat.succ 0))  -- example: μ=3
  connectivityIndexClosed : M.connectivityIndex
  monodromyActionClosed : M.monodromyAction

def MilnorNumberClosed {A : AdmittedObject} {R : ResolutionStrategy A} (M : MilnorNumberPackage R) : Prop :=
  M.connectivityIndex ∧ M.monodromyAction

theorem milnor_number_closed_from_evidence {A : AdmittedObject} {R : ResolutionStrategy A} (M : MilnorNumberPackage R) (E : MilnorNumberEvidence M) : MilnorNumberClosed M := by
  exact And.intro E.connectivityIndexClosed E.monodromyActionClosed

end GlobalTheorySingularitiesCanonicalLaneLean
end HautevilleHouse