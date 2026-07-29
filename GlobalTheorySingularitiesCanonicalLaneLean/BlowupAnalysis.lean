import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheorySingularitiesCanonicalLaneLean

structure BlowupAnalysisPackage where
  exceptionalDivisor : Type
  normalBundle : Type
  blowupMap : Type
  strictTransform : Prop
  embeddedResolution : Prop
  singularLocusResolved : Prop
  composableBlowups : Prop
  resolutionExists : Prop

structure BlowupAnalysisEvidence (B : BlowupAnalysisPackage) where
  strictTransformClosed : B.strictTransform
  embeddedResolutionClosed : B.embeddedResolution
  singularLocusResolvedClosed : B.singularLocusResolved
  composableBlowupsClosed : B.composableBlowups
  resolutionExistsClosed : B.resolutionExists

def BlowupAnalysisClosed (B : BlowupAnalysisPackage) : Prop :=
  B.strictTransform ∧ B.embeddedResolution ∧ B.singularLocusResolved ∧
  B.composableBlowups ∧ B.resolutionExists

theorem blowup_analysis_closed_from_evidence (B : BlowupAnalysisPackage)
    (E : BlowupAnalysisEvidence B) : BlowupAnalysisClosed B := by
  exact And.intro E.strictTransformClosed
    (And.intro E.embeddedResolutionClosed
      (And.intro E.singularLocusResolvedClosed
        (And.intro E.composableBlowupsClosed E.resolutionExistsClosed)))

end GlobalTheorySingularitiesCanonicalLaneLean
end HautevilleHouse