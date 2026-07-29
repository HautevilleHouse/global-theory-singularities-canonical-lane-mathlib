import canonicalLaneMathlib.AdmissibleClass
import GlobalTheorySingularitiesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GlobalTheorySingularitiesCanonicalLaneLean

def ConstrainedSingularityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_singularity_endgame (A : AdmissibleClass) :
    ConstrainedSingularityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GlobalTheorySingularitiesCanonicalLaneLean
end HautevilleHouse