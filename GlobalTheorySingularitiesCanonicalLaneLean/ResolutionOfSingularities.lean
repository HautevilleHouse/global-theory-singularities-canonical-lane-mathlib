import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheorySingularitiesCanonicalLaneLean

structure ResolutionPackage where
  singularSource : Type u
  resolutionMap : Type v
  normalCrossingsCondition : Prop
  relativeCanonicalClassFinite : Prop

def ResolutionClosed (R : ResolutionPackage) : Prop :=
  R.normalCrossingsCondition ∧ R.relativeCanonicalClassFinite

end GlobalTheorySingularitiesCanonicalLaneLean
end HautevilleHouse
