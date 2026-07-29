import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheorySingularitiesCanonicalLaneLean

structure FiniteDeterminacyPackage where
  jetSpace : Type u
  kDetermined : Nat → Prop
  finiteDeterminacyCondition : Prop
  stabilityUnderEquivalence : Prop

structure FiniteDeterminacyEvidence (F : FiniteDeterminacyPackage) where
  kDeterminedClosed : ∀ k, F.kDetermined k
  finiteDeterminacyConditionClosed : F.finiteDeterminacyCondition
  stabilityUnderEquivalenceClosed : F.stabilityUnderEquivalence

def FiniteDeterminacyClosed (F : FiniteDeterminacyPackage) : Prop :=
  (∀ k, F.kDetermined k) ∧ F.finiteDeterminacyCondition ∧ F.stabilityUnderEquivalence

theorem finite_determinacy_closed_from_evidence (F : FiniteDeterminacyPackage)
    (E : FiniteDeterminacyEvidence F) : FiniteDeterminacyClosed F := by
  exact And.intro E.kDeterminedClosed
    (And.intro E.finiteDeterminacyConditionClosed E.stabilityUnderEquivalenceClosed)

end GlobalTheorySingularitiesCanonicalLaneLean
end HautevilleHouse