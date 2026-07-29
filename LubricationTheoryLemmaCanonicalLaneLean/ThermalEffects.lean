import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LubricationTheoryLemmaCanonicalLaneLean

structure ThermalEffectsPackage (A : AdmissibleClass) where
  energyEquation : Prop
  temperatureField : Prop
  viscosityTemperatureCoupling : Prop

structure ThermalEffectsEvidence {A : AdmissibleClass} (T : ThermalEffectsPackage A) where
  energyEquationClosed : T.energyEquation
  temperatureFieldClosed : T.temperatureField
  viscosityTemperatureCouplingClosed : T.viscosityTemperatureCoupling

def ThermalEffectsClosed {A : AdmissibleClass} (T : ThermalEffectsPackage A) : Prop :=
  T.energyEquation ∧ T.temperatureField ∧ T.viscosityTemperatureCoupling

theorem thermal_effects_closed_from_evidence
    {A : AdmissibleClass} (T : ThermalEffectsPackage A) (E : ThermalEffectsEvidence T) :
    ThermalEffectsClosed T := by
  exact And.intro E.energyEquationClosed
    (And.intro E.temperatureFieldClosed E.viscosityTemperatureCouplingClosed)

end LubricationTheoryLemmaCanonicalLaneLean
end HautevilleHouse