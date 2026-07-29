import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LubricationTheoryLemmaCanonicalLaneLean

structure ThinFilmAsymptoticsPackage (A : AdmissibleClass) where
  smallAspectRatio : Prop
  lubricationApproximation : Prop
  asymptoticExpansion : Prop
  leadingOrderEquation : Prop

structure ThinFilmAsymptoticsEvidence {A : AdmissibleClass} (T : ThinFilmAsymptoticsPackage A) where
  smallAspectRatioClosed : T.smallAspectRatio
  lubricationApproximationClosed : T.lubricationApproximation
  asymptoticExpansionClosed : T.asymptoticExpansion
  leadingOrderEquationClosed : T.leadingOrderEquation

def ThinFilmAsymptoticsClosed {A : AdmissibleClass} (T : ThinFilmAsymptoticsPackage A) : Prop :=
  T.smallAspectRatio ∧ T.lubricationApproximation ∧ T.asymptoticExpansion ∧ T.leadingOrderEquation

theorem thin_film_asymptotics_closed_from_evidence
    {A : AdmissibleClass} (T : ThinFilmAsymptoticsPackage A) (E : ThinFilmAsymptoticsEvidence T) :
    ThinFilmAsymptoticsClosed T := by
  exact And.intro E.smallAspectRatioClosed
    (And.intro E.lubricationApproximationClosed
      (And.intro E.asymptoticExpansionClosed E.leadingOrderEquationClosed))

end LubricationTheoryLemmaCanonicalLaneLean
end HautevilleHouse