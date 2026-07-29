import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LubricationTheoryLemmaCanonicalLaneLean

structure LubricationApproximations (A : AdmissibleClass) where
  thinFilmApproximation : Prop
  noSlipBoundaryCondition : Prop
  viscosityDominant : Prop
  isothermalAssumption : Prop
  thinFilmApproximationClosed : thinFilmApproximation
  noSlipBoundaryConditionClosed : noSlipBoundaryCondition
  viscosityDominantClosed : viscosityDominant
  isothermalAssumptionClosed : isothermalAssumption

def LubricationApproximationsClosed {A : AdmissibleClass} (L : LubricationApproximations A) : Prop :=
  L.thinFilmApproximation ∧ L.noSlipBoundaryCondition ∧ L.viscosityDominant ∧ L.isothermalAssumption

theorem lubrication_approximations_closed_from_evidence {A : AdmissibleClass} (L : LubricationApproximations A) : LubricationApproximationsClosed L := by
  exact And.intro L.thinFilmApproximationClosed (And.intro L.noSlipBoundaryConditionClosed (And.intro L.viscosityDominantClosed L.isothermalAssumptionClosed))

end LubricationTheoryLemmaCanonicalLaneLean
end HautevilleHouse
