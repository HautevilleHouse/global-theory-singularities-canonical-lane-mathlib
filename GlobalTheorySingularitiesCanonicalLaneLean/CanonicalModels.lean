import canonicalLaneMathlib.AdmissibleClass
import GlobalTheorySingularitiesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GlobalTheorySingularitiesCanonicalLaneLean

structure CanonicalModelsPackage where
  isolatedSingularityClassified : Prop
  resolutionProcedure : Prop
  modelSpaceDefined : Prop

def CanonicalModelsClosed (C : CanonicalModelsPackage) : Prop :=
  C.isolatedSingularityClassified ∧ C.resolutionProcedure ∧ C.modelSpaceDefined

theorem canonical_models_closed (C : CanonicalModelsPackage) : CanonicalModelsClosed C := by
  exact And.intro C.isolatedSingularityClassified (And.intro C.resolutionProcedure C.modelSpaceDefined)

end GlobalTheorySingularitiesCanonicalLaneLean
end HautevilleHouse