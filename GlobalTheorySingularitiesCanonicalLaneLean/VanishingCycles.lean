import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheorySingularitiesCanonicalLaneLean

structure VanishingCyclesPackage where
  perverseSheaf : Type u
  vanishingCycleFunctorDefined : Prop
  nearbyCycleFunctorDefined : Prop
  specializationCompatibility : Prop

def VanishingCyclesClosed (V : VanhingCyclesPackage) : Prop :=
  V.vanishingCycleFunctorDefined ∧ V.nearbyCycleFunctorDefined ∧ V.specializationCompatibility

end GlobalTheorySingularitiesCanonicalLaneLean
end HautevilleHouse
