import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheorySingularitiesCanonicalLaneLean

structure IntersectionCohomologyPackage where
  perverseCohomology : Type u
  poincareDualityCondition : Prop
  signatureFormula : Prop
  deRhamRepresentation : Prop

def IntersectionCohomologyClosed (I : IntersectionCohomologyPackage) : Prop :=
  I.poincareDualityCondition ∧ I.signatureFormula ∧ I.deRhamRepresentation

end GlobalTheorySingularitiesCanonicalLaneLean
end HautevilleHouse
