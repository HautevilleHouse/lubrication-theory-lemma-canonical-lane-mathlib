import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LubricationTheoryLemmaCanonicalLaneLean

structure CavitationBoundaryConditionPackage where
  cavitationRegionDefined : Prop
  pressureBoundaryCondition : Prop
  reynoldsConditionApplied : Prop
  ruptureZoneModeled : Prop

structure CavitationBoundaryConditionEvidence (C : CavitationBoundaryConditionPackage) where
  cavitationRegionDefinedClosed : C.cavitationRegionDefined
  pressureBoundaryConditionClosed : C.pressureBoundaryCondition
  reynoldsConditionAppliedClosed : C.reynoldsConditionApplied
  ruptureZoneModeledClosed : C.ruptureZoneModeled

def CavitationBoundaryConditionClosed (C : CavitationBoundaryConditionPackage) : Prop :=
  C.cavitationRegionDefined \land C.pressureBoundaryCondition \land C.reynoldsConditionApplied \land C.ruptureZoneModeled

theorem cavitation_boundary_condition_closed_from_evidence (C : CavitationBoundaryConditionPackage) (E : CavitationBoundaryConditionEvidence C) : CavitationBoundaryConditionClosed C :=
  And.intro E.cavitationRegionDefinedClosed (And.intro E.pressureBoundaryConditionClosed (And.intro E.reynoldsConditionAppliedClosed E.ruptureZoneModeledClosed))

end LubricationTheoryLemmaCanonicalLaneLean
end HautevilleHouse