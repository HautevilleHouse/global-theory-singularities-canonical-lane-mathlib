import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheorySingularitiesCanonicalLaneLean

structure AdmissibleClass where
  object : SingularityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SingularityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GlobalTheorySingularitiesCanonicalLaneLean
end HautevilleHouse