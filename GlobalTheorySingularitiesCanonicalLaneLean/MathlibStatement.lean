import GlobalTheorySingularitiesCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace GlobalTheorySingularitiesCanonicalLaneLean

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

theorem theorem_specific_endgame_pilot_checked : forall A : AdmissibleClass, ConstrainedSingularityClosure A := by
  intro A
  exact constrained_singularity_endgame A

end GlobalTheorySingularitiesCanonicalLaneLean
end HautevilleHouse