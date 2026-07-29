import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LubricationTheoryLemmaCanonicalLaneLean

structure SommerfeldBoundaryPackage where
  cavitationModel : Type u
  filmRuptureCondition : Prop
  reformationCondition : Prop
  pressureBoundaryMatched : Prop

structure SommerfeldBoundaryEvidence (S : SommerfeldBoundaryPackage) where
  filmRuptureConditionClosed : S.filmRuptureCondition
  reformationConditionClosed : S.reformationCondition
  pressureBoundaryMatchedClosed : S.pressureBoundaryMatched

def SommerfeldBoundaryClosed (S : SommerfeldBoundaryPackage) : Prop :=
  S.filmRuptureCondition ∧ S.reformationCondition ∧ S.pressureBoundaryMatched

theorem sommerfeld_boundary_closed_from_evidence (S : SommerfeldBoundaryPackage)
    (E : SommerfeldBoundaryEvidence S) : SommerfeldBoundaryClosed S := by
  exact And.intro E.filmRuptureConditionClosed
    (And.intro E.reformationConditionClosed E.pressureBoundaryMatchedClosed)

end LubricationTheoryLemmaCanonicalLaneLean
end HautevilleHouse