import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LubricationTheoryLemmaCanonicalLaneLean

structure LoadCapacityPackage where
  loadCapacityField : Type u
  pressureDistribution : Type v
  bearingSurface : Type w
  loadCapacityComputed : Prop
  equilibriumCondition : Prop
  stabilityCondition : Prop

structure LoadCapacityEvidence (L : LoadCapacityPackage) where
  loadCapacityComputedClosed : L.loadCapacityComputed
  equilibriumConditionClosed : L.equilibriumCondition
  stabilityConditionClosed : L.stabilityCondition

def LoadCapacityClosed (L : LoadCapacityPackage) : Prop :=
  L.loadCapacityComputed ∧ L.equilibriumCondition ∧ L.stabilityCondition

theorem load_capacity_closed_from_evidence (L : LoadCapacityPackage) (E : LoadCapacityEvidence L) :
    LoadCapacityClosed L := by
  exact And.intro E.loadCapacityComputedClosed (And.intro E.equilibriumConditionClosed E.stabilityConditionClosed)

end LubricationTheoryLemmaCanonicalLaneLean
end HautevilleHouse