import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LubricationTheoryLemmaCanonicalLaneLean

structure SommerfeldSolutionPackage where
  pressureDistributionSolved : Prop
  infiniteBearingAssumption : Prop
  periodicBoundaryCondition : Prop
  loadCapacityFormula : Prop

structure SommerfeldSolutionEvidence (S : SommerfeldSolutionPackage) where
  pressureDistributionSolvedClosed : S.pressureDistributionSolved
  infiniteBearingAssumptionClosed : S.infiniteBearingAssumption
  periodicBoundaryConditionClosed : S.periodicBoundaryCondition
  loadCapacityFormulaClosed : S.loadCapacityFormula

def SommerfeldSolutionClosed (S : SommerfeldSolutionPackage) : Prop :=
  S.pressureDistributionSolved \land S.infiniteBearingAssumption \land S.periodicBoundaryCondition \land S.loadCapacityFormula

theorem sommerfeld_solution_closed_from_evidence (S : SommerfeldSolutionPackage) (E : SommerfeldSolutionEvidence S) : SommerfeldSolutionClosed S :=
  And.intro E.pressureDistributionSolvedClosed (And.intro E.infiniteBearingAssumptionClosed (And.intro E.periodicBoundaryConditionClosed E.loadCapacityFormulaClosed))

end LubricationTheoryLemmaCanonicalLaneLean
end HautevilleHouse