import GlobalTheorySingularitiesCanonicalLaneLean.MilnorNumber

/-!
# Arnold Classification Package
-/

namespace HautevilleHouse
namespace GlobalTheorySingularitiesCanonicalLaneLean

structure ArnoldClassificationPackage {A : AdmittedObject} {R : ResolutionStrategy A} {M : MilnorNumberPackage R} where
  simpleSingularity : Prop
  unimodalSingularity : Prop
  modalityOne : Prop
  ADEClassification : Prop

structure ArnoldClassificationEvidence {A : AdmittedObject} {R : ResolutionStrategy A} {M : MilnorNumberPackage R} (C : ArnoldClassificationPackage M) where
  simpleSingularityClosed : C.simpleSingularity
  unimodalSingularityClosed : C.unimodalSingularity
  ADEClassificationClosed : C.ADEClassification

def ArnoldClassificationClosed {A : AdmittedObject} {R : ResolutionStrategy A} {M : MilnorNumberPackage R} (C : ArnoldClassificationPackage M) : Prop :=
  C.simpleSingularity ∧ C.unimodalSingularity ∧ C.ADEClassification

theorem arnold_classification_closed_from_evidence {A : AdmittedObject} {R : ResolutionStrategy A} {M : MilnorNumberPackage R} (C : ArnoldClassificationPackage M) (E : ArnoldClassificationEvidence C) : ArnoldClassificationClosed C := by
  exact And.intro E.simpleSingularityClosed (And.intro E.unimodalSingularityClosed E.ADEClassificationClosed)

end GlobalTheorySingularitiesCanonicalLaneLean
end HautevilleHouse