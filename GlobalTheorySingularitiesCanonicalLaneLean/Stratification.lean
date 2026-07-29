import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheorySingularitiesCanonicalLaneLean

structure StratificationPackage where
  topologicalSpace : Type u
  stratification : topologicalSpace → Nat → Prop
  equisingularityCondition : Prop
  frontierCondition : Prop
  localTrivialityCondition : Prop

def StratificationClosed (S : StratificationPackage) : Prop :=
  S.equisingularityCondition ∧ S.frontierCondition ∧ S.localTrivialityCondition

end GlobalTheorySingularitiesCanonicalLaneLean
end HautevilleHouse
