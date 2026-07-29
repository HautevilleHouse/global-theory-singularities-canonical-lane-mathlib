import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheorySingularitiesCanonicalLaneLean

structure MorseTheoryPackage where
  morseFunction : Type u → Prop
  nondegenerateCriticalPoints : Prop
  handleDecomposition : Prop
  morseInequalities : Prop

structure MorseTheoryEvidence (M : MorseTheoryPackage) where
  nondegenerateCriticalPointsClosed : M.nondegenerateCriticalPoints
  handleDecompositionClosed : M.handleDecomposition
  morseInequalitiesClosed : M.morseInequalities

def MorseTheoryClosed (M : MorseTheoryPackage) : Prop :=
  M.nondegenerateCriticalPoints ∧ M.handleDecomposition ∧ M.morseInequalities

theorem morse_theory_closed_from_evidence (M : MorseTheoryPackage)
    (E : MorseTheoryEvidence M) : MorseTheoryClosed M := by
  exact And.intro E.nondegenerateCriticalPointsClosed
    (And.intro E.handleDecompositionClosed E.morseInequalitiesClosed)

end GlobalTheorySingularitiesCanonicalLaneLean
end HautevilleHouse