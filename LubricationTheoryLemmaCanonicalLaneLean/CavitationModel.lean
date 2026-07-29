import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LubricationTheoryLemmaCanonicalLaneLean

structure CavitationModelPackage where
  cavitationRegion : Type u
  pressureSaturation : Type v
  reynoldsEquationWithCavitation : Prop
  massConservation : Prop
  cavitationThreshold : Prop

structure CavitationModelEvidence (C : CavitationModelPackage) where
  reynoldsEquationWithCavitationClosed : C.reynoldsEquationWithCavitation
  massConservationClosed : C.massConservation
  cavitationThresholdClosed : C.cavitationThreshold

def CavitationModelClosed (C : CavitationModelPackage) : Prop :=
  C.reynoldsEquationWithCavitation ∧ C.massConservation ∧ C.cavitationThreshold

theorem cavitation_model_closed_from_evidence (C : CavitationModelPackage) (E : CavitationModelEvidence C) :
    CavitationModelClosed C := by
  exact And.intro E.reynoldsEquationWithCavitationClosed (And.intro E.massConservationClosed E.cavitationThresholdClosed)

end LubricationTheoryLemmaCanonicalLaneLean
end HautevilleHouse