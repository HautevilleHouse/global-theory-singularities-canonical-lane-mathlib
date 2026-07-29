import canonicalLaneMathlib.AdmissibleClass
import GlobalTheorySingularitiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheorySingularitiesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SingularityWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GlobalTheorySingularitiesCanonicalLaneLean
end HautevilleHouse