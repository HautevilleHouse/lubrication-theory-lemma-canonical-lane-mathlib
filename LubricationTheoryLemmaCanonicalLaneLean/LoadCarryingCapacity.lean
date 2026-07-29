import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LubricationTheoryLemmaCanonicalLaneLean

structure LoadCarryingCapacityPackage where
  pressureDistribution : Type u
  loadCapacity : Type v
  capacityInequalityFormulated : Prop
  optimalGeometryDerived : Prop
  asymptoticBoundsDerived : Prop

structure LoadCarryingCapacityEvidence (L : LoadCarryingCapacityPackage) where
  capacityInequalityFormulatedClosed : L.capacityInequalityFormulated
  optimalGeometryDerivedClosed : L.optimalGeometryDerived
  asymptoticBoundsDerivedClosed : L.asymptoticBoundsDerived

def LoadCarryingCapacityClosed (L : LoadCarryingCapacityPackage) : Prop :=
  L.capacityInequalityFormulated ∧ L.optimalGeometryDerived ∧ L.asymptoticBoundsDerived

theorem load_carrying_capacity_closed_from_evidence (L : LoadCarryingCapacityPackage)
    (E : LoadCarryingCapacityEvidence L) : LoadCarryingCapacityClosed L := by
  exact And.intro E.capacityInequalityFormulatedClosed
    (And.intro E.optimalGeometryDerivedClosed E.asymptoticBoundsDerivedClosed)

end LubricationTheoryLemmaCanonicalLaneLean
end HautevilleHouse