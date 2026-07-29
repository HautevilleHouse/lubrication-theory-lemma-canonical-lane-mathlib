import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LubricationTheoryLemmaCanonicalLaneLean

structure LoadCapacityTheoremPackage where
  loadCapacityComputed : Prop
  integralOfPressure : Prop
  loadCapacityPositive : Prop
  lowerBoundEstablished : Prop

structure LoadCapacityTheoremEvidence (L : LoadCapacityTheoremPackage) where
  loadCapacityComputedClosed : L.loadCapacityComputed
  integralOfPressureClosed : L.integralOfPressure
  loadCapacityPositiveClosed : L.loadCapacityPositive
  lowerBoundEstablishedClosed : L.lowerBoundEstablished

def LoadCapacityTheoremClosed (L : LoadCapacityTheoremPackage) : Prop :=
  L.loadCapacityComputed \land L.integralOfPressure \land L.loadCapacityPositive \land L.lowerBoundEstablished

theorem load_capacity_theorem_closed_from_evidence (L : LoadCapacityTheoremPackage) (E : LoadCapacityTheoremEvidence L) : LoadCapacityTheoremClosed L :=
  And.intro E.loadCapacityComputedClosed (And.intro E.integralOfPressureClosed (And.intro E.loadCapacityPositiveClosed E.lowerBoundEstablishedClosed))

end LubricationTheoryLemmaCanonicalLaneLean
end HautevilleHouse