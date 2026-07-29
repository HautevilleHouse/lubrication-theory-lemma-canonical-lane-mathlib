import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LubricationTheoryLemmaCanonicalLaneLean

structure SommerfeldBoundaryConditions (A : AdmissibleClass) where
  pressurePeriodicity : Prop
  cavitationRegion : Prop
  ruptureZone : Prop
  pressurePeriodicityClosed : pressurePeriodicity
  cavitationRegionClosed : cavitationRegion
  ruptureZoneClosed : ruptureZone

def SommerfeldBoundaryConditionsClosed {A : AdmissibleClass} (S : SommerfeldBoundaryConditions A) : Prop :=
  S.pressurePeriodicity ∧ S.cavitationRegion ∧ S.ruptureZone

theorem sommerfeld_boundary_conditions_closed_from_evidence {A : AdmissibleClass} (S : SommerfeldBoundaryConditions A) : SommerfeldBoundaryConditionsClosed S := by
  exact And.intro S.pressurePeriodicityClosed (And.intro S.cavitationRegionClosed S.ruptureZoneClosed)

end LubricationTheoryLemmaCanonicalLaneLean
end HautevilleHouse
