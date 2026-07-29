import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LubricationTheoryLemmaCanonicalLaneLean

structure FrictionCoefficient (A : AdmissibleClass) where
  shearStress : Type u
  frictionFormula : Prop
  frictionUpperBound : Prop
  frictionFormulaClosed : frictionFormula
  frictionUpperBoundClosed : frictionUpperBound

def FrictionCoefficientClosed {A : AdmissibleClass} (F : FrictionCoefficient A) : Prop :=
  F.frictionFormula ∧ F.frictionUpperBound

theorem friction_coefficient_closed_from_evidence {A : AdmissibleClass} (F : FrictionCoefficient A) : FrictionCoefficientClosed F := by
  exact And.intro F.frictionFormulaClosed F.frictionUpperBoundClosed

end LubricationTheoryLemmaCanonicalLaneLean
end HautevilleHouse
