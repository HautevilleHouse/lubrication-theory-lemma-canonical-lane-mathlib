import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LubricationTheoryLemmaCanonicalLaneLean

structure StabilityAnalysis (A : AdmissibleClass) where
  perturbationModel : Prop
  linearStabilityPredicate : Prop
  stabilityThreshold : Prop
  perturbationModelClosed : perturbationModel
  linearStabilityPredicateClosed : linearStabilityPredicate
  stabilityThresholdClosed : stabilityThreshold

def StabilityAnalysisClosed {A : AdmissibleClass} (S : StabilityAnalysis A) : Prop :=
  S.perturbationModel ∧ S.linearStabilityPredicate ∧ S.stabilityThreshold

theorem stability_analysis_closed_from_evidence {A : AdmissibleClass} (S : StabilityAnalysis A) : StabilityAnalysisClosed S := by
  exact And.intro S.perturbationModelClosed (And.intro S.linearStabilityPredicateClosed S.stabilityThresholdClosed)

end LubricationTheoryLemmaCanonicalLaneLean
end HautevilleHouse
