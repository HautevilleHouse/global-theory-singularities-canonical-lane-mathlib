import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheorySingularitiesCanonicalLaneLean

structure MonodromyTheoremPackage where
  vanishingCycleModule : Type u
  monodromyOperator : Type v
  quasiUnipotentCondition : Prop
  nilpotentPartDefined : Prop
  vanishingCycleClosed : VanishingCyclesPackage
  milnorFibrationClosed : MilnorFibrationPackage

def MonodromyTheoremClosed (M : MonodromyTheoremPackage) : Prop :=
  M.quasiUnipotentCondition ∧ M.nilpotentPartDefined

end GlobalTheorySingularitiesCanonicalLaneLean
end HautevilleHouse
