import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LubricationTheoryLemmaCanonicalLaneLean

structure PressureDistributionPackage (A : AdmissibleClass) where
  domainGeometry : Prop
  boundaryConditions : Prop
  pressureSolution : Prop
  cavitationRegion : Prop

structure PressureDistributionEvidence {A : AdmissibleClass} (P : PressureDistributionPackage A) where
  domainGeometryClosed : P.domainGeometry
  boundaryConditionsClosed : P.boundaryConditions
  pressureSolutionClosed : P.pressureSolution
  cavitationRegionClosed : P.cavitationRegion

def PressureDistributionClosed {A : AdmissibleClass} (P : PressureDistributionPackage A) : Prop :=
  P.domainGeometry ∧ P.boundaryConditions ∧ P.pressureSolution ∧ P.cavitationRegion

theorem pressure_distribution_closed_from_evidence
    {A : AdmissibleClass} (P : PressureDistributionPackage A) (E : PressureDistributionEvidence P) :
    PressureDistributionClosed P := by
  exact And.intro E.domainGeometryClosed
    (And.intro E.boundaryConditionsClosed
      (And.intro E.pressureSolutionClosed E.cavitationRegionClosed))

end LubricationTheoryLemmaCanonicalLaneLean
end HautevilleHouse