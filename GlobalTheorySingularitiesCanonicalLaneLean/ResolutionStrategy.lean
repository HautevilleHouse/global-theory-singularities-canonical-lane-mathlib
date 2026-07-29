import GlobalTheorySingularitiesCanonicalLaneLean.MathlibObjects

/-!
# Resolution Strategy Package
-/

namespace HautevilleHouse
namespace GlobalTheorySingularitiesCanonicalLaneLean

structure ResolutionStrategy (A : AdmittedObject) where
  blowupSequence : Type u
  exceptionalDivisors : Prop
  smoothModel : Prop
  resolutionMap : Prop
  resolutionMapClosed : resolutionMap

structure ResolutionStrategyEvidence {A : AdmittedObject} (S : ResolutionStrategy A) where
  blowupSequenceClosed : S.blowupSequence
  exceptionalDivisorsClosed : S.exceptionalDivisors
  smoothModelClosed : S.smoothModel

def ResolutionClosed {A : AdmittedObject} (S : ResolutionStrategy A) : Prop :=
  S.blowupSequence ∧ S.exceptionalDivisors ∧ S.smoothModel ∧ S.resolutionMap

theorem resolution_closed_from_evidence {A : AdmittedObject} (S : ResolutionStrategy A) (E : ResolutionStrategyEvidence S) : ResolutionClosed S := by
  exact And.intro E.blowupSequenceClosed (And.intro E.exceptionalDivisorsClosed (And.intro E.smoothModelClosed S.resolutionMapClosed))

end GlobalTheorySingularitiesCanonicalLaneLean
end HautevilleHouse