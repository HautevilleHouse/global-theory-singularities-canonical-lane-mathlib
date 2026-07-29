import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheorySingularitiesCanonicalLaneLean

structure WhitneyStratificationPackage where
  strata : Type
  stratumCondition : Type
  whitneyConditionA : Prop
  whitneyConditionB : Prop
  frontierProperty : Prop
  locallyFinite : Prop
  equisingularity : Prop

structure WhitneyStratificationEvidence (W : WhitneyStratificationPackage) where
  whitneyConditionAClosed : W.whitneyConditionA
  whitneyConditionBClosed : W.whitneyConditionB
  frontierPropertyClosed : W.frontierProperty
  locallyFiniteClosed : W.locallyFinite
  equisingularityClosed : W.equisingularity

def WhitneyStratificationClosed (W : WhitneyStratificationPackage) : Prop :=
  W.whitneyConditionA ∧ W.whitneyConditionB ∧ W.frontierProperty ∧
  W.locallyFinite ∧ W.equisingularity

theorem whitney_stratification_closed_from_evidence
    (W : WhitneyStratificationPackage) (E : WhitneyStratificationEvidence W) :
    WhitneyStratificationClosed W := by
  exact And.intro E.whitneyConditionAClosed
    (And.intro E.whitneyConditionBClosed
      (And.intro E.frontierPropertyClosed
        (And.intro E.locallyFiniteClosed E.equisingularityClosed)))

end GlobalTheorySingularitiesCanonicalLaneLean
end HautevilleHouse