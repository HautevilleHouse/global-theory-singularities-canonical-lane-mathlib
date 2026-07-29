import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheorySingularitiesCanonicalLaneLean

structure MilnorFibrationPackage where
  analyticVariety : Type u
  isolatedSingularity : Prop
  MilnorFiberType : Type v
  monodromyDefined : Prop

def MilnorFibrationClosed (M : MilnorFibrationPackage) : Prop :=
  M.isolatedSingularity ∧ M.monodromyDefined

end GlobalTheorySingularitiesCanonicalLaneLean
end HautevilleHouse
