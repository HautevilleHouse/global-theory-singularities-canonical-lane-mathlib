import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GlobalTheorySingularitiesCanonicalLaneLean

structure SingularitySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SingularityAdmittedObject where
  space : SingularitySpace
  isolatedSingularity : Prop
  resolutionExists : Prop
  modelSpace : Type
  modelTopology : TopologicalSpace modelSpace
  homeomorphicToModel : Prop
  conclusion : homeomorphicToModel

structure SingularityEndgameState where
  object : SingularityAdmittedObject

def SingularityWitnessClosed (O : SingularityAdmittedObject) : Prop :=
  O.homeomorphicToModel

end GlobalTheorySingularitiesCanonicalLaneLean
end HautevilleHouse